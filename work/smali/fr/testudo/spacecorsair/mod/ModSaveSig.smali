.class final Lfr/testudo/spacecorsair/mod/ModSaveSig;
.super Ljava/lang/Object;
.source "ModSaveSig.java"


# static fields
.field private static final KEY:[B

.field static final LOCK_MS:J = 0x5265c00L

.field private static ctx:Landroid/content/Context;

.field private static volatile install:Ljava/lang/String;

.field private static keep:Landroid/os/FileObserver;

.field private static volatile lockedUntil:J

.field private static volatile signAt:J

.field private static final signLock:Ljava/lang/Object;

.field private static volatile started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->KEY:[B

    .line 29
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->install:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->signLock:Ljava/lang/Object;

    return-void

    .line 24
    nop

    :array_16
    .array-data 1
        0x53t
        0x43t
        0x2dt
        0x76t
        0x34t
        0x35t
        0x2dt
        0x73t
        0x61t
        0x76t
        0x65t
        0x2dt
        0x6bt
        0x65t
        0x79t
        0x2dt
        0x39t
        0x64t
        0x31t
        0x66t
        0x37t
        0x61t
        0x33t
        0x63t
        0x35t
        0x65t
        0x38t
        0x62t
        0x32t
        0x30t
        0x34t
        0x36t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->signLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->signAll()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 20
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->resignSoon()V

    return-void
.end method

.method static installForTest(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 141
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->install:Ljava/lang/String;

    return-void
.end method

.method static installId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 144
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->install:Ljava/lang/String;

    return-object v0
.end method

.method static lockedHours()J
    .registers 6

    .prologue
    .line 139
    const-wide/16 v0, 0x0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModSaveSig;->lockedUntil:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee7f

    add-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->ctx:Landroid/content/Context;

    const-string v1, "corsair_net"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static publicOk()Z
    .registers 4

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModSaveSig;->lockedUntil:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static resignSoon()V
    .registers 6

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModSaveSig;->signAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 96
    :goto_e
    return-void

    .line 78
    :cond_f
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->signAt:J

    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModSaveSig$2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModSaveSig$2;-><init>()V

    const-string v2, "save-sign"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_e
.end method

.method static sign([B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 131
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSaveSig;->KEY:[B

    const-string v3, "HmacSHA256"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 132
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModNet;->hex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static signAll()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 101
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_10

    array-length v0, v3

    if-nez v0, :cond_13

    :cond_10
    const-string v0, ""

    .line 125
    :goto_12
    return-object v0

    .line 103
    :cond_13
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 104
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 105
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSaveSig;->KEY:[B

    const-string v5, "HmacSHA256"

    invoke-direct {v0, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 106
    const/high16 v0, 0x10000

    new-array v5, v0, [B

    .line 108
    array-length v6, v3

    move v1, v2

    move v0, v2

    :goto_2f
    if-ge v1, v6, :cond_77

    aget-object v2, v3, v1

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x2000000

    cmp-long v7, v8, v10

    if-lez v7, :cond_47

    .line 108
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 110
    :cond_47
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljavax/crypto/Mac;->update([B)V

    .line 111
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljavax/crypto/Mac;->update(B)V

    .line 112
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5d} :catch_6d

    .line 115
    :goto_5d
    :try_start_5d
    invoke-virtual {v7, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_71

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v2}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_68

    goto :goto_5d

    .line 117
    :catchall_68
    move-exception v0

    :try_start_69
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 118
    throw v0
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6d} :catch_6d

    .line 124
    :catch_6d
    move-exception v0

    .line 125
    const-string v0, ""

    goto :goto_12

    .line 117
    :cond_71
    :try_start_71
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 121
    :cond_77
    if-nez v0, :cond_7c

    const-string v0, ""

    goto :goto_12

    .line 122
    :cond_7c
    invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModNet;->hex([BII)Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_85} :catch_6d

    move-result-object v0

    goto :goto_12
.end method

.method static start(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 39
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->started:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 72
    :cond_6
    :goto_6
    return-void

    .line 40
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->started:Z

    .line 42
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_14
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->ctx:Landroid/content/Context;

    .line 43
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    const-string v0, "install"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_4a

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 47
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 48
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModNet;->hex([BII)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "install"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    :cond_4a
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->install:Ljava/lang/String;

    .line 52
    const-string v0, "locked"

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModSaveSig;->lockedUntil:J

    .line 53
    const-string v0, "sig"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModSaveSig;->signAll()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_94

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_94

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModSaveSig;->lockedUntil:J

    .line 56
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "locked"

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModSaveSig;->lockedUntil:J

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    const-string v0, "save"

    const-string v3, "checksum mismatch: public lobbies locked for 24 h"

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a7

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sig"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    :cond_a7
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModSaveSig$1;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSaveSig;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x388

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModSaveSig$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->keep:Landroid/os/FileObserver;

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSaveSig;->keep:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_bf} :catch_c1

    goto/16 :goto_6

    .line 69
    :catch_c1
    move-exception v0

    goto/16 :goto_6
.end method
