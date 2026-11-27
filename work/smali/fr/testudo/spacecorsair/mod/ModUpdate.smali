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

.field private static front:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

.field private static menuLabel:Landroid/widget/TextView;

.field private static panelRefresh:Ljava/lang/Runnable;

.field private static receiver:Z

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

.method static synthetic access$100(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
    .registers 1

    .prologue
    .line 60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->prompt(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->restart(Landroid/app/Activity;)V

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

.method static synthetic access$300(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V
    .registers 2

    .prologue
    .line 60
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->work(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 60
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V
    .registers 3

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->fill(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$602(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 60
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModUpdate;->panelRefresh:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 60
    sput-boolean p0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    return p0
.end method

.method static synthetic access$900()V
    .registers 0

    .prologue
    .line 60
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshPanel()V

    return-void
.end method

.method static anything(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z
    .registers 3

    .prologue
    .line 221
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

    .line 700
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 701
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 703
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_10
    if-ge v2, v7, :cond_30

    aget-char v3, v6, v2

    .line 704
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 705
    if-gez v3, :cond_1d

    .line 703
    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 706
    :cond_1d
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x6

    .line 707
    const/16 v3, 0x8

    if-lt v0, v3, :cond_1a

    add-int/lit8 v0, v0, -0x8

    shr-int v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1a

    .line 709
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
    .line 658
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 659
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 660
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
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
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 357
    move v2, v1

    .line 358
    :goto_2
    :try_start_2
    invoke-static/range {p0 .. p5}, Lfr/testudo/spacecorsair/mod/ModUpdate;->download1(Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    .line 359
    :catch_6
    move-exception v3

    .line 360
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".part"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_8d

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, p2

    if-gez v0, :cond_8d

    move v0, v1

    .line 362
    :goto_3c
    const-string v5, "update"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download try "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stopped at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v4, 0x6

    if-ge v2, v4, :cond_81

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8f

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "download damaged"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 364
    :cond_81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The download stopped. Tap the button again to continue where it stopped."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_8d
    const/4 v0, 0x0

    goto :goto_3c

    .line 366
    :cond_8f
    if-nez v0, :cond_98

    const-wide/16 v4, 0x7d0

    int-to-long v6, v2

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 357
    :cond_98
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2
.end method

.method private static download1(Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 372
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

    .line 373
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 374
    :goto_26
    cmp-long v6, v4, p2

    if-ltz v6, :cond_2f

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    const-wide/16 v4, 0x0

    .line 375
    :cond_2f
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lfr/testudo/spacecorsair/mod/ModUpdate;->open(Ljava/lang/String;J)Ljava/net/HttpURLConnection;

    move-result-object v11

    .line 376
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xce

    if-ne v6, v7, :cond_7e

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_7e

    const/4 v6, 0x1

    .line 377
    :goto_44
    if-nez v6, :cond_48

    const-wide/16 v4, 0x0

    .line 378
    :cond_48
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 379
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 381
    const/high16 v6, 0x10000

    :try_start_53
    new-array v14, v6, [B

    .line 382
    const-wide/16 v6, 0x0

    move-wide v8, v4

    .line 383
    :goto_58
    invoke-virtual {v12, v14}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_95

    .line 384
    const/4 v5, 0x0

    invoke-virtual {v13, v14, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v4, v8

    .line 385
    cmp-long v8, v4, p2

    if-lez v8, :cond_80

    new-instance v4, Ljava/io/IOException;

    const-string v5, "download larger than expected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_70

    .line 388
    :catchall_70
    move-exception v4

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4

    .line 373
    :cond_7b
    const-wide/16 v4, 0x0

    goto :goto_26

    .line 376
    :cond_7e
    const/4 v6, 0x0

    goto :goto_44

    .line 386
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

    .line 388
    :cond_95
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 389
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-eqz v4, :cond_ae

    new-instance v4, Ljava/io/IOException;

    const-string v5, "download incomplete"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 390
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

    .line 391
    :cond_c5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 392
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_d8

    new-instance v4, Ljava/io/IOException;

    const-string v5, "could not save the download"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
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

    .line 396
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

    .line 227
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

    .line 228
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

    .line 229
    const-string v3, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEwwv/CvQj2cg3ChnIOPTfwkLaxXUDJ1dYJ34bPAsZimbvTYn1i7TMod0MIEWB2ijJJWkso+yh4f9pHGetaTA/1Q=="

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->verify([B[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v1, "Update check failed: the update list is not signed by the game\'s key."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    .line 242
    :goto_4b
    return-object v0

    .line 230
    :cond_4c
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->parse(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    move-result-object v1

    .line 231
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

    .line 239
    :catch_66
    move-exception v1

    .line 240
    const-string v2, "Update check failed: no connection."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    .line 241
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

    .line 232
    :cond_88
    :try_start_88
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "seq"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 233
    iget v3, v1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->seq:I

    if-ge v3, v2, :cond_a2

    const-string v1, "No new updates."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    goto :goto_4b

    .line 234
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

    .line 235
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    .line 236
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->anything(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z

    move-result v2

    if-eqz v2, :cond_114

    const-string v2, "Updates are available."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_cd
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    .line 237
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

    .line 238
    goto/16 :goto_4b

    .line 236
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

    .line 595
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 596
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 597
    sget-object v7, Lfr/testudo/spacecorsair/mod/ModUpdate;->last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
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

    .line 600
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

    .line 601
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModUpdate;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checked"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 602
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

    .line 603
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

    .line 604
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

    .line 605
    :cond_a6
    if-eqz v7, :cond_110

    .line 606
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v3

    .line 607
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

    .line 608
    if-eqz v3, :cond_ec

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->es:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ec

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->es:Ljava/lang/String;

    .line 609
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

    .line 608
    :cond_ec
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->en:Ljava/lang/String;

    goto :goto_d0

    .line 611
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

    .line 613
    :cond_110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    if-eqz v0, :cond_12d

    const-string v0, "Working..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 647
    :goto_12c
    return-void

    .line 615
    :cond_12d
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z

    if-eqz v0, :cond_143

    const-string v0, "Restart the game now"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$12;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate$12;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 616
    :cond_143
    if-eqz v7, :cond_1b3

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z

    if-nez v0, :cond_1b3

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate;->missing(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b3

    .line 618
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

    .line 619
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

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$13;

    invoke-direct {v1, p0, v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate$13;-><init>(Landroid/app/Activity;Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 623
    :cond_1b3
    if-eqz v7, :cond_22c

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate;->gameUpdate(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 624
    iget-wide v0, v7, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    .line 625
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

    .line 619
    :cond_1d8
    const-string v0, ""

    goto :goto_19f

    .line 626
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

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$14;

    invoke-direct {v1, p0, v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate$14;-><init>(Landroid/app/Activity;Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 629
    const-string v0, "Download the full game in the browser"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$15;

    invoke-direct {v1, v6, v7}, Lfr/testudo/spacecorsair/mod/ModUpdate$15;-><init>(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 631
    :cond_22c
    const-string v0, "Check now"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$16;

    invoke-direct {v1, p0, v6}, Lfr/testudo/spacecorsair/mod/ModUpdate$16;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 634
    const-string v0, "Undo last update"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$17;

    invoke-direct {v1, v6}, Lfr/testudo/spacecorsair/mod/ModUpdate$17;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 640
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->safeMode(Landroid/content/Context;)Z

    move-result v1

    .line 641
    if-eqz v1, :cond_26d

    const-string v0, "Use downloaded content again"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_25c
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModUpdate$18;

    invoke-direct {v2, v6, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate$18;-><init>(Landroid/content/Context;Z)V

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->button(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_12c

    .line 626
    :cond_26a
    const-string v0, ""

    goto :goto_1f8

    .line 641
    :cond_26d
    const-string v0, "Use built-in content only"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25c

    :cond_274
    move-wide v0, v2

    goto/16 :goto_16d
.end method

.method static front(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 271
    if-eqz p0, :cond_9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->front:Ljava/lang/ref/WeakReference;

    :cond_9
    return-void
.end method

.method static gameUpdate(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z
    .registers 4

    .prologue
    .line 219
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
    .line 318
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->open(Ljava/lang/String;J)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 321
    :try_start_a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 322
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 323
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

    .line 325
    :catchall_2b
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 324
    :cond_33
    :try_start_33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_2b

    move-result-object v0

    .line 325
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 324
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

    .line 544
    const/16 v7, 0x80

    .line 545
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 546
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 547
    new-instance v5, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 548
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 549
    int-to-float v1, v7

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 550
    const v1, -0xd13b10

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
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

    .line 552
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

    .line 553
    :cond_5c
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 554
    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 555
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 556
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

    .line 557
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

    .line 558
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 559
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

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_10

    iget-object v0, p2, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkUrl:Ljava/lang/String;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->openLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 486
    :goto_f
    return-void

    .line 452
    :cond_10
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->receiver:Z

    if-nez v0, :cond_27

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$6;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate$6;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "fr.testudo.spacecorsair.mod.UPDATE_INSTALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 468
    :cond_27
    sput-boolean v10, Lfr/testudo/spacecorsair/mod/ModUpdate;->receiver:Z

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageInstaller"

    new-array v3, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 471
    const-string v0, "android.content.pm.PackageInstaller$SessionParams"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 472
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

    .line 473
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

    .line 474
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

    .line 475
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

    .line 476
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 478
    const/high16 v4, 0x10000

    :try_start_d0
    new-array v4, v4, [B

    .line 479
    :goto_d2
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_e5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_dc
    .catchall {:try_start_d0 .. :try_end_dc} :catchall_dd

    goto :goto_d2

    .line 481
    :catchall_dd
    move-exception v1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1

    .line 480
    :cond_e5
    :try_start_e5
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
    :try_end_100
    .catchall {:try_start_e5 .. :try_end_100} :catchall_dd

    .line 481
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v3, "fr.testudo.spacecorsair.mod.UPDATE_INSTALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 485
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
    .line 695
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
    .line 500
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    :try_start_4
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_10

    const-string v1, "corsair_upd_entry"

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 531
    :cond_10
    :goto_10
    return-void

    .line 501
    :cond_11
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 502
    const-string v1, "corsair_upd_entry"

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 503
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 504
    const/16 v1, 0x11

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 505
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 506
    instance-of v1, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_af

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 507
    :goto_32
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 509
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->icon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 511
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 512
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 515
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 516
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 517
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 518
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 519
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->menuLabel:Landroid/widget/TextView;

    .line 522
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshLabel()V

    .line 523
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$7;

    invoke-direct {v1, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate$7;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_aa} :catch_ac

    goto/16 :goto_10

    .line 530
    :catch_ac
    move-exception v1

    goto/16 :goto_10

    .line 506
    :cond_af
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_32
.end method

.method static missing(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Ljava/util/List;
    .registers 12
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
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_59

    move v0, v1

    :goto_1e
    move v3, v2

    move v4, v0

    .line 210
    :goto_20
    if-eqz v4, :cond_5d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5d

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->sha:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    move v0, v1

    :goto_55
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_20

    :cond_59
    move v0, v2

    .line 209
    goto :goto_1e

    :cond_5b
    move v0, v2

    .line 210
    goto :goto_55

    .line 211
    :cond_5d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_61
    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    .line 212
    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModContent;->packFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 213
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v8, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->size:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_61

    :cond_83
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 215
    :cond_87
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_93

    if-nez v4, :cond_93

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_93
    return-object v7
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
    .registers 4

    .prologue
    .line 253
    :try_start_0
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->autoDone:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 266
    :cond_6
    :goto_6
    return-void

    .line 254
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->autoDone:Z

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 257
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->notice:Ljava/lang/String;

    if-eqz v0, :cond_22

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModContent;->notice:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->toast(Ljava/lang/String;)V

    .line 258
    :cond_22
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->online(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$1;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate$1;-><init>()V

    const-string v2, "update-check"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_6

    .line 265
    :catch_3a
    move-exception v0

    goto :goto_6
.end method

.method private static online(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 309
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 310
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_19

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    .line 312
    :goto_16
    return v0

    .line 311
    :cond_17
    const/4 v0, 0x0

    goto :goto_16

    .line 312
    :catch_19
    move-exception v0

    move v0, v1

    goto :goto_16
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

    .line 330
    move v1, v2

    .line 331
    :goto_2
    const/4 v0, 0x6

    if-ge v1, v0, :cond_9b

    .line 332
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 333
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 334
    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 335
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 336
    const-string v3, "User-Agent"

    const-string v4, "SpaceCorsairMod"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 338
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

    .line 339
    :cond_4b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 340
    const/16 v4, 0x12c

    if-lt v3, v4, :cond_72

    const/16 v4, 0x190

    if-ge v3, v4, :cond_72

    .line 341
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 342
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 343
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

    .line 347
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

    .line 331
    :cond_96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 350
    :cond_9b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "too many redirects"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_a3
    return-object v0
.end method

.method private static openLink(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 490
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 491
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 494
    :goto_13
    return-void

    .line 493
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
    .line 697
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
    .line 686
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

.method private static declared-synchronized post2(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 680
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

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
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

.method private static prompt(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V
    .registers 15

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 275
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->front:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->front:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v8, v0

    .line 276
    :goto_10
    if-eqz v8, :cond_20

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_20

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    if-nez v0, :cond_20

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z

    if-eqz v0, :cond_2c

    :cond_20
    const-string v0, "A game update is ready. Open the menu, then Updates."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->toast(Ljava/lang/String;)V

    .line 305
    :goto_29
    return-void

    :cond_2a
    move-object v8, v0

    .line 275
    goto :goto_10

    .line 278
    :cond_2c
    :try_start_2c
    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 279
    invoke-static {v9, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->gameUpdate(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z

    move-result v10

    .line 281
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v12

    .line 283
    if-eqz v10, :cond_de

    .line 284
    iget-wide v2, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    .line 285
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->patches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;

    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->size:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_47

    .line 286
    :cond_5a
    const-string v0, "New game version"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_6f
    const-string v0, "\n\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Size"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_12b

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_12b

    const-string v0, "~"

    :goto_91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->mb(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Update available"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Download update"

    .line 297
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModUpdate$2;

    invoke-direct {v2, v8, v10, v9, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate$2;-><init>(Landroid/app/Activity;ZLandroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Later"

    .line 303
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_d0} :catch_d2

    goto/16 :goto_29

    .line 304
    :catch_d2
    move-exception v0

    const-string v0, "A game update is ready. Open the menu, then Updates."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->toast(Ljava/lang/String;)V

    goto/16 :goto_29

    .line 288
    :cond_de
    :try_start_de
    invoke-static {v9, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->missing(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-wide v2, v4

    :cond_e7
    :goto_e7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;

    .line 289
    if-eqz v0, :cond_e7

    .line 290
    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->size:J

    add-long/2addr v6, v2

    .line 291
    if-eqz v12, :cond_122

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->es:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_122

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->es:Ljava/lang/String;

    .line 292
    :goto_104
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_125

    const-string v2, "\n"

    :goto_10c
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_128

    move-object v0, v1

    :goto_11d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v2, v6

    .line 293
    goto :goto_e7

    .line 291
    :cond_122
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->en:Ljava/lang/String;

    goto :goto_104

    .line 292
    :cond_125
    const-string v2, ""

    goto :goto_10c

    :cond_128
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    goto :goto_11d

    .line 295
    :cond_12b
    const-string v0, ""
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_12d} :catch_d2

    goto/16 :goto_91
.end method

.method static refreshLabel()V
    .registers 4

    .prologue
    .line 535
    :try_start_0
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModUpdate;->menuLabel:Landroid/widget/TextView;

    .line 536
    if-nez v1, :cond_5

    .line 541
    :goto_4
    return-void

    .line 537
    :cond_5
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 538
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z

    if-nez v2, :cond_15

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModUpdate;->anything(Landroid/content/Context;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_15
    const/4 v0, 0x1

    .line 539
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

    .line 540
    :catch_35
    move-exception v0

    goto :goto_4

    .line 538
    :cond_37
    const/4 v0, 0x0

    goto :goto_16

    .line 539
    :cond_39
    const-string v0, ""
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_35

    goto :goto_29
.end method

.method private static refreshPanel()V
    .registers 1

    .prologue
    .line 682
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->panelRefresh:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->post(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method private static restart(Landroid/app/Activity;)V
    .registers 9

    .prologue
    .line 667
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_2f

    .line 669
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 670
    const/16 v1, 0x1267

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 671
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 672
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1194

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_40

    .line 676
    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    :try_start_30
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_3e

    .line 677
    :goto_33
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModUpdate$19;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate$19;-><init>()V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModUpdate;->post2(Ljava/lang/Runnable;J)V

    .line 678
    return-void

    .line 676
    :catch_3e
    move-exception v0

    goto :goto_33

    .line 674
    :catch_40
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

    .line 401
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->myBuild(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->chainFor(Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;I)Ljava/util/List;

    move-result-object v4

    .line 402
    const-wide/16 v0, 0x0

    .line 403
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

    .line 404
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

    .line 405
    :cond_40
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 406
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

    .line 407
    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModContent;->packFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 408
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

    .line 409
    :cond_78
    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->url:Ljava/lang/String;

    iget-wide v2, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->size:J

    iget-object v4, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->sha:Ljava/lang/String;

    new-instance v5, Lfr/testudo/spacecorsair/mod/ModUpdate$3;

    invoke-direct {v5, v6}, Lfr/testudo/spacecorsair/mod/ModUpdate$3;-><init>(Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;)V

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModUpdate;->download(Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;)V

    .line 411
    :cond_86
    iget-object v0, v6, Lfr/testudo/spacecorsair/mod/ModUpdate$Pack;->id:Ljava/lang/String;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->myBuild(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v0, v2, v9}, Lfr/testudo/spacecorsair/mod/ModContent;->validate(Ljava/io/File;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 412
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

    .line 413
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

    .line 415
    :cond_d5
    invoke-static {p0, v7}, Lfr/testudo/spacecorsair/mod/ModContent;->setChain(Landroid/content/Context;Ljava/util/List;)V

    .line 416
    sput-boolean v9, Lfr/testudo/spacecorsair/mod/ModUpdate;->restartNeeded:Z

    .line 417
    const-string v0, "Content updated. Restart the game to apply it. If it does not open again by itself, open it from the home screen."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    .line 418
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

    .line 419
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
    .line 423
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModContent;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "apk"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 425
    new-instance v6, Ljava/io/File;

    const-string v0, "new.apk"

    invoke-direct {v6, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/io/File;

    const-string v1, "build.txt"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkBuild:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModContent;->writeText(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    const-string v0, "Checking the installed game..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V

    .line 429
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModContent;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 430
    const/4 v4, 0x0

    .line 431
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->patches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->from:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_109

    :goto_65
    move-object v4, v0

    goto :goto_51

    .line 432
    :cond_67
    iget-wide v8, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    if-eqz v4, :cond_80

    iget-wide v0, v4, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->size:J

    :goto_6d
    add-long/2addr v0, v8

    invoke-static {v2, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->enoughSpace(Ljava/io/File;J)Z

    move-result v0

    if-nez v0, :cond_83

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough free space on the phone."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    const-wide/16 v0, 0x0

    goto :goto_6d

    .line 433
    :cond_83
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v8, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_9f

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSha:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 434
    :cond_9f
    if-eqz v4, :cond_ec

    .line 435
    new-instance v1, Ljava/io/File;

    const-string v0, "update.scp"

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    iget-object v0, v4, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->url:Ljava/lang/String;

    iget-wide v2, v4, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->size:J

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModUpdate$Patch;->sha:Ljava/lang/String;

    new-instance v5, Lfr/testudo/spacecorsair/mod/ModUpdate$4;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/mod/ModUpdate$4;-><init>()V

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModUpdate;->download(Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;)V

    .line 437
    const-string v0, "Building the new game version..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V

    .line 438
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 439
    :try_start_c4
    invoke-static {v7, v0, v6}, Lfr/testudo/spacecorsair/mod/ModUpdate;->applyPatch(Ljava/io/File;Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_e4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 444
    :cond_cd
    :goto_cd
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModContent;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSha:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fc

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/IOException;

    const-string v1, "rebuilt game does not match the release"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :catchall_e4
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v2

    .line 441
    :cond_ec
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkUrl:Ljava/lang/String;

    iget-wide v2, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSize:J

    iget-object v4, p1, Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;->apkSha:Ljava/lang/String;

    new-instance v5, Lfr/testudo/spacecorsair/mod/ModUpdate$5;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/mod/ModUpdate$5;-><init>()V

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModUpdate;->download(Ljava/lang/String;Ljava/io/File;JLjava/lang/String;Lfr/testudo/spacecorsair/mod/ModUpdate$Progress;)V

    goto :goto_cd

    .line 445
    :cond_fc
    const-string v0, "Opening the installer..."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->setStatus(Ljava/lang/String;)V

    .line 446
    invoke-static {p0, v6, p1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->install(Landroid/content/Context;Ljava/io/File;Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;)V

    .line 447
    return-void

    :cond_109
    move-object v0, v4

    goto/16 :goto_65
.end method

.method private static setStatus(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 684
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModUpdate;->status:Ljava/lang/String;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshPanel()V

    return-void
.end method

.method static show(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    .line 564
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->app:Landroid/content/Context;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModContent;->ensure(Landroid/content/Context;)V

    .line 565
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 566
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 567
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 568
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 569
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 570
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 571
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

    .line 572
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModUpdate$8;

    invoke-direct {v2, p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate$8;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModUpdate;->panelRefresh:Ljava/lang/Runnable;

    .line 573
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModUpdate$9;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModUpdate$9;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 574
    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModUpdate;->fill(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;)V

    .line 575
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 576
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->last:Lfr/testudo/spacecorsair/mod/ModUpdate$Manifest;

    if-nez v0, :cond_74

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    if-nez v0, :cond_74

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModUpdate$10;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate$10;-><init>()V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->work(Landroid/app/Activity;Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V

    .line 577
    :cond_74
    return-void
.end method

.method private static text(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .prologue
    .line 650
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 651
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    const v1, -0x1f1f20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 653
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 654
    return-object v0
.end method

.method private static toast(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 689
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModUpdate$20;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModUpdate$20;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModUpdate;->post(Ljava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method static tr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 693
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
    .line 582
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    if-eqz v0, :cond_5

    .line 592
    :goto_4
    return-void

    .line 583
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModUpdate;->busy:Z

    .line 584
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModUpdate;->refreshPanel()V

    .line 585
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModUpdate$11;

    invoke-direct {v1, p1}, Lfr/testudo/spacecorsair/mod/ModUpdate$11;-><init>(Lfr/testudo/spacecorsair/mod/ModUpdate$Job;)V

    const-string v2, "update-job"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method
