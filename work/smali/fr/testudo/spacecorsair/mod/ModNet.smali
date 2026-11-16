.class final Lfr/testudo/spacecorsair/mod/ModNet;
.super Ljava/lang/Object;
.source "ModNet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModNet$Wire;,
        Lfr/testudo/spacecorsair/mod/ModNet$Link;,
        Lfr/testudo/spacecorsair/mod/ModNet$Seg;,
        Lfr/testudo/spacecorsair/mod/ModNet$Turn;,
        Lfr/testudo/spacecorsair/mod/ModNet$PeerHandler;
    }
.end annotation


# static fields
.field static final DEAD_MS:I = 0x2710

.field static final FRAG:I = 0x47e

.field static final HDR:I = 0x6

.field static final K_ACK:I = 0x4

.field static final K_DATA:I = 0x3

.field static final K_FIN:I = 0x8

.field static final K_LATEST:I = 0x5

.field static final K_PING:I = 0x6

.field static final K_PONG:I = 0x7

.field static final K_PUNCH:I = 0x1

.field static final K_PUNCH_ACK:I = 0x2

.field static final MAGIC:I = 0xc5

.field static final MAX_LATEST:I = 0x40000

.field static final PING_MS:I = 0x3e8

.field static final SEG:I = 0x44c

.field private static final txRnd:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 196
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModNet;->txRnd:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200([B)[B
    .registers 2

    .prologue
    .line 37
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModNet;->txOf([B)[B

    move-result-object v0

    return-object v0
.end method

.method static addrOf([B[BZ)Ljava/net/InetSocketAddress;
    .registers 11

    .prologue
    const/4 v0, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 254
    if-eqz p0, :cond_c

    :try_start_7
    array-length v3, p0

    const/16 v4, 0x8

    if-ge v3, v4, :cond_e

    :cond_c
    move-object v0, v1

    .line 267
    :goto_d
    return-object v0

    .line 255
    :cond_e
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v5, :cond_1f

    move v3, v0

    .line 256
    :goto_16
    if-eqz v3, :cond_1d

    array-length v0, p0

    add-int/lit8 v4, v3, 0x4

    if-ge v0, v4, :cond_27

    :cond_1d
    move-object v0, v1

    goto :goto_d

    .line 255
    :cond_1f
    if-ne v3, v6, :cond_25

    const/16 v0, 0x10

    move v3, v0

    goto :goto_16

    :cond_25
    move v3, v2

    goto :goto_16

    .line 257
    :cond_27
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 258
    new-array v4, v3, [B

    .line 259
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {p0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    if-eqz p2, :cond_50

    .line 261
    xor-int/lit16 v0, v0, 0x2112

    .line 262
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModNet;->mask([B)[B

    move-result-object v5

    .line 263
    :goto_43
    if-ge v2, v3, :cond_50

    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_50
    move v2, v0

    .line 265
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_5a} :catch_5b

    goto :goto_d

    .line 266
    :catch_5b
    move-exception v0

    move-object v0, v1

    .line 267
    goto :goto_d
.end method

.method static attr(I[B)[B
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 201
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    .line 202
    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 203
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    array-length v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    array-length v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 204
    const/4 v1, 0x4

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    return-object v0
.end method

.method static attrs([BI)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 223
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x14

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 224
    const/16 v0, 0x14

    .line 225
    :goto_1a
    add-int/lit8 v3, v0, 0x4

    if-gt v3, v2, :cond_3f

    .line 226
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 227
    add-int/lit8 v5, v0, 0x4

    add-int/2addr v5, v4

    if-le v5, v2, :cond_40

    .line 231
    :cond_3f
    return-object v1

    .line 228
    :cond_40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    new-array v5, v4, [B

    add-int/lit8 v6, v0, 0x4

    const/4 v7, 0x0

    invoke-static {p0, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_59
    add-int/lit8 v3, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 230
    goto :goto_1a
.end method

.method static hex([BII)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v4, 0x10

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p2, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    const/4 v0, 0x0

    :goto_a
    if-ge v0, p2, :cond_28

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v2, 0x4

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 192
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static localCandidates(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 294
    :cond_9
    :goto_9
    if-eqz v2, :cond_7f

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 295
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_17} :catch_7e

    .line 296
    :try_start_17
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_20} :catch_81

    move-result v3

    if-nez v3, :cond_9

    .line 297
    :try_start_23
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 298
    :cond_27
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 299
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 300
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-nez v4, :cond_27

    .line 301
    instance-of v4, v0, Ljava/net/Inet6Address;

    if-eqz v4, :cond_71

    .line 302
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 303
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xe0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_27

    .line 304
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v4, v0, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_68
    :goto_68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x6

    if-lt v0, v4, :cond_27

    move-object v0, v1

    .line 312
    :goto_70
    return-object v0

    .line 305
    :cond_71
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_68

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_7d} :catch_7e

    goto :goto_68

    .line 309
    :catch_7e
    move-exception v0

    :cond_7f
    move-object v0, v1

    .line 312
    goto :goto_70

    .line 296
    :catch_81
    move-exception v0

    goto :goto_9
.end method

.method private static mask([B)[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 246
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 247
    const/16 v1, 0x21

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    .line 248
    const/4 v1, 0x4

    const/16 v2, 0xc

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    return-object v0
.end method

.method static parse(Ljava/lang/String;)Ljava/net/InetSocketAddress;
    .registers 12

    .prologue
    const/16 v10, 0x3a

    const/4 v9, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 327
    if-eqz p0, :cond_10

    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x40

    if-le v0, v4, :cond_12

    :cond_10
    move-object v0, v3

    .line 351
    :goto_11
    return-object v0

    .line 328
    :cond_12
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 329
    if-gtz v4, :cond_1c

    move-object v0, v3

    goto :goto_11

    .line 330
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 331
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 332
    if-lez v7, :cond_32

    const v4, 0xffff

    if-le v7, v4, :cond_34

    :cond_32
    move-object v0, v3

    goto :goto_11

    .line 333
    :cond_34
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f2

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f2

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 334
    :goto_50
    const/16 v0, 0x3a

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_89

    move v0, v1

    :goto_59
    move v5, v2

    .line 335
    :goto_5a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_91

    .line 336
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 337
    const/16 v8, 0x30

    if-lt v4, v8, :cond_6c

    const/16 v8, 0x39

    if-le v4, v8, :cond_84

    :cond_6c
    const/16 v8, 0x2e

    if-eq v4, v8, :cond_84

    if-eqz v0, :cond_8b

    if-eq v4, v10, :cond_84

    const/16 v8, 0x61

    if-lt v4, v8, :cond_7c

    const/16 v8, 0x66

    if-le v4, v8, :cond_84

    :cond_7c
    const/16 v8, 0x41

    if-lt v4, v8, :cond_8b

    const/16 v8, 0x46

    if-gt v4, v8, :cond_8b

    :cond_84
    move v4, v1

    .line 338
    :goto_85
    if-nez v4, :cond_8d

    move-object v0, v3

    goto :goto_11

    :cond_89
    move v0, v2

    .line 334
    goto :goto_59

    :cond_8b
    move v4, v2

    .line 337
    goto :goto_85

    .line 335
    :cond_8d
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_5a

    .line 340
    :cond_91
    if-nez v0, :cond_d2

    .line 341
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 342
    array-length v1, v0

    if-eq v1, v9, :cond_a0

    move-object v0, v3

    goto/16 :goto_11

    .line 343
    :cond_a0
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 344
    :goto_a3
    if-ge v2, v9, :cond_c3

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_ba

    const/16 v5, 0xff

    if-gt v4, v5, :cond_ba

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_bd

    :cond_ba
    move-object v0, v3

    goto/16 :goto_11

    :cond_bd
    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 345
    :cond_c3
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto/16 :goto_11

    .line 350
    :catch_ce
    move-exception v0

    move-object v0, v3

    .line 351
    goto/16 :goto_11

    .line 347
    :cond_d2
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_e8

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_e8

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_eb

    :cond_e8
    move-object v0, v3

    goto/16 :goto_11

    .line 349
    :cond_eb
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f0} :catch_ce

    goto/16 :goto_11

    :cond_f2
    move-object v6, v0

    goto/16 :goto_50
.end method

.method static plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 8

    .prologue
    const/16 v6, 0xff

    const/16 v5, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    :try_start_6
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 180
    array-length v2, v3

    const/16 v4, 0x10

    if-ne v2, v4, :cond_53

    .line 181
    const/16 v2, 0xa

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v6, :cond_2c

    const/16 v2, 0xb

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v6, :cond_2c

    :goto_1f
    move v2, v1

    .line 182
    :goto_20
    if-ge v2, v5, :cond_2e

    if-eqz v0, :cond_2e

    aget-byte v4, v3, v2

    if-eqz v4, :cond_29

    move v0, v1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2c
    move v0, v1

    .line 181
    goto :goto_1f

    .line 183
    :cond_2e
    if-eqz v0, :cond_53

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0xc

    aget-byte v2, v3, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xd

    aget-byte v2, v3, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xe

    aget-byte v2, v3, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xf

    aget-byte v2, v3, v2

    aput-byte v2, v0, v1

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_52} :catch_54

    move-result-object p0

    .line 186
    :cond_53
    :goto_53
    return-object p0

    .line 185
    :catch_54
    move-exception v0

    goto :goto_53
.end method

.method static sameHost(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Z
    .registers 4

    .prologue
    .line 173
    if-eqz p0, :cond_26

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method static show(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 317
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 319
    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 320
    if-ltz v2, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static stun(Lfr/testudo/spacecorsair/mod/ModNet$Wire;Ljava/lang/String;II)Ljava/net/InetSocketAddress;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 276
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 277
    const/4 v2, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModNet;->txid()[B

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [[B

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModNet;->stunMsg(I[B[[B)[B

    move-result-object v2

    .line 278
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3, p3}, Lfr/testudo/spacecorsair/mod/ModNet$Wire;->transact(Ljava/net/SocketAddress;[BII)[B

    move-result-object v2

    .line 279
    if-eqz v2, :cond_2e

    const/4 v0, 0x0

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    const/16 v3, 0x101

    if-eq v0, v3, :cond_2f

    .line 285
    :cond_2e
    :goto_2e
    return-object v1

    .line 280
    :cond_2f
    array-length v0, v2

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModNet;->attrs([BI)Ljava/util/HashMap;

    move-result-object v3

    .line 281
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->txOf([B)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModNet;->addrOf([B[BZ)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 282
    if-nez v0, :cond_79

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModNet;->txOf([B)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModNet;->addrOf([B[BZ)Ljava/net/InetSocketAddress;

    move-result-object v0

    move-object v2, v0

    .line 283
    :goto_60
    if-nez v2, :cond_65

    move-object v0, v1

    :goto_63
    move-object v1, v0

    goto :goto_2e

    :cond_65
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {v0, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_76} :catch_77

    goto :goto_63

    .line 284
    :catch_77
    move-exception v0

    goto :goto_2e

    :cond_79
    move-object v2, v0

    goto :goto_60
.end method

.method static varargs stunMsg(I[B[[B)[B
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 209
    .line 210
    array-length v3, p2

    move v0, v1

    move v2, v1

    :goto_4
    if-ge v0, v3, :cond_d

    aget-object v4, p2, v0

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 211
    :cond_d
    add-int/lit8 v0, v2, 0x14

    new-array v3, v0, [B

    .line 212
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    const/4 v0, 0x1

    int-to-byte v4, p0

    aput-byte v4, v3, v0

    const/4 v0, 0x2

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    const/4 v0, 0x3

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    .line 213
    const/4 v0, 0x4

    const/16 v2, 0x21

    aput-byte v2, v3, v0

    const/4 v0, 0x5

    const/16 v2, 0x12

    aput-byte v2, v3, v0

    const/4 v0, 0x6

    const/16 v2, -0x5c

    aput-byte v2, v3, v0

    const/4 v0, 0x7

    const/16 v2, 0x42

    aput-byte v2, v3, v0

    .line 214
    const/16 v0, 0x8

    const/16 v2, 0xc

    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    const/16 v2, 0x14

    .line 216
    array-length v4, p2

    move v0, v1

    :goto_43
    if-ge v0, v4, :cond_50

    aget-object v5, p2, v0

    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 217
    :cond_50
    return-object v3
.end method

.method private static txOf([B)[B
    .registers 5

    .prologue
    const/16 v3, 0xc

    .line 271
    new-array v0, v3, [B

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static txid()[B
    .registers 2

    .prologue
    .line 198
    const/16 v0, 0xc

    new-array v0, v0, [B

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModNet;->txRnd:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    return-object v0
.end method

.method static withIntegrity([B[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    :try_start_0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x18

    new-array v0, v0, [B

    .line 544
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    array-length v1, v0

    add-int/lit8 v1, v1, -0x14

    .line 546
    const/4 v2, 0x2

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 547
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 548
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA1"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 549
    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 550
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    .line 551
    array-length v2, p0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    array-length v2, p0

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    array-length v2, p0

    add-int/lit8 v2, v2, 0x3

    const/16 v3, 0x14

    aput-byte v3, v0, v2

    .line 552
    const/4 v2, 0x0

    array-length v3, p0

    add-int/lit8 v3, v3, 0x4

    const/16 v4, 0x14

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_52
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_52} :catch_53

    .line 553
    return-object v0

    .line 554
    :catch_53
    move-exception v0

    .line 555
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no HMAC"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static xorAddr(Ljava/net/InetSocketAddress;[B)[B
    .registers 9

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 235
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModNet;->plain(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 236
    array-length v0, v3

    add-int/lit8 v0, v0, 0x4

    new-array v4, v0, [B

    .line 237
    array-length v0, v3

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3f

    move v0, v1

    :goto_18
    int-to-byte v0, v0

    aput-byte v0, v4, v1

    .line 238
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    xor-int/lit16 v0, v0, 0x2112

    .line 239
    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, v4, v2

    const/4 v1, 0x3

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    .line 240
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModNet;->mask([B)[B

    move-result-object v1

    .line 241
    const/4 v0, 0x0

    :goto_2f
    array-length v2, v3

    if-ge v0, v2, :cond_41

    add-int/lit8 v2, v0, 0x4

    aget-byte v5, v3, v0

    aget-byte v6, v1, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_3f
    move v0, v2

    .line 237
    goto :goto_18

    .line 242
    :cond_41
    return-object v4
.end method
