.class public final Lfr/testudo/spacecorsair/mod/ModUpdate;
.super Ljava/lang/Object;
.source "ModUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModUpdate$Job;,
        Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;,
        Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;,
        Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;,
        Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "fr.testudo.spacecorsair.mod.UPDATE_INSTALL"

.field static final BASE:Ljava/lang/String; = "https://github.com/JosePriet/docker-android/releases/download/channel-stable/"

.field static final DAY_MS:J = 0x44aa200L

.field private static final PREFS:Ljava/lang/String; = "corsair_update"

.field static final PUB:Ljava/lang/String; = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEwwv/CvQj2cg3ChnIOPTfwkLaxXUDJ1dYJ34bPAsZimbvTYn1i7TMod0MIEWB2ijJJWkso+yh4f9pHGetaTA/1Q=="

.field private static app:Landroid/content/Context;

.field private static autoDone:Z

.field private static volatile busy:Z

.field private static volatile last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

.field private static menuLabel:Landroid/widget/TextView;

.field private static panelRefresh:Ljava/lang/Runnable;

.field private static volatile restartNeeded:Z

.field private static volatile status:Ljava/lang/String;

.field private static ui:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 180
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V
    .registers 2

    .prologue
    .line 60
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->work(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->openLink(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Z)Z
    .registers 1

    .prologue
    .line 60
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z

    return p0
.end method

.method static synthetic access$200(Ljava/lang/Runnable;)V
    .registers 1

    .prologue
    .line 60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V
    .registers 3

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->fill(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$502(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 60
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModUpdate;->panelRefresh:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    .prologue
    .line 60
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    return p0
.end method

.method static synthetic access$800()V
    .registers 0

    .prologue
    .line 60
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshPanel()V

    return-void
.end method

.method static synthetic access$900(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->restart(Landroid/app/Activity;)V

    return-void
.end method

.method static anything(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z
    .registers 3

    .prologue
    .line 222
    if-eqz p1, :cond_14

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->gameUpdate(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->missing(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static applyPatch(Ljava/io/File;Ljava/io/InputStream;Ljava/io/File;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 142
    const/4 v3, 0x4

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 143
    const-string v4, "SCP1"

    new-instance v5, Ljava/lang/String;

    const-string v6, "US-ASCII"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    new-instance v2, Ljava/io/IOException;

    const-string v3, "not a patch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_29
    const/16 v3, 0x20

    new-array v3, v3, [B

    const/16 v4, 0x20

    new-array v6, v4, [B

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 145
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 146
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModContent;->hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModContent;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    new-instance v2, Ljava/io/IOException;

    const-string v3, "patch is for another installed version"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_51
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v4, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 v2, 0x10000

    invoke-direct {v3, v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v7, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 148
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 149
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 151
    const-wide/16 v2, 0x0

    .line 152
    const/4 v4, 0x0

    .line 154
    const/high16 v5, 0x10000

    :try_start_7d
    new-array v13, v5, [B

    .line 156
    :cond_7f
    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 157
    if-nez v5, :cond_ab

    .line 169
    cmp-long v2, v2, v8

    if-nez v2, :cond_155

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_90
    .catchall {:try_start_7d .. :try_end_90} :catchall_dc

    move-result v2

    if-eqz v2, :cond_155

    const/4 v3, 0x1

    .line 170
    :goto_94
    if-nez v3, :cond_158

    :try_start_96
    new-instance v2, Ljava/io/IOException;

    const-string v4, "rebuilt game does not match the release"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9e
    .catchall {:try_start_96 .. :try_end_9e} :catchall_9e

    .line 172
    :catchall_9e
    move-exception v2

    :goto_9f
    :try_start_9f
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_166

    .line 173
    :goto_a2
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 174
    if-nez v3, :cond_aa

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 175
    :cond_aa
    throw v2

    .line 158
    :cond_ab
    const/4 v14, 0x1

    if-ne v5, v14, :cond_104

    .line 159
    :try_start_ae
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 160
    if-ltz v5, :cond_d4

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-ltz v16, :cond_d4

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v16, v16, v14

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_d4

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v16, v16, v2

    cmp-long v16, v16, v8

    if-lez v16, :cond_df

    :cond_d4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bad copy"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :catchall_dc
    move-exception v2

    move v3, v4

    goto :goto_9f

    .line 161
    :cond_df
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 162
    :goto_e2
    if-lez v5, :cond_7f

    const/4 v14, 0x0

    array-length v15, v13

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-virtual {v11, v13, v14, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v14

    if-gtz v14, :cond_f8

    new-instance v2, Ljava/io/IOException;

    const-string v3, "short read"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f8
    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15, v14}, Ljava/io/OutputStream;->write([BII)V

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v15, v14}, Ljava/security/MessageDigest;->update([BII)V

    sub-int/2addr v5, v14

    int-to-long v14, v14

    add-long/2addr v2, v14

    goto :goto_e2

    .line 163
    :cond_104
    const/4 v14, 0x2

    if-ne v5, v14, :cond_13c

    .line 164
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 165
    if-ltz v5, :cond_113

    int-to-long v14, v5

    add-long/2addr v14, v2

    cmp-long v14, v14, v8

    if-lez v14, :cond_126

    :cond_113
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bad data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_11b
    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15, v14}, Ljava/io/OutputStream;->write([BII)V

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v15, v14}, Ljava/security/MessageDigest;->update([BII)V

    sub-int/2addr v5, v14

    int-to-long v14, v14

    add-long/2addr v2, v14

    :cond_126
    if-lez v5, :cond_7f

    const/4 v14, 0x0

    array-length v15, v13

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-virtual {v7, v13, v14, v15}, Ljava/io/DataInputStream;->read([BII)I

    move-result v14

    if-gtz v14, :cond_11b

    new-instance v2, Ljava/io/IOException;

    const-string v3, "short patch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_13c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad op "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_155
    .catchall {:try_start_ae .. :try_end_155} :catchall_dc

    .line 169
    :cond_155
    const/4 v3, 0x0

    goto/16 :goto_94

    .line 172
    :cond_158
    :try_start_158
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_15b
    .catch Ljava/lang/Throwable; {:try_start_158 .. :try_end_15b} :catch_164

    .line 173
    :goto_15b
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 174
    if-nez v3, :cond_163

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 176
    :cond_163
    return-void

    .line 172
    :catch_164
    move-exception v2

    goto :goto_15b

    :catch_166
    move-exception v4

    goto/16 :goto_a2
.end method

.method static b64(Ljava/lang/String;)[B
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 637
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 638
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 640
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_10
    if-ge v2, v7, :cond_30

    aget-char v3, v6, v2

    .line 641
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 642
    if-gez v3, :cond_1d

    .line 640
    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 643
    :cond_1d
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x6

    .line 644
    const/16 v3, 0x8

    if-lt v0, v3, :cond_1a

    add-int/lit8 v0, v0, -0x8

    shr-int v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1a

    .line 646
    :cond_30
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static base()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    const-string v0, "corsair_upd_url"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_16
    return-object v0

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_2b
    const-string v0, "https://github.com/JosePriet/docker-android/releases/download/channel-stable/"

    goto :goto_16
.end method

.method private static button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .registers 7

    .prologue
    .line 598
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 599
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 600
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    return-object v0
.end method

.method static chainFor(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->packs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->build:I

    if-ne v3, p1, :cond_b

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->api:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->revoked:Ljava/util/Set;

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 131
    :cond_2e
    return-object v1
.end method

.method static download(Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v10, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 316
    :goto_26
    cmp-long v6, v4, p2

    if-ltz v6, :cond_2f

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    const-wide/16 v4, 0x0

    .line 317
    :cond_2f
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModUpdate;->open(Ljava/lang/String;J)Ljava/net/HttpURLConnection;

    move-result-object v11

    .line 318
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xce

    if-ne v6, v7, :cond_7e

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_7e

    const/4 v6, 0x1

    .line 319
    :goto_44
    if-nez v6, :cond_48

    const-wide/16 v4, 0x0

    .line 320
    :cond_48
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 321
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 323
    const/high16 v6, 0x10000

    :try_start_53
    new-array v14, v6, [B

    .line 324
    const-wide/16 v6, 0x0

    move-wide v8, v4

    .line 325
    :goto_58
    invoke-virtual {v12, v14}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_95

    .line 326
    const/4 v5, 0x0

    invoke-virtual {v13, v14, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v4, v8

    .line 327
    cmp-long v8, v4, p2

    if-lez v8, :cond_80

    new-instance v4, Ljava/io/IOException;

    const-string v5, "download larger than expected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_70

    .line 330
    :catchall_70
    move-exception v4

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4

    .line 315
    :cond_7b
    const-wide/16 v4, 0x0

    goto :goto_26

    .line 318
    :cond_7e
    const/4 v6, 0x0

    goto :goto_44

    .line 328
    :cond_80
    if-eqz p5, :cond_d9

    sub-long v8, v4, v6

    const-wide/32 v16, 0x40000

    cmp-long v8, v8, v16

    if-lez v8, :cond_d9

    :try_start_8b
    move-object/from16 v0, p5

    move-wide/from16 v1, p2

    invoke-interface {v0, v4, v5, v1, v2}, Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;->at(JJ)V
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_70

    move-wide v6, v4

    move-wide v8, v4

    goto :goto_58

    .line 330
    :cond_95
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 331
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-eqz v4, :cond_ae

    new-instance v4, Ljava/io/IOException;

    const-string v5, "download incomplete"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 332
    :cond_ae
    invoke-static {v10}, Lfr/testudo/spacecorsair/mod/ModContent;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c5

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/IOException;

    const-string v5, "download damaged (checksum)"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 333
    :cond_c5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 334
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_d8

    new-instance v4, Ljava/io/IOException;

    const-string v5, "could not save the download"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 335
    :cond_d8
    return-void

    :cond_d9
    move-wide v8, v4

    goto/16 :goto_58
.end method

.method private static enoughSpace(Ljava/io/File;J)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 338
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_10

    move-result-wide v2

    const-wide/32 v4, 0x1400000

    add-long/2addr v4, p1

    cmp-long v1, v2, v4

    if-lez v1, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    :catch_10
    move-exception v1

    goto :goto_d
.end method

.method static fetch(Landroid/content/Context;)Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 228
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->base()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "manifest.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->get(Ljava/lang/String;I)[B

    move-result-object v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->base()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "manifest.sig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->get(Ljava/lang/String;I)[B

    move-result-object v2

    .line 230
    const-string v3, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEwwv/CvQj2cg3ChnIOPTfwkLaxXUDJ1dYJ34bPAsZimbvTYn1i7TMod0MIEWB2ijJJWkso+yh4f9pHGetaTA/1Q=="

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->verify([B[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v1, "Update check failed: the update list is not signed by the game\'s key."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    .line 243
    :goto_4b
    return-object v0

    .line 231
    :cond_4c
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->parse(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_5d

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->seq:I

    if-gez v2, :cond_88

    :cond_5d
    const-string v1, "Update check failed: the update list could not be read."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_65} :catch_66

    goto :goto_4b

    .line 240
    :catch_66
    move-exception v1

    .line 241
    const-string v2, "Update check failed: no connection."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    .line 242
    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 233
    :cond_88
    :try_start_88
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "seq"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 234
    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->seq:I

    if-ge v3, v2, :cond_a2

    const-string v1, "No new updates."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    goto :goto_4b

    .line 235
    :cond_a2
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "seq"

    iget v4, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->seq:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "checked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    .line 237
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->anything(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z

    move-result v2

    if-eqz v2, :cond_114

    const-string v2, "Updates are available."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_cd
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    .line 238
    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "manifest seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->seq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkBuild:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->packs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 239
    goto/16 :goto_4b

    .line 237
    :cond_114
    const-string v2, "Your game is up to date."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_119
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_119} :catch_66

    move-result-object v2

    goto :goto_cd
.end method

.method private static fill(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V
    .registers 14

    .prologue
    const-wide/16 v4, 0x0

    const/16 v10, 0xa

    .line 535
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 536
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 537
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModUpdate;->last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    const-string v0, "Game version"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModUpdate;->myVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    const-string v0, "Content"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->label(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModUpdate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checked"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 542
    cmp-long v3, v0, v4

    if-lez v3, :cond_91

    const-string v3, "Last check"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ": "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v8, 0x20

    .line 543
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    :cond_91
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    :cond_a6
    if-eqz v7, :cond_110

    .line 546
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v3

    .line 547
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModUpdate;->myBuild(Landroid/content/Context;)I

    move-result v0

    invoke-static {v7, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->chainFor(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b8
    :goto_b8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    .line 548
    if-eqz v3, :cond_ec

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->es:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ec

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->es:Ljava/lang/String;

    .line 549
    :goto_d0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_b8

    const-string v9, "\n\u2022 "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b8

    .line 548
    :cond_ec
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->en:Ljava/lang/String;

    goto :goto_d0

    .line 551
    :cond_ef
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate;->gameUpdate(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z

    move-result v0

    if-eqz v0, :cond_110

    const-string v0, "\n\u2022 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "New game version"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 554
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    if-eqz v0, :cond_12d

    const-string v0, "Working..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 587
    :goto_12c
    return-void

    .line 555
    :cond_12d
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z

    if-eqz v0, :cond_143

    const-string v0, "Restart the game now"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$11;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate$11;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    :cond_143
    if-eqz v7, :cond_1b3

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z

    if-nez v0, :cond_1b3

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate;->missing(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b3

    .line 558
    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate;->missing(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    :goto_15c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    if-eqz v0, :cond_274

    iget-wide v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->size:J

    add-long/2addr v0, v2

    :goto_16d
    move-wide v2, v0

    goto :goto_15c

    .line 559
    :cond_16f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download content"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_1d8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->mb(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$12;

    invoke-direct {v1, p0, v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate$12;-><init>(Landroid/app/Activity;Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 563
    :cond_1b3
    if-eqz v7, :cond_22c

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate;->gameUpdate(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 564
    iget-wide v0, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    .line 565
    iget-object v2, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->patches:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1c4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1db

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;

    iget-wide v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->size:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1c4

    .line 559
    :cond_1d8
    const-string v0, ""

    goto :goto_19f

    .line 566
    :cond_1db
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update the game"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_26a

    const-string v0, "~"

    :goto_1f8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->mb(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$13;

    invoke-direct {v1, p0, v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate$13;-><init>(Landroid/app/Activity;Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 569
    const-string v0, "Download the full game in the browser"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$14;

    invoke-direct {v1, v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate$14;-><init>(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 571
    :cond_22c
    const-string v0, "Check now"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$15;

    invoke-direct {v1, p0, v6}, Lfr/testudo/spacecorsair/mod/ModUpdate$15;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 574
    const-string v0, "Undo last update"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$16;

    invoke-direct {v1, v6}, Lfr/testudo/spacecorsair/mod/ModUpdate$16;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 580
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->safeMode(Landroid/content/Context;)Z

    move-result v1

    .line 581
    if-eqz v1, :cond_26d

    const-string v0, "Use downloaded content again"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_25c
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModUpdate$17;

    invoke-direct {v2, v6, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate$17;-><init>(Landroid/content/Context;Z)V

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_12c

    .line 566
    :cond_26a
    const-string v0, ""

    goto :goto_1f8

    .line 581
    :cond_26d
    const-string v0, "Use built-in content only"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25c

    :cond_274
    move-wide v0, v2

    goto/16 :goto_16d
.end method

.method static gameUpdate(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z
    .registers 4

    .prologue
    .line 220
    if-eqz p1, :cond_14

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkBuild:I

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->myBuild(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_14

    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static get(Ljava/lang/String;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->open(Ljava/lang/String;J)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 278
    :try_start_a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 280
    :cond_13
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_33

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-le v4, p1, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v3, "too large"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_2b

    .line 282
    :catchall_2b
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 281
    :cond_33
    :try_start_33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_2b

    move-result-object v0

    .line 282
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 281
    return-object v0
.end method

.method private static icon()Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const v13, 0x3f0f5c29    # 0.56f

    const v12, 0x3ee147ae    # 0.44f

    const v11, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e47ae14    # 0.195f

    const v10, 0x3f051eb8    # 0.52f

    .line 484
    const/16 v7, 0x80

    .line 485
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 486
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 487
    new-instance v5, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 488
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 489
    int-to-float v1, v7

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 490
    const v1, -0xd13b10

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v7

    mul-float/2addr v2, v4

    int-to-float v3, v7

    mul-float/2addr v3, v4

    int-to-float v4, v7

    const v6, 0x3f4e147b    # 0.805f

    mul-float/2addr v4, v6

    int-to-float v6, v7

    const v9, 0x3f4e147b    # 0.805f

    mul-float/2addr v6, v9

    invoke-direct {v1, v2, v3, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 492
    const/4 v2, 0x0

    move v6, v2

    :goto_4a
    const/4 v2, 0x4

    if-ge v6, v2, :cond_5c

    mul-int/lit8 v2, v6, 0x5a

    add-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    const/high16 v3, 0x42840000    # 66.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4a

    .line 493
    :cond_5c
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 494
    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 495
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 496
    int-to-float v2, v7

    mul-float/2addr v2, v12

    int-to-float v3, v7

    mul-float/2addr v3, v11

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v2, v7

    mul-float/2addr v2, v13

    int-to-float v3, v7

    mul-float/2addr v3, v11

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v2, v7

    mul-float/2addr v2, v13

    int-to-float v3, v7

    mul-float/2addr v3, v10

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v2, v7

    const v3, 0x3f266666    # 0.65f

    mul-float/2addr v2, v3

    int-to-float v3, v7

    mul-float/2addr v3, v10

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    int-to-float v2, v7

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    int-to-float v3, v7

    const v4, 0x3f2e147b    # 0.68f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v2, v7

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    int-to-float v3, v7

    mul-float/2addr v3, v10

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v2, v7

    mul-float/2addr v2, v12

    int-to-float v3, v7

    mul-float/2addr v3, v10

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 498
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 499
    return-object v8
.end method

.method private static install(Landroid/content/Context;Ljava/io/File;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_10

    iget-object v0, p2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkUrl:Ljava/lang/String;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->openLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    :goto_f
    return-void

    .line 393
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$5;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate$5;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "fr.testudo.spacecorsair.mod.UPDATE_INSTALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageInstaller"

    new-array v3, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 411
    const-string v0, "android.content.pm.PackageInstaller$SessionParams"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 412
    new-array v2, v10, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 413
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "createSession"

    new-array v5, v10, [Ljava/lang/Class;

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 414
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "openSession"

    new-array v4, v10, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "openWrite"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v9

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v10

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "base.apk"

    aput-object v4, v3, v9

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 416
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 418
    const/high16 v4, 0x10000

    :try_start_ca
    new-array v4, v4, [B

    .line 419
    :goto_cc
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_df

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d6
    .catchall {:try_start_ca .. :try_end_d6} :catchall_d7

    goto :goto_cc

    .line 421
    :catchall_d7
    move-exception v1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1

    .line 420
    :cond_df
    :try_start_df
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "fsync"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/io/OutputStream;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fa
    .catchall {:try_start_df .. :try_end_fa} :catchall_d7

    .line 421
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string v3, "fr.testudo.spacecorsair.mod.UPDATE_INSTALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 425
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "commit"

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Landroid/content/IntentSender;

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f
.end method

.method static mb(J)Ljava/lang/String;
    .registers 10

    .prologue
    .line 632
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f MB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static menuEntry(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 9

    .prologue
    .line 440
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    :try_start_4
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_10

    const-string v1, "corsair_upd_entry"

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 471
    :cond_10
    :goto_10
    return-void

    .line 441
    :cond_11
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 442
    const-string v1, "corsair_upd_entry"

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 443
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 444
    const/16 v1, 0x11

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 445
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 446
    instance-of v1, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_af

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 447
    :goto_32
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 449
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 450
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->icon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 452
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 455
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 456
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 457
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 458
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 459
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->menuLabel:Landroid/widget/TextView;

    .line 462
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshLabel()V

    .line 463
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$6;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_aa} :catch_ac

    goto/16 :goto_10

    .line 470
    :catch_ac
    move-exception v1

    goto/16 :goto_10

    .line 446
    :cond_af
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_32
.end method

.method static missing(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->myBuild(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->chainFor(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;I)Ljava/util/List;

    move-result-object v5

    .line 207
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->installedChain(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_57

    move v0, v1

    :goto_1e
    move v4, v2

    .line 210
    :goto_1f
    if-eqz v0, :cond_5b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_5b

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->sha:Ljava/lang/String;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v1

    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_57
    move v0, v2

    .line 209
    goto :goto_1e

    :cond_59
    move v0, v2

    .line 210
    goto :goto_54

    .line 211
    :cond_5b
    if-eqz v0, :cond_5f

    move-object v0, v3

    .line 217
    :goto_5e
    return-object v0

    .line 212
    :cond_5f
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_63
    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    .line 213
    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModContent;->packFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->size:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_63

    :cond_85
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 216
    :cond_89
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_93

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_93
    move-object v0, v3

    .line 217
    goto :goto_5e
.end method

.method static myBuild(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_12

    add-int/lit16 v0, v0, -0x3e8

    :goto_11
    return v0

    :catch_12
    move-exception v0

    const/4 v0, -0x1

    goto :goto_11
.end method

.method private static myVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    const-string v0, "?"

    goto :goto_f
.end method

.method public static onActivity(Landroid/app/Activity;)V
    .registers 7

    .prologue
    .line 250
    :try_start_0
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->autoDone:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 263
    :cond_6
    :goto_6
    return-void

    .line 251
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->autoDone:Z

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    .line 253
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 254
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->notice:Ljava/lang/String;

    if-eqz v0, :cond_22

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->notice:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->toast(Ljava/lang/String;)V

    .line 255
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "checked"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x44aa200

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->onWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$1;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate$1;-><init>()V

    const-string v2, "update-check"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_6

    .line 262
    :catch_54
    move-exception v0

    goto :goto_6
.end method

.method private static onWifi(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 268
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_19} :catch_20

    move-result v0

    if-ne v0, v1, :cond_1e

    move v0, v1

    .line 270
    :goto_1d
    return v0

    :cond_1e
    move v0, v2

    .line 269
    goto :goto_1d

    .line 270
    :catch_20
    move-exception v0

    move v0, v2

    goto :goto_1d
.end method

.method private static open(Ljava/lang/String;J)Ljava/net/HttpURLConnection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 287
    move v1, v2

    .line 288
    :goto_2
    const/4 v0, 0x6

    if-ge v1, v0, :cond_9b

    .line 289
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 290
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 291
    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 292
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 293
    const-string v3, "User-Agent"

    const-string v4, "SpaceCorsairMod"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 295
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_4b

    const-string v3, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_4b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 297
    const/16 v4, 0x12c

    if-lt v3, v4, :cond_72

    const/16 v4, 0x190

    if-ge v3, v4, :cond_72

    .line 298
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 300
    if-eqz p0, :cond_6a

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_96

    :cond_6a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_72
    const/16 v1, 0xc8

    if-eq v3, v1, :cond_a3

    const/16 v1, 0xce

    if-eq v3, v1, :cond_a3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 307
    :cond_9b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many redirects"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_a3
    return-object v0
.end method

.method private static openLink(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 430
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 431
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 434
    :goto_13
    return-void

    .line 433
    :catch_14
    move-exception v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V

    goto :goto_13
.end method

.method static parse(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;
    .registers 11

    .prologue
    .line 94
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;-><init>()V

    .line 95
    const/4 v1, 0x0

    .line 96
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_f
    if-ge v3, v5, :cond_168

    aget-object v0, v4, v3

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 98
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 99
    if-gtz v6, :cond_24

    move v0, v1

    .line 96
    :goto_20
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_f

    .line 100
    :cond_24
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v6, "sc-manifest"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_20

    .line 102
    :cond_3e
    const-string v6, "seq"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    const/4 v6, -0x1

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->seq:I

    move v0, v1

    goto :goto_20

    .line 103
    :cond_4f
    const-string v6, "apk.version"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkVersion:Ljava/lang/String;

    move v0, v1

    goto :goto_20

    .line 104
    :cond_5b
    const-string v6, "apk.build"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    const/4 v6, -0x1

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkBuild:I

    move v0, v1

    goto :goto_20

    .line 105
    :cond_6c
    const-string v6, "apk.sha256"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSha:Ljava/lang/String;

    move v0, v1

    goto :goto_20

    .line 106
    :cond_7e
    const-string v6, "apk.size"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    move v0, v1

    goto :goto_20

    .line 107
    :cond_8e
    const-string v6, "apk.url"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    iput-object v0, v2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkUrl:Ljava/lang/String;

    move v0, v1

    goto :goto_20

    .line 108
    :cond_9a
    const-string v6, "revoked"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    iget-object v6, v2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->revoked:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto/16 :goto_20

    .line 109
    :cond_aa
    const-string v6, "patch"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 110
    const-string v6, "\\|"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 111
    array-length v6, v0

    const/4 v7, 0x4

    if-ge v6, v7, :cond_c0

    move v0, v1

    goto/16 :goto_20

    .line 112
    :cond_c0
    new-instance v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;

    invoke-direct {v6}, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v0, v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->from:Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v7, v0, v7

    iput-object v7, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->url:Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v7, v0, v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->sha:Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v0, v0, v7

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->size:J

    .line 113
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->patches:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 114
    goto/16 :goto_20

    :cond_f1
    const-string v6, "pack"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 115
    const-string v6, "\\|"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 116
    array-length v0, v6

    const/4 v7, 0x6

    if-ge v0, v7, :cond_107

    move v0, v1

    goto/16 :goto_20

    .line 117
    :cond_107
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;-><init>()V

    .line 118
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const/4 v8, -0x1

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->build:I

    const/4 v0, 0x1

    aget-object v0, v6, v0

    const/4 v8, -0x1

    invoke-static {v0, v8}, Lfr/testudo/spacecorsair/mod/ModContent;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->api:I

    const/4 v0, 0x2

    aget-object v0, v6, v0

    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v6, v0

    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->url:Ljava/lang/String;

    .line 119
    const/4 v0, 0x4

    aget-object v0, v6, v0

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->sha:Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v6, v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->size:J

    .line 120
    array-length v0, v6

    const/4 v8, 0x6

    if-le v0, v8, :cond_162

    const/4 v0, 0x6

    aget-object v0, v6, v0

    :goto_145
    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->en:Ljava/lang/String;

    array-length v0, v6

    const/4 v8, 0x7

    if-le v0, v8, :cond_165

    const/4 v0, 0x7

    aget-object v0, v6, v0

    :goto_14e
    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->es:Ljava/lang/String;

    .line 121
    iget-object v0, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    const-string v6, "[A-Za-z0-9._-]{1,64}"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15f

    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->packs:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15f
    move v0, v1

    goto/16 :goto_20

    .line 120
    :cond_162
    const-string v0, ""

    goto :goto_145

    :cond_165
    const-string v0, ""

    goto :goto_14e

    .line 124
    :cond_168
    if-eqz v1, :cond_16c

    move-object v0, v2

    :goto_16b
    return-object v0

    :cond_16c
    const/4 v0, 0x0

    goto :goto_16b
.end method

.method static parseLong(Ljava/lang/String;)J
    .registers 3

    .prologue
    .line 634
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v0

    :goto_8
    return-wide v0

    :catch_9
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method private static declared-synchronized post(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 623
    const-class v1, Lfr/testudo/spacecorsair/mod/ModUpdate;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->ui:Landroid/os/Handler;

    if-nez v0, :cond_12

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->ui:Landroid/os/Handler;

    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->ui:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 197
    const-string v0, "corsair_update"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static refreshLabel()V
    .registers 4

    .prologue
    .line 475
    :try_start_0
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->menuLabel:Landroid/widget/TextView;

    .line 476
    if-nez v1, :cond_5

    .line 481
    :goto_4
    return-void

    .line 477
    :cond_5
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 478
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z

    if-nez v2, :cond_15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->anything(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_15
    const/4 v0, 0x1

    .line 479
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updates"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_39

    const-string v0, " \u2022"

    :goto_29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 480
    :catch_35
    move-exception v0

    goto :goto_4

    .line 478
    :cond_37
    const/4 v0, 0x0

    goto :goto_16

    .line 479
    :cond_39
    const-string v0, ""
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_35

    goto :goto_29
.end method

.method private static refreshPanel()V
    .registers 1

    .prologue
    .line 619
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->panelRefresh:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->post(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method private static restart(Landroid/app/Activity;)V
    .registers 9

    .prologue
    .line 607
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_2f

    .line 609
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 610
    const/16 v1, 0x1267

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 611
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 612
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x320

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_3a

    .line 615
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 616
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 617
    return-void

    .line 614
    :catch_3a
    move-exception v0

    goto :goto_2f
.end method

.method static runContent(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 343
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->myBuild(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->chainFor(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;I)Ljava/util/List;

    move-result-object v4

    .line 344
    const-wide/16 v0, 0x0

    .line 345
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->missing(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    if-eqz v0, :cond_ff

    iget-wide v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->size:J

    const-wide/16 v6, 0x2

    mul-long/2addr v0, v6

    add-long/2addr v0, v2

    :goto_28
    move-wide v2, v0

    goto :goto_14

    .line 346
    :cond_2a
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->enoughSpace(Ljava/io/File;J)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough free space on the phone."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_40
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 348
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_49
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    .line 349
    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModContent;->packFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->size:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_78

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModContent;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->sha:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 351
    :cond_78
    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->url:Ljava/lang/String;

    iget-wide v2, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->size:J

    iget-object v4, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->sha:Ljava/lang/String;

    new-instance v5, Lfr/testudo/spacecorsair/mod/ModUpdate$2;

    invoke-direct {v5, v6}, Lfr/testudo/spacecorsair/mod/ModUpdate$2;-><init>(Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;)V

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModUpdate;->download(Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;)V

    .line 353
    :cond_86
    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->myBuild(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v0, v2, v9}, Lfr/testudo/spacecorsair/mod/ModContent;->validate(Ljava/io/File;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_c4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update refused"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_c4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->sha:Ljava/lang/String;

    aput-object v1, v0, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_49

    .line 357
    :cond_d5
    invoke-static {p0, v7}, Lfr/testudo/spacecorsair/mod/ModContent;->setChain(Landroid/content/Context;Ljava/util/List;)V

    .line 358
    sput-boolean v9, Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z

    .line 359
    const-string v0, "Content updated. Restart the game to apply it."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    .line 360
    const-string v0, "update"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chain set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModContent;->keyOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void

    :cond_ff
    move-wide v0, v2

    goto/16 :goto_28
.end method

.method static runGame(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "apk"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 367
    new-instance v6, Ljava/io/File;

    const-string v0, "new.apk"

    invoke-direct {v6, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    const-string v0, "Checking the installed game..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V

    .line 370
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModContent;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 371
    const/4 v4, 0x0

    .line 372
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->patches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->from:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ea

    :goto_46
    move-object v4, v0

    goto :goto_32

    .line 373
    :cond_48
    iget-wide v8, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    if-eqz v4, :cond_61

    iget-wide v0, v4, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->size:J

    :goto_4e
    add-long/2addr v0, v8

    invoke-static {v2, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->enoughSpace(Ljava/io/File;J)Z

    move-result v0

    if-nez v0, :cond_64

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough free space on the phone."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    const-wide/16 v0, 0x0

    goto :goto_4e

    .line 374
    :cond_64
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v8, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_80

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSha:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 375
    :cond_80
    if-eqz v4, :cond_cd

    .line 376
    new-instance v1, Ljava/io/File;

    const-string v0, "update.scp"

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    iget-object v0, v4, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->url:Ljava/lang/String;

    iget-wide v2, v4, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->size:J

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->sha:Ljava/lang/String;

    new-instance v5, Lfr/testudo/spacecorsair/mod/ModUpdate$3;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/mod/ModUpdate$3;-><init>()V

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModUpdate;->download(Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;)V

    .line 378
    const-string v0, "Building the new game version..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 380
    :try_start_a5
    invoke-static {v7, v0, v6}, Lfr/testudo/spacecorsair/mod/ModUpdate;->applyPatch(Ljava/io/File;Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_c5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 385
    :cond_ae
    :goto_ae
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSha:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/IOException;

    const-string v1, "rebuilt game does not match the release"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :catchall_c5
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v2

    .line 382
    :cond_cd
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkUrl:Ljava/lang/String;

    iget-wide v2, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    iget-object v4, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSha:Ljava/lang/String;

    new-instance v5, Lfr/testudo/spacecorsair/mod/ModUpdate$4;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/mod/ModUpdate$4;-><init>()V

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModUpdate;->download(Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;)V

    goto :goto_ae

    .line 386
    :cond_dd
    const-string v0, "Opening the installer..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V

    .line 387
    invoke-static {p0, v6, p1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->install(Landroid/content/Context;Ljava/io/File;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    .line 388
    return-void

    :cond_ea
    move-object v0, v4

    goto/16 :goto_46
.end method

.method private static setStatus(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 621
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshPanel()V

    return-void
.end method

.method static show(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 503
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    .line 504
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 505
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 506
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 507
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 508
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 509
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 511
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Game updates"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Close"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 512
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModUpdate$7;

    invoke-direct {v2, p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate$7;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->panelRefresh:Ljava/lang/Runnable;

    .line 513
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModUpdate$8;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate$8;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 514
    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->fill(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V

    .line 515
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 516
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    if-nez v0, :cond_74

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    if-nez v0, :cond_74

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModUpdate$9;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate$9;-><init>()V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->work(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V

    .line 517
    :cond_74
    return-void
.end method

.method private static text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .prologue
    .line 590
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 591
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    const v1, -0x1f1f20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 593
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 594
    return-object v0
.end method

.method private static toast(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 626
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModUpdate$18;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate$18;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->post(Ljava/lang/Runnable;)V

    .line 627
    return-void
.end method

.method static tr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 630
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p0

    :goto_4
    return-object p0

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method static verify([B[BLjava/lang/String;)Z
    .registers 6

    .prologue
    .line 83
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->b64(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 84
    const-string v1, "SHA256withECDSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 86
    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    .line 87
    invoke-virtual {v1, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_24

    move-result v0

    .line 89
    :goto_23
    return v0

    .line 88
    :catch_24
    move-exception v0

    .line 89
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private static work(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V
    .registers 5

    .prologue
    .line 522
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    if-eqz v0, :cond_5

    .line 532
    :goto_4
    return-void

    .line 523
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    .line 524
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshPanel()V

    .line 525
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$10;

    invoke-direct {v1, p1}, Lfr/testudo/spacecorsair/mod/ModUpdate$10;-><init>(Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V

    const-string v2, "update-job"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method
