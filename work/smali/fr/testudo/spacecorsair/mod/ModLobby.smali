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

    .line 274
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 276
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    .line 280
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 286
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

    .line 514
    .line 516
    const/4 v0, 0x2

    :try_start_4
    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 517
    const/4 v0, 0x3

    aget-object v0, p3, v0

    const/16 v3, 0x20

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 518
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

    .line 519
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v0, p2, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2a} :catch_a7

    .line 520
    :try_start_2a
    const-string v1, "A player is connecting..."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 521
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

    .line 522
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

    .line 534
    :cond_62
    :goto_62
    return-void

    .line 518
    :cond_63
    const/4 v0, 0x0

    goto :goto_23

    .line 523
    :cond_65
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 524
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 525
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->applySaver()V

    .line 526
    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModLan;->acceptNet(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 527
    const/4 v1, 0x0

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 528
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->close()V

    .line 530
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

    .line 531
    :catch_8b
    move-exception v1

    .line 532
    :goto_8c
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    goto :goto_62

    .line 529
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

    .line 531
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
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
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
    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    if-nez p0, :cond_8

    .line 337
    :cond_7
    return-object v0

    .line 333
    :cond_8
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 334
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModNet;->parse(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v4

    .line 335
    if-eqz v4, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x18

    if-ge v5, v6, :cond_29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method static applySaver()V
    .registers 2

    .prologue
    .line 248
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 249
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

    .line 250
    return-void

    .line 249
    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static autoDev()V
    .registers 3

    .prologue
    .line 165
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

    .line 171
    :cond_17
    :goto_17
    return-void

    .line 166
    :cond_18
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devAutoSent:Z

    .line 167
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->devKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->registerDev(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_17

    .line 168
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
    .registers 9

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

    if-eqz v0, :cond_97

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_97

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
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_48} :catch_9f
    .catchall {:try_start_1 .. :try_end_48} :catchall_ab

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

    if-lt v2, v1, :cond_9a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 107
    :goto_8c
    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->readReply(Ljava/io/InputStream;I)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_8f} :catch_bc
    .catchall {:try_start_4a .. :try_end_8f} :catchall_b4

    move-result-object v1

    .line 111
    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_95
    move-object v0, v1

    .line 109
    :cond_96
    :goto_96
    return-object v0

    .line 90
    :cond_97
    :try_start_97
    const-string v0, ""
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_99} :catch_9f
    .catchall {:try_start_97 .. :try_end_99} :catchall_ab

    goto :goto_37

    .line 106
    :cond_9a
    :try_start_9a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_bc
    .catchall {:try_start_9a .. :try_end_9d} :catchall_b4

    move-result-object v1

    goto :goto_8c

    .line 108
    :catch_9f
    move-exception v0

    .line 109
    :goto_a0
    :try_start_a0
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;-><init>()V
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_b8

    .line 111
    if-eqz v1, :cond_96

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_96

    :catchall_ab
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_ae
    if-eqz v3, :cond_b3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 112
    :cond_b3
    throw v2

    .line 111
    :catchall_b4
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_ae

    :catchall_b8
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_ae

    .line 108
    :catch_bc
    move-exception v1

    move-object v1, v0

    goto :goto_a0
.end method

.method static candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v7, 0x5dc

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 317
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

    .line 318
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

    .line 319
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

    .line 320
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

    .line 321
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 322
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

    .line 324
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

    .line 325
    :cond_d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
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

    .line 327
    :cond_f5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static devBuild()Z
    .registers 1

    .prologue
    .line 158
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

    .line 197
    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 198
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

    .line 200
    :cond_2a
    :goto_2a
    return v0

    .line 199
    :catch_2b
    move-exception v1

    goto :goto_2a
.end method

.method static devKey()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 144
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devKeyRead:Z

    if-eqz v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devKeyCache:Ljava/lang/String;

    .line 155
    :goto_7
    return-object v0

    .line 147
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

    .line 148
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

    .line 149
    if-nez v0, :cond_49

    move-object v0, v1

    .line 153
    :goto_2e
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_39

    move-object v1, v0

    :cond_39
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->devKeyCache:Ljava/lang/String;

    .line 154
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devKeyRead:Z

    .line 155
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->devKeyCache:Ljava/lang/String;

    goto :goto_7

    .line 148
    :catchall_41
    move-exception v0

    :try_start_42
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    .line 150
    :catch_46
    move-exception v0

    move-object v0, v1

    .line 151
    goto :goto_2e

    .line 149
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

    .line 238
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

    .line 381
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v0

    if-nez v0, :cond_8

    .line 395
    :goto_7
    return-void

    .line 382
    :cond_8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onlineBlock()Ljava/lang/String;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_11

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    goto :goto_7

    .line 384
    :cond_11
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 385
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 386
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 387
    if-eqz p0, :cond_46

    move v0, v1

    :goto_20
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    .line 388
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 389
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 390
    const-string v0, "Opening the game..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 391
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->hostNet()V

    .line 392
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLobby$2;

    invoke-direct {v4, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLobby$2;-><init>(J)V

    const-string v2, "lobby-host"

    invoke-direct {v0, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 394
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_7

    .line 387
    :cond_46
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private static hostLoop(J)V
    .registers 26

    .prologue
    .line 405
    const-string v4, ""

    const-string v3, ""

    .line 406
    const/4 v6, 0x0

    .line 407
    const/4 v7, 0x0

    .line 408
    const-string v2, ""

    .line 409
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 410
    const/4 v5, 0x1

    new-array v9, v5, [Z

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput-boolean v8, v9, v5

    .line 411
    const/4 v8, 0x0

    .line 412
    const/4 v5, 0x0

    .line 413
    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x7530

    .line 414
    const-wide/16 v14, 0x1388

    sput-wide v14, Lfr/testudo/spacecorsair/mod/ModLobby;->retryMs:J

    move-wide v14, v10

    move-wide/from16 v16, v12

    move/from16 v18, v5

    move/from16 v19, v8

    .line 416
    :goto_25
    :try_start_25
    invoke-static/range {p0 .. p1}, Lfr/testudo/spacecorsair/mod/ModLobby;->stillHost(J)Z

    move-result v5

    if-eqz v5, :cond_27c

    .line 417
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v8

    .line 418
    if-eqz v6, :cond_35

    iget-boolean v5, v6, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->closed:Z

    if-eqz v5, :cond_4cf

    .line 419
    :cond_35
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;-><init>(I)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_3b} :catch_13f

    .line 420
    :try_start_3b
    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLobby;->wire:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    .line 421
    const/4 v10, 0x0

    .line 422
    if-eqz v8, :cond_1fb

    const-string v2, ""
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_42} :catch_4c6

    :goto_42
    move-object v5, v2

    move-object v12, v10

    move-object v6, v7

    .line 424
    :goto_45
    :try_start_45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4cb

    .line 425
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

    .line 426
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v2, :cond_201

    const-string v2, "1"

    :goto_91
    aput-object v2, v11, v13

    const/16 v2, 0xa

    const-string v13, "clean"

    aput-object v13, v11, v2

    const/16 v13, 0xb

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->publicOk()Z

    move-result v2

    if-eqz v2, :cond_205

    const-string v2, "1"

    :goto_a3
    aput-object v2, v11, v13

    const/16 v2, 0xc

    const-string v13, "pvp"

    aput-object v13, v11, v2

    const/16 v13, 0xd

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_209

    const-string v2, "1"

    :goto_b3
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

    .line 427
    if-eqz v8, :cond_20d

    const-string v2, "1"

    :goto_e7
    aput-object v2, v11, v13

    .line 425
    invoke-static {v7, v10, v11}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v7

    if-eqz v7, :cond_100

    const-string v7, "code"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x4

    if-eq v7, v10, :cond_226

    .line 429
    :cond_100
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 430
    const/4 v7, 0x0

    sput-boolean v7, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 431
    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-eqz v7, :cond_123

    iget v7, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_123

    const-string v7, "busy"

    iget-object v8, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_123

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v7, 0x1ad

    if-ne v2, v7, :cond_27c

    .line 432
    :cond_123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v20, Lfr/testudo/spacecorsair/mod/ModLobby;->retryMs:J

    add-long v10, v10, v20

    :goto_12b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v2, v20, v10

    if-gez v2, :cond_211

    sget-wide v20, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v2, p0, v20

    if-nez v2, :cond_211

    const-wide/16 v20, 0x1f4

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13e
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_13e} :catch_13f

    goto :goto_12b

    .line 496
    :catch_13f
    move-exception v5

    move-object v2, v3

    .line 497
    :goto_141
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

    .line 498
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->DEBUG:Z

    if-eqz v3, :cond_160

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 500
    :cond_160
    :goto_160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18f

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

    .line 501
    :cond_18f
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->DEBUG:Z

    if-eqz v2, :cond_1d1

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

    .line 502
    :cond_1d1
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_1f1

    .line 503
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 504
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 505
    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 506
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_1f1

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f1

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_1f1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 509
    :cond_1f1
    if-eqz v6, :cond_1fa

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-nez v2, :cond_1fa

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    .line 510
    :cond_1fa
    return-void

    .line 422
    :cond_1fb
    :try_start_1fb
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;
    :try_end_1fe
    .catch Ljava/lang/Throwable; {:try_start_1fb .. :try_end_1fe} :catch_4c6

    move-result-object v2

    goto/16 :goto_42

    .line 426
    :cond_201
    :try_start_201
    const-string v2, "0"

    goto/16 :goto_91

    :cond_205
    const-string v2, "0"

    goto/16 :goto_a3

    :cond_209
    const-string v2, "0"

    goto/16 :goto_b3

    .line 427
    :cond_20d
    const-string v2, "0"

    goto/16 :goto_e7

    .line 433
    :cond_211
    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModLobby;->retryMs:J

    const-wide/16 v20, 0x2

    mul-long v10, v10, v20

    const-wide/32 v20, 0x493e0

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLobby;->retryMs:J

    move-object v2, v5

    move-object v7, v12

    .line 434
    goto/16 :goto_25

    .line 438
    :cond_226
    const-wide/16 v10, 0x1388

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLobby;->retryMs:J

    .line 439
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->setSelfDev(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)V

    .line 440
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onlineBlock()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_27f

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

    :cond_27c
    move-object v2, v3

    .line 499
    goto/16 :goto_160

    .line 441
    :cond_27f
    const-string v7, "code"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    invoke-static {v7, v10}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 442
    const-string v7, "token"

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x40

    invoke-static {v2, v7}, Lfr/testudo/spacecorsair/mod/ModLan;->clean(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_295
    .catch Ljava/lang/Throwable; {:try_start_201 .. :try_end_295} :catch_13f

    move-result-object v2

    .line 443
    :try_start_296
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 444
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    .line 445
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLobby;->sampleCode:Ljava/lang/String;

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lfr/testudo/spacecorsair/mod/ModLobby;->openedAt:J

    .line 447
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 448
    const-string v3, "Waiting for a player to join..."

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 449
    const-string v7, "lobby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hosting "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->pub:Z

    if-eqz v3, :cond_3cb

    const-string v3, "public"

    :goto_2c0
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2cb
    .catch Ljava/lang/Throwable; {:try_start_296 .. :try_end_2cb} :catch_4c2

    move-object v10, v2

    move-object v11, v4

    .line 451
    :goto_2cd
    if-eqz v12, :cond_3d2

    .line 452
    :try_start_2cf
    iget-boolean v2, v12, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->dead:Z

    if-eqz v2, :cond_3cf

    const/4 v12, 0x0

    move-object v2, v12

    .line 455
    :goto_2d5
    if-eqz v8, :cond_4d3

    if-nez v2, :cond_4d3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v3, v12, v16

    if-ltz v3, :cond_4d3

    .line 456
    invoke-static {v6, v11, v10}, Lfr/testudo/spacecorsair/mod/ModLobby;->relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    move-result-object v2

    .line 457
    if-nez v2, :cond_3d5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long v16, v12, v14

    const-wide/16 v12, 0x2

    mul-long/2addr v12, v14

    const-wide/32 v14, 0x927c0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    move-wide v12, v14

    move-object/from16 v22, v2

    .line 460
    :goto_2fa
    sget-boolean v20, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    .line 461
    if-eqz v19, :cond_309

    if-nez v20, :cond_309

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->openedAt:J

    .line 463
    :cond_309
    if-nez v20, :cond_4d8

    const/4 v2, 0x0

    aget-boolean v2, v9, v2

    if-nez v2, :cond_4d8

    add-int/lit8 v18, v18, 0x1

    rem-int/lit8 v2, v18, 0x2

    if-nez v2, :cond_4d8

    if-nez v8, :cond_4d8

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v5

    .line 464
    :goto_31e
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

    if-eqz v20, :cond_3dc

    const-string v2, "1"

    :goto_34f
    aput-object v2, v5, v7

    const/4 v2, 0x4

    const-string v7, "pvp"

    aput-object v7, v5, v2

    const/4 v7, 0x5

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->pvpRoom:Z

    if-eqz v2, :cond_3e0

    const-string v2, "1"

    :goto_35d
    aput-object v2, v5, v7

    const/4 v2, 0x6

    const-string v7, "sector"

    aput-object v7, v5, v2

    const/4 v2, 0x7

    .line 465
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

    aput-object v21, v5, v2

    const/16 v2, 0xc

    const-string v7, "hide"

    aput-object v7, v5, v2

    const/16 v7, 0xd

    if-eqz v8, :cond_3e4

    const-string v2, "1"

    :goto_38f
    aput-object v2, v5, v7

    const/16 v2, 0xe

    const-string v7, "relay"

    aput-object v7, v5, v2

    const/16 v7, 0xf

    .line 466
    if-eqz v22, :cond_3e7

    move-object/from16 v0, v22

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_3e7

    move-object/from16 v0, v22

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->show(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    :goto_3a9
    aput-object v2, v5, v7

    .line 464
    invoke-static {v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModLobby;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v2

    .line 467
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v4, 0x194

    if-eq v3, v4, :cond_3bb

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    const/16 v4, 0x193

    if-ne v3, v4, :cond_3ea

    :cond_3bb
    const-string v4, ""
    :try_end_3bd
    .catch Ljava/lang/Throwable; {:try_start_2cf .. :try_end_3bd} :catch_4b7

    :try_start_3bd
    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;
    :try_end_3c1
    .catch Ljava/lang/Throwable; {:try_start_3bd .. :try_end_3c1} :catch_4bd

    move-wide v14, v12

    move/from16 v19, v20

    move-object/from16 v2, v21

    move-object/from16 v7, v22

    move-object v3, v10

    goto/16 :goto_25

    .line 449
    :cond_3cb
    :try_start_3cb
    const-string v3, "private"
    :try_end_3cd
    .catch Ljava/lang/Throwable; {:try_start_3cb .. :try_end_3cd} :catch_4c2

    goto/16 :goto_2c0

    .line 453
    :cond_3cf
    :try_start_3cf
    invoke-virtual {v12}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->keep()V

    :cond_3d2
    move-object v2, v12

    goto/16 :goto_2d5

    .line 458
    :cond_3d5
    const-wide/16 v14, 0x7530

    move-wide v12, v14

    move-object/from16 v22, v2

    goto/16 :goto_2fa

    .line 464
    :cond_3dc
    const-string v2, "0"

    goto/16 :goto_34f

    :cond_3e0
    const-string v2, "0"

    goto/16 :goto_35d

    .line 465
    :cond_3e4
    const-string v2, "0"

    goto :goto_38f

    .line 466
    :cond_3e7
    const-string v2, ""

    goto :goto_3a9

    .line 468
    :cond_3ea
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v3

    if-eqz v3, :cond_476

    if-nez v20, :cond_476

    const/4 v3, 0x0

    aget-boolean v3, v9, v3

    if-nez v3, :cond_476

    .line 469
    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3fd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_476

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 470
    array-length v3, v7

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3fd

    const-string v3, "join"

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3fd

    .line 471
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

    .line 472
    const/4 v4, 0x6

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_455

    const/4 v4, 0x7

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3fd

    .line 473
    :cond_455
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3fd

    .line 474
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 478
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModLobby$3;

    move-wide/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModLobby$3;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Wire;[Ljava/lang/String;Z[Z)V

    const-string v4, "lobby-accept"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 483
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 484
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 488
    :cond_476
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->reportRelay()V

    .line 490
    if-eqz v20, :cond_49f

    const-wide/16 v2, 0x7530

    .line 491
    :goto_47d
    const-wide/16 v4, 0x0

    :goto_47f
    cmp-long v7, v4, v2

    if-gez v7, :cond_494

    sget-wide v14, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v7, p0, v14

    if-nez v7, :cond_494

    .line 492
    const-wide/16 v14, 0xfa

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 493
    sget-boolean v7, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    move/from16 v0, v20

    if-eq v0, v7, :cond_4b3

    :cond_494
    move-wide v14, v12

    move/from16 v19, v20

    move-object/from16 v2, v21

    move-object/from16 v7, v22

    move-object v3, v10

    move-object v4, v11

    .line 495
    goto/16 :goto_25

    .line 490
    :cond_49f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLobby;->openedAt:J
    :try_end_4a5
    .catch Ljava/lang/Throwable; {:try_start_3cf .. :try_end_4a5} :catch_4b7

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4b0

    const-wide/16 v2, 0x1f40

    goto :goto_47d

    :cond_4b0
    const-wide/16 v2, 0x4e20

    goto :goto_47d

    .line 491
    :cond_4b3
    const-wide/16 v14, 0xfa

    add-long/2addr v4, v14

    goto :goto_47f

    .line 496
    :catch_4b7
    move-exception v3

    move-object v5, v3

    move-object v2, v10

    move-object v4, v11

    goto/16 :goto_141

    :catch_4bd
    move-exception v3

    move-object v5, v3

    move-object v2, v10

    goto/16 :goto_141

    :catch_4c2
    move-exception v3

    move-object v5, v3

    goto/16 :goto_141

    :catch_4c6
    move-exception v5

    move-object v6, v7

    move-object v2, v3

    goto/16 :goto_141

    :cond_4cb
    move-object v10, v3

    move-object v11, v4

    goto/16 :goto_2cd

    :cond_4cf
    move-object v5, v2

    move-object v12, v7

    goto/16 :goto_45

    :cond_4d3
    move-wide v12, v14

    move-object/from16 v22, v2

    goto/16 :goto_2fa

    :cond_4d8
    move-object/from16 v21, v5

    goto/16 :goto_31e
.end method

.method static join(Ljava/lang/String;)Z
    .registers 16

    .prologue
    .line 539
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->available()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 619
    :cond_7
    :goto_7
    return v0

    .line 540
    :cond_8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->onlineBlock()Ljava/lang/String;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_12

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_7

    .line 542
    :cond_12
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->leave()V

    .line 543
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v2, 0x1

    add-long v12, v0, v2

    sput-wide v12, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 544
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 545
    if-nez p0, :cond_46

    const-string v0, ""

    move-object v8, v0

    .line 546
    :goto_25
    const/4 v2, 0x0

    .line 547
    const/4 v4, 0x0

    .line 549
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

    .line 621
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v2, :cond_7

    if-eqz v4, :cond_42

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_42
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto :goto_7

    .line 545
    :cond_46
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_25

    .line 550
    :cond_52
    :try_start_52
    const-string v0, "Connecting..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 551
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->hideIp()Z

    move-result v3

    .line 552
    new-instance v11, Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;-><init>(I)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_64} :catch_3cd
    .catchall {:try_start_52 .. :try_end_64} :catchall_3e8

    .line 553
    if-eqz v3, :cond_129

    :try_start_66
    const-string v0, ""

    move-object v1, v0

    .line 554
    :goto_69
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v14

    .line 555
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

    .line 556
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

    .line 557
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

    .line 558
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

    .line 621
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v11, :cond_7

    if-eqz v4, :cond_124

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_124
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 553
    :cond_129
    :try_start_129
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLobby;->candidates(Lfr/testudo/spacecorsair/mod/ModNet$Wire;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_69

    .line 556
    :cond_130
    const-string v0, "0"

    goto :goto_b6

    :cond_133
    const-string v0, "0"

    goto :goto_ce

    .line 559
    :cond_136
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLobby;->setSelfDev(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)V

    .line 560
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

    .line 621
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v11, :cond_7

    if-eqz v4, :cond_151

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_151
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 561
    :cond_156
    :try_start_156
    const-string v0, "1"

    const-string v5, "hdev"

    invoke-virtual {v1, v5}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerDev:Z

    .line 562
    if-eqz v3, :cond_42f

    .line 563
    invoke-static {v11, v8, v2}, Lfr/testudo/spacecorsair/mod/ModLobby;->withRelay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 564
    if-nez v2, :cond_190

    .line 565
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    if-eqz v0, :cond_189

    const-string v0, "Relay full this month; try Local or another network."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_176
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_178
    .catch Ljava/lang/Throwable; {:try_start_156 .. :try_end_178} :catch_418
    .catchall {:try_start_156 .. :try_end_178} :catchall_3fa

    .line 567
    const/4 v0, 0x0

    .line 621
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v11, :cond_7

    if-eqz v4, :cond_184

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_184
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 566
    :cond_189
    :try_start_189
    const-string v0, "\"Hide my IP\" needs the relay, and the relay is not available right now."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_176

    .line 569
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

    .line 570
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v5

    if-eqz v5, :cond_42f

    move-object v9, v2

    .line 572
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

    .line 573
    const-wide/16 v6, 0xbb8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 574
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

    .line 575
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v2

    if-eqz v2, :cond_207

    .line 572
    :goto_203
    add-int/lit8 v1, v1, 0x1

    move-object v10, v0

    goto :goto_1b8

    .line 575
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

    .line 621
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v11, :cond_7

    if-eqz v4, :cond_21d

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_21d
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 577
    :cond_222
    :try_start_222
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J
    :try_end_224
    .catch Ljava/lang/Throwable; {:try_start_222 .. :try_end_224} :catch_418
    .catchall {:try_start_222 .. :try_end_224} :catchall_3fa

    cmp-long v0, v12, v0

    if-eqz v0, :cond_239

    const/4 v0, 0x0

    .line 621
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v11, :cond_7

    if-eqz v4, :cond_234

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_234
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 578
    :cond_239
    :try_start_239
    const-string v0, "Reaching the host..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 579
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v0, v11, v14}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_246
    .catch Ljava/lang/Throwable; {:try_start_239 .. :try_end_246} :catch_418
    .catchall {:try_start_239 .. :try_end_246} :catchall_3fa

    .line 580
    :try_start_246
    invoke-static {v12, v13, v8, v9, v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->repeatJoin(JLjava/lang/String;[Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    .line 582
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

    .line 583
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, v12, v4

    if-eqz v1, :cond_286

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V
    :try_end_271
    .catch Ljava/lang/Throwable; {:try_start_246 .. :try_end_271} :catch_41c
    .catchall {:try_start_246 .. :try_end_271} :catchall_3fd

    const/4 v1, 0x0

    .line 621
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v11, :cond_280

    if-eqz v0, :cond_27d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v2, v0, :cond_280

    :cond_27d
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    :cond_280
    move v0, v1

    .line 583
    goto/16 :goto_7

    .line 582
    :cond_283
    const-wide/16 v6, 0x6d60

    goto :goto_264

    .line 584
    :cond_286
    if-nez v2, :cond_429

    if-nez v3, :cond_429

    .line 585
    :try_start_28a
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    .line 586
    const-string v1, "lobby"

    const-string v3, "direct path failed: asking for the relay"

    invoke-static {v1, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {v11, v8, v9}, Lfr/testudo/spacecorsair/mod/ModLobby;->withRelay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 588
    if-eqz v3, :cond_429

    .line 590
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

    .line 591
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v2

    if-eqz v2, :cond_2c0

    move-object v10, v1

    .line 592
    :cond_2c0
    new-instance v9, Lfr/testudo/spacecorsair/mod/ModNet$Link;

    invoke-direct {v9, v11, v14}, Lfr/testudo/spacecorsair/mod/ModNet$Link;-><init>(Lfr/testudo/spacecorsair/mod/ModNet$Wire;I)V
    :try_end_2c5
    .catch Ljava/lang/Throwable; {:try_start_28a .. :try_end_2c5} :catch_41c
    .catchall {:try_start_28a .. :try_end_2c5} :catchall_3fd

    .line 593
    :try_start_2c5
    invoke-static {v12, v13, v8, v3, v9}, Lfr/testudo/spacecorsair/mod/ModLobby;->repeatJoin(JLjava/lang/String;[Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModNet$Link;)V

    .line 594
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

    .line 595
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v1, v12, v2

    if-eqz v1, :cond_300

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V
    :try_end_2ef
    .catch Ljava/lang/Throwable; {:try_start_2c5 .. :try_end_2ef} :catch_420
    .catchall {:try_start_2c5 .. :try_end_2ef} :catchall_401

    const/4 v0, 0x0

    .line 621
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
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

    .line 598
    :goto_302
    if-nez v2, :cond_358

    .line 599
    :try_start_304
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Link;->abandon()V

    .line 600
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

    .line 601
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    if-eqz v0, :cond_351

    const-string v0, "Relay full this month; try Local or another network."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_33e
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_340
    .catch Ljava/lang/Throwable; {:try_start_304 .. :try_end_340} :catch_424
    .catchall {:try_start_304 .. :try_end_340} :catchall_405

    .line 603
    const/4 v0, 0x0

    .line 621
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v11, :cond_7

    if-eqz v1, :cond_34c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v2, v1, :cond_7

    :cond_34c
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 602
    :cond_351
    :try_start_351
    const-string v0, "Could not reach the host. Their network or yours blocks direct play and the relay did not help."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33e

    .line 605
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

    .line 606
    :cond_36a
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 607
    sput-object v8, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 608
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 609
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->applySaver()V

    .line 610
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

    .line 611
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLan;->joinNet(Ljava/net/Socket;)Z

    move-result v0

    .line 612
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

    .line 621
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v2, :cond_7

    if-eqz v1, :cond_3af

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eqz v1, :cond_7

    :cond_3af
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 613
    :cond_3b4
    const/4 v2, 0x0

    .line 614
    :try_start_3b5
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    .line 615
    invoke-static {v12, v13, v8}, Lfr/testudo/spacecorsair/mod/ModLobby;->startGuestWatch(JLjava/lang/String;)V
    :try_end_3bc
    .catch Ljava/lang/Throwable; {:try_start_3b5 .. :try_end_3bc} :catch_427
    .catchall {:try_start_3b5 .. :try_end_3bc} :catchall_40e

    .line 616
    const/4 v0, 0x1

    .line 621
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v2, :cond_7

    if-eqz v1, :cond_3c8

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v3, v1, :cond_7

    :cond_3c8
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 617
    :catch_3cd
    move-exception v0

    move-object v1, v4

    .line 618
    :goto_3cf
    :try_start_3cf
    const-string v0, "The lobby service did not answer. Check your internet connection."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;
    :try_end_3d7
    .catchall {:try_start_3cf .. :try_end_3d7} :catchall_413

    .line 619
    const/4 v0, 0x0

    .line 621
    const/4 v3, 0x0

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v2, :cond_7

    if-eqz v1, :cond_3e3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v3, v1, :cond_7

    :cond_3e3
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    goto/16 :goto_7

    .line 621
    :catchall_3e8
    move-exception v0

    move-object v3, v0

    move-object v11, v2

    :goto_3eb
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 622
    if-eqz v11, :cond_3f9

    if-eqz v4, :cond_3f6

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v0, v4, :cond_3f9

    :cond_3f6
    invoke-virtual {v11}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->close()V

    .line 623
    :cond_3f9
    throw v3

    .line 621
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

    .line 617
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

.method static joined()Z
    .registers 1

    .prologue
    .line 184
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static kicked()V
    .registers 5

    .prologue
    .line 738
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    .line 739
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14

    .line 741
    :cond_13
    :goto_13
    return-void

    .line 740
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

    .line 757
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 758
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    .line 759
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModLobby;->busy:Z

    .line 760
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 761
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 762
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 763
    return-void
.end method

.method private static level()Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
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
    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    return-object v0
.end method

.method static linkLine()Ljava/lang/String;
    .registers 6

    .prologue
    .line 300
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 301
    if-eqz v1, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->connected:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-nez v0, :cond_f

    :cond_c
    const-string v0, ""

    .line 303
    :goto_e
    return-object v0

    .line 302
    :cond_f
    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->sentBytes:J

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->gotBytes:J

    add-long/2addr v2, v4

    .line 303
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

    .line 304
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

    .line 305
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

    .line 303
    :cond_b7
    const-string v0, "Direct"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_29

    .line 304
    :cond_bf
    const-string v0, ""

    goto :goto_8c

    .line 305
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

    .line 724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 725
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

    .line 726
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    move-object v0, v2

    .line 733
    :goto_2b
    return-object v0

    .line 727
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

    .line 728
    array-length v1, v0

    if-lt v1, v10, :cond_32

    aget-object v1, v0, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v9, :cond_32

    .line 729
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

    .line 730
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

    .line 731
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

    .line 729
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    :cond_b6
    aget-object v1, v0, v8

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLanUi;->safeCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 730
    :cond_bd
    const-string v1, "0"

    goto :goto_79

    :cond_c0
    const-string v1, "1"

    goto :goto_9e

    .line 731
    :cond_c3
    const-string v0, "0"

    goto :goto_af

    :cond_c6
    move-object v0, v2

    .line 733
    goto/16 :goto_2b
.end method

.method static mb(J)Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/16 v6, 0xa

    .line 309
    mul-long v0, p0, v6

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    .line 310
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

    .line 256
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    move v4, v6

    move v5, v6

    .line 257
    :cond_8
    :goto_8
    if-eqz v7, :cond_70

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 258
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 259
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v1

    if-nez v1, :cond_8

    .line 261
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    move v3, v6

    .line 262
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

    .line 263
    :cond_42
    if-eqz v3, :cond_8

    .line 264
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    .line 265
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

    .line 266
    goto :goto_8

    :cond_6d
    move v0, v2

    move v1, v5

    .line 265
    goto :goto_6a

    .line 267
    :cond_70
    if-eqz v4, :cond_75

    if-nez v5, :cond_75

    .line 269
    :goto_74
    return v2

    :cond_75
    move v2, v6

    .line 267
    goto :goto_74

    .line 268
    :catch_77
    move-exception v0

    move v2, v6

    .line 269
    goto :goto_74

    :cond_7a
    move v1, v3

    goto :goto_40
.end method

.method static onlineBlock()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->autoDev()V

    .line 207
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->testProfileBlock()Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_a

    .line 212
    :goto_9
    return-object v0

    .line 209
    :cond_a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->switchLocked()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Test switches are in use. Internet games are off until the game restarts; local games still work."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 210
    :cond_17
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->selfDev()Z

    move-result v0

    .line 211
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->devGear()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-nez v0, :cond_2a

    const-string v0, "DEV ships and DEV gear cannot be used in internet games."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 212
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
    .line 296
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 235
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    const-string v1, "corsair_net"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static readReply(Ljava/io/InputStream;I)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x10000

    .line 116
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    if-eqz p0, :cond_35

    .line 119
    const/16 v1, 0x1000

    :try_start_b
    new-array v1, v1, [B

    .line 121
    :goto_d
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_30

    .line 122
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModSave;->strictInputs:Z

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int v3, v4, v3

    if-le v2, v3, :cond_2a

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;-><init>()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_24} :catch_45

    .line 126
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 128
    :cond_29
    :goto_29
    return-object v0

    .line 123
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_45

    move-result v3

    if-lt v3, v4, :cond_40

    .line 126
    :cond_30
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 128
    :cond_35
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby;->parse(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModLobby$Reply;

    move-result-object v0

    goto :goto_29

    .line 124
    :cond_40
    const/4 v3, 0x0

    :try_start_41
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_d

    .line 118
    :catch_45
    move-exception v0

    if-eqz p0, :cond_4b

    :try_start_48
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_4c

    :cond_4b
    :goto_4b
    throw v0

    :catch_4c
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4b
.end method

.method static refusal(Lfr/testudo/spacecorsair/mod/ModLobby$Reply;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 707
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    .line 708
    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->status:I

    if-nez v1, :cond_d

    const-string v0, "The lobby service did not answer. Check your internet connection."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    :goto_c
    return-object v0

    .line 709
    :cond_d
    const-string v1, "gone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, "No game with that code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 710
    :cond_1c
    const-string v1, "full"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v0, "That game is full."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 711
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

    .line 712
    :cond_81
    const-string v1, "banned"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    const-string v0, "You were removed by several hosts. Public games are locked for 24 hours."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 713
    :cond_91
    const-string v1, "kicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v0, "The host removed you from this game."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 714
    :cond_a1
    const-string v1, "save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    const-string v0, "Your save was changed outside the game. Public games are locked for 24 hours; private codes and local games still work."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 715
    :cond_b1
    const-string v1, "closed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const-string v0, "Public games open in a later version. Private games with a code work now."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 716
    :cond_c1
    const-string v1, "slow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v0, "Too many tries. Wait a few minutes."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 718
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

    .line 719
    :cond_f5
    const-string v0, "The lobby service refused the request."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c
.end method

.method static registerDev(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 217
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$1;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModLobby$1;-><init>(Ljava/lang/String;)V

    const-string v2, "lobby-dev"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 231
    return-void
.end method

.method static rejoin()V
    .registers 5

    .prologue
    .line 673
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    .line 674
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a

    .line 686
    :goto_9
    return-void

    .line 675
    :cond_a
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    .line 676
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lfr/testudo/spacecorsair/mod/ModLobby$6;

    invoke-direct {v4, v2, v3, v0}, Lfr/testudo/spacecorsair/mod/ModLobby$6;-><init>(JLjava/lang/String;)V

    const-string v0, "lobby-rejoin"

    invoke-direct {v1, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 684
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 685
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

    .line 343
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

    .line 344
    const-string v1, "full"

    iget-object v3, v4, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->first:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModLobby;->relayFull:Z

    .line 360
    :cond_38
    :goto_38
    return-object v0

    .line 345
    :cond_39
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->ok()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 346
    const-string v1, "host"

    invoke-virtual {v4, v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 347
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

    .line 348
    :cond_6b
    const-string v1, "port"

    invoke-virtual {v4, v1}, Lfr/testudo/spacecorsair/mod/ModLobby$Reply;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 349
    const-string v1, ".metered.ca"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-lt v5, v7, :cond_38

    const v1, 0xffff

    if-gt v5, v1, :cond_38

    .line 351
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

    .line 352
    :goto_93
    if-eqz v3, :cond_38

    .line 353
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

    .line 354
    :goto_ab
    if-ge v2, v9, :cond_38

    .line 355
    :try_start_ad
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->allocate()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b6
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_bf

    move-object v0, v1

    goto :goto_38

    .line 351
    :cond_b2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8a

    .line 355
    :catch_b6
    move-exception v3

    const-wide/16 v4, 0x5dc

    :try_start_b9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_bc} :catch_bf

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 357
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
    .line 638
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$4;

    move-wide v2, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lfr/testudo/spacecorsair/mod/ModLobby$4;-><init>(JLfr/testudo/spacecorsair/mod/ModNet$Link;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "lobby-rejoin"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 650
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 651
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 652
    return-void
.end method

.method static report(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 745
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->hosting:Z

    if-eqz v0, :cond_16

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    .line 746
    :goto_6
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModLobby$8;

    invoke-direct {v2, v0, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby$8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string v0, "lobby-report"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 752
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 753
    return-void

    .line 745
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->joinedCode:Ljava/lang/String;

    goto :goto_6
.end method

.method private static reportRelay()V
    .registers 8

    .prologue
    .line 690
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->link:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    .line 691
    if-nez v0, :cond_5

    .line 704
    :cond_4
    :goto_4
    return-void

    .line 692
    :cond_5
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModNet$Link;->w:Lfr/testudo/spacecorsair/mod/ModNet$Wire;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->turn:Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 694
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

    .line 695
    :cond_36
    if-eqz v1, :cond_42

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->budgetLink:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    if-eq v0, v2, :cond_42

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->budgetLink:Lfr/testudo/spacecorsair/mod/ModNet$Link;

    iget-wide v2, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->bytes:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->budgetBase:J

    .line 696
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

    .line 698
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

    .line 699
    const-string v0, "This session used up its share of the free relay. Direct connections and local games still work."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLan;->stop()V

    .line 701
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->status:Ljava/lang/String;

    .line 702
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->status:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method static saverPref()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 242
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
    .line 371
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

    .line 136
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
    .line 240
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
    .line 244
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
    .line 174
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

    .line 175
    :cond_31
    :goto_31
    return-void

    .line 174
    :catch_32
    move-exception v0

    goto :goto_31
.end method

.method private static startGuestWatch(JLjava/lang/String;)V
    .registers 7

    .prologue
    .line 656
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModLobby$5;

    invoke-direct {v1, p0, p1}, Lfr/testudo/spacecorsair/mod/ModLobby$5;-><init>(J)V

    const-string v2, "lobby-guest"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 667
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 668
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 669
    return-void
.end method

.method private static stillHost(J)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 398
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLobby;->gen:J

    cmp-long v2, p0, v2

    if-eqz v2, :cond_9

    .line 401
    :goto_8
    return v1

    .line 399
    :cond_9
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModLan;->internet:Z

    if-eqz v2, :cond_13

    sget v2, Lfr/testudo/spacecorsair/mod/ModLan;->role:I

    if-ne v2, v0, :cond_13

    move v1, v0

    goto :goto_8

    .line 400
    :cond_13
    const-wide/16 v2, 0x190

    :try_start_15
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_2a

    .line 401
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

    .line 400
    :catch_2a
    move-exception v0

    goto :goto_8
.end method

.method static switchLocked()Z
    .registers 1

    .prologue
    .line 186
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->switchUsed:Z

    return v0
.end method

.method static switchSeen()V
    .registers 1

    .prologue
    .line 181
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModLobby;->switchUsed:Z

    return-void
.end method

.method static testProfileBlock()Ljava/lang/String;
    .registers 1

    .prologue
    .line 190
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSave;->strictInputs:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->profileUncertain:Z

    if-eqz v0, :cond_f

    const-string v0, "Could not switch profiles."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_e
    return-object v0

    :cond_f
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_1a

    const-string v0, "Multiplayer is off in the test profile. Log out of test mode to play with others."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static withLobby([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 289
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->code:Ljava/lang/String;

    move-object v1, v0

    :goto_b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLobby;->token:Ljava/lang/String;

    .line 290
    if-eqz p0, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    :cond_1b
    const/4 v0, 0x0

    .line 293
    :goto_1c
    return-object v0

    .line 289
    :cond_1d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLobby;->sampleCode:Ljava/lang/String;

    move-object v1, v0

    goto :goto_b

    .line 291
    :cond_21
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 292
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

    .line 628
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModLobby;->relay(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModNet$Turn;

    move-result-object v1

    .line 629
    if-eqz v1, :cond_d

    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModNet$Turn;->relayed:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    .line 633
    :goto_e
    return-object v0

    .line 630
    :cond_f
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 631
    array-length v2, p2

    invoke-static {p2, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
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
