.class public Lcom/google/ads/ak;
.super Lcom/google/ads/aj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/ak$a;
    }
.end annotation


# static fields
.field public static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/String;

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/google/ads/ak;->d:Ljava/lang/reflect/Method;

    .line 34
    sput-object v0, Lcom/google/ads/ak;->e:Ljava/lang/reflect/Method;

    .line 35
    sput-object v0, Lcom/google/ads/ak;->f:Ljava/lang/reflect/Method;

    .line 36
    sput-object v0, Lcom/google/ads/ak;->g:Ljava/lang/reflect/Method;

    .line 37
    sput-object v0, Lcom/google/ads/ak;->h:Ljava/lang/reflect/Method;

    .line 40
    sput-object v0, Lcom/google/ads/ak;->i:Ljava/lang/String;

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/ads/ak;->j:J

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/ads/ak;->c:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/ads/aj;-><init>(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/ads/ak;
    .registers 3

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/google/ads/ak;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/google/ads/ak;

    invoke-direct {v0, p1}, Lcom/google/ads/ak;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 201
    sget-object v0, Lcom/google/ads/ak;->i:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 202
    new-instance v0, Lcom/google/ads/ak$a;

    invoke-direct {v0}, Lcom/google/ads/ak$a;-><init>()V

    throw v0

    .line 205
    :cond_a
    sget-object v0, Lcom/google/ads/ak;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    sget-object v0, Lcom/google/ads/ak;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    if-nez p0, :cond_c

    .line 264
    :cond_6
    new-instance v0, Lcom/google/ads/ak$a;

    invoke-direct {v0}, Lcom/google/ads/ak$a;-><init>()V

    throw v0

    .line 269
    :cond_c
    :try_start_c
    sget-object v0, Lcom/google/ads/ak;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1e} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1e} :catch_26

    .line 271
    return-object v0

    .line 272
    :catch_1f
    move-exception v0

    .line 273
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 274
    :catch_26
    move-exception v0

    .line 275
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 210
    sget-object v0, Lcom/google/ads/ak;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    .line 211
    new-instance v0, Lcom/google/ads/ak$a;

    invoke-direct {v0}, Lcom/google/ads/ak$a;-><init>()V

    throw v0

    .line 215
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/ads/ak;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_1e

    return-object v0

    .line 216
    :catch_17
    move-exception v0

    .line 217
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 218
    :catch_1e
    move-exception v0

    .line 219
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b([BLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 306
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/ads/am;->a([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Lcom/google/ads/am$a; {:try_start_0 .. :try_end_b} :catch_c
    .catch Lcom/google/ads/ao; {:try_start_0 .. :try_end_b} :catch_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_1a

    return-object v0

    .line 309
    :catch_c
    move-exception v0

    .line 310
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 311
    :catch_13
    move-exception v0

    .line 312
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 313
    :catch_1a
    move-exception v0

    .line 314
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static declared-synchronized b(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 89
    const-class v1, Lcom/google/ads/ak;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/ads/ak;->c:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_19

    .line 92
    :try_start_7
    sput-object p0, Lcom/google/ads/ak;->i:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/google/ads/ak;->f(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/google/ads/ak;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/google/ads/ak;->j:J

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/ads/ak;->c:Z
    :try_end_19
    .catch Lcom/google/ads/ak$a; {:try_start_7 .. :try_end_19} :catch_20
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_19} :catch_1e
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    .line 107
    :cond_19
    :goto_19
    monitor-exit v1

    return-void

    .line 89
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 103
    :catch_1e
    move-exception v0

    goto :goto_19

    .line 101
    :catch_20
    move-exception v0

    goto :goto_19
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 246
    sget-object v0, Lcom/google/ads/ak;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    .line 247
    new-instance v0, Lcom/google/ads/ak$a;

    invoke-direct {v0}, Lcom/google/ads/ak$a;-><init>()V

    throw v0

    .line 251
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/ads/ak;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_1e

    return-object v0

    .line 252
    :catch_17
    move-exception v0

    .line 253
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 254
    :catch_1e
    move-exception v0

    .line 255
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 226
    sget-object v0, Lcom/google/ads/ak;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    .line 227
    new-instance v0, Lcom/google/ads/ak$a;

    invoke-direct {v0}, Lcom/google/ads/ak$a;-><init>()V

    throw v0

    .line 231
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/ads/ak;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    if-nez v0, :cond_2f

    .line 233
    new-instance v0, Lcom/google/ads/ak$a;

    invoke-direct {v0}, Lcom/google/ads/ak$a;-><init>()V

    throw v0
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_21} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_21} :catch_28

    .line 237
    :catch_21
    move-exception v0

    .line 238
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 239
    :catch_28
    move-exception v0

    .line 240
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 236
    :cond_2f
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 282
    sget-object v0, Lcom/google/ads/ak;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    .line 283
    new-instance v0, Lcom/google/ads/ak$a;

    invoke-direct {v0}, Lcom/google/ads/ak$a;-><init>()V

    throw v0

    .line 287
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/ads/ak;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 289
    if-nez v0, :cond_28

    .line 290
    new-instance v0, Lcom/google/ads/ak$a;

    invoke-direct {v0}, Lcom/google/ads/ak$a;-><init>()V

    throw v0
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_21} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_21} :catch_32

    .line 296
    :catch_21
    move-exception v0

    .line 297
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 295
    :cond_28
    :try_start_28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/ap;->a([BZ)Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_30} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_30} :catch_32

    move-result-object v0

    return-object v0

    .line 298
    :catch_32
    move-exception v0

    .line 299
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static f(Landroid/content/Context;)V
    .registers 11

    .prologue
    .line 329
    :try_start_0
    invoke-static {}, Lcom/google/ads/an;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/am;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 332
    invoke-static {}, Lcom/google/ads/an;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/ads/am;->a([BLjava/lang/String;)[B

    move-result-object v2

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 336
    if-nez v0, :cond_2c

    .line 341
    const-string v0, "dex"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 342
    if-nez v0, :cond_2c

    .line 343
    new-instance v0, Lcom/google/ads/ak$a;

    invoke-direct {v0}, Lcom/google/ads/ak$a;-><init>()V

    throw v0
    :try_end_25
    .catch Lcom/google/ads/ao; {:try_start_0 .. :try_end_25} :catch_25
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_25} :catch_110
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_117
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_25} :catch_11e
    .catch Lcom/google/ads/am$a; {:try_start_0 .. :try_end_25} :catch_125
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_25} :catch_12c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_25} :catch_133

    .line 389
    :catch_25
    move-exception v0

    .line 390
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 348
    :cond_2c
    :try_start_2c
    const-string v3, "ads"

    const-string v4, ".jar"

    invoke-static {v3, v4, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 349
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 350
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 351
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 354
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 359
    invoke-static {}, Lcom/google/ads/an;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/ads/ak;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 361
    invoke-static {}, Lcom/google/ads/an;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/ads/ak;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 363
    invoke-static {}, Lcom/google/ads/an;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/ads/ak;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 365
    invoke-static {}, Lcom/google/ads/an;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/google/ads/ak;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 367
    invoke-static {}, Lcom/google/ads/an;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/google/ads/ak;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 371
    invoke-static {}, Lcom/google/ads/an;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/google/ads/ak;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/google/ads/ak;->d:Ljava/lang/reflect/Method;

    .line 373
    invoke-static {}, Lcom/google/ads/an;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/ads/ak;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/google/ads/ak;->e:Ljava/lang/reflect/Method;

    .line 375
    invoke-static {}, Lcom/google/ads/an;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/ads/ak;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v8

    invoke-virtual {v6, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/google/ads/ak;->f:Ljava/lang/reflect/Method;

    .line 377
    invoke-static {}, Lcom/google/ads/an;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/ads/ak;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v8, Landroid/view/MotionEvent;

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v5, v6

    invoke-virtual {v7, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/google/ads/ak;->g:Ljava/lang/reflect/Method;

    .line 380
    invoke-static {}, Lcom/google/ads/an;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/ads/ak;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/ak;->h:Ljava/lang/reflect/Method;

    .line 385
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 387
    new-instance v2, Ljava/io/File;

    const-string v3, ".jar"

    const-string v4, ".dex"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_10f
    .catch Lcom/google/ads/ao; {:try_start_2c .. :try_end_10f} :catch_25
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_10f} :catch_110
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_10f} :catch_117
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_10f} :catch_11e
    .catch Lcom/google/ads/am$a; {:try_start_2c .. :try_end_10f} :catch_125
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2c .. :try_end_10f} :catch_12c
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_10f} :catch_133

    .line 408
    return-void

    .line 391
    :catch_110
    move-exception v0

    .line 392
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 393
    :catch_117
    move-exception v0

    .line 394
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 395
    :catch_11e
    move-exception v0

    .line 396
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 397
    :catch_125
    move-exception v0

    .line 398
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 399
    :catch_12c
    move-exception v0

    .line 400
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 401
    :catch_133
    move-exception v0

    .line 406
    new-instance v1, Lcom/google/ads/ak$a;

    invoke-direct {v1, v0}, Lcom/google/ads/ak$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected b(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 122
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/ads/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ak;->a(ILjava/lang/String;)V
    :try_end_8
    .catch Lcom/google/ads/ak$a; {:try_start_1 .. :try_end_8} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_27

    .line 128
    :goto_8
    const/4 v0, 0x2

    :try_start_9
    invoke-static {}, Lcom/google/ads/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ak;->a(ILjava/lang/String;)V
    :try_end_10
    .catch Lcom/google/ads/ak$a; {:try_start_9 .. :try_end_10} :catch_2d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_27

    .line 134
    :goto_10
    const/16 v0, 0x19

    :try_start_12
    invoke-static {}, Lcom/google/ads/ak;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/ads/ak;->a(IJ)V
    :try_end_1d
    .catch Lcom/google/ads/ak$a; {:try_start_12 .. :try_end_1d} :catch_2b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_27

    .line 140
    :goto_1d
    const/16 v0, 0x18

    :try_start_1f
    invoke-static {p1}, Lcom/google/ads/ak;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ak;->a(ILjava/lang/String;)V
    :try_end_26
    .catch Lcom/google/ads/ak$a; {:try_start_1f .. :try_end_26} :catch_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_27

    .line 147
    :goto_26
    return-void

    .line 144
    :catch_27
    move-exception v0

    goto :goto_26

    .line 141
    :catch_29
    move-exception v0

    goto :goto_26

    .line 135
    :catch_2b
    move-exception v0

    goto :goto_1d

    .line 129
    :catch_2d
    move-exception v0

    goto :goto_10

    .line 123
    :catch_2f
    move-exception v0

    goto :goto_8
.end method

.method protected c(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 153
    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Lcom/google/ads/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ak;->a(ILjava/lang/String;)V
    :try_end_8
    .catch Lcom/google/ads/ak$a; {:try_start_1 .. :try_end_8} :catch_87
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_7d

    .line 159
    :goto_8
    const/4 v0, 0x1

    :try_start_9
    invoke-static {}, Lcom/google/ads/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ak;->a(ILjava/lang/String;)V
    :try_end_10
    .catch Lcom/google/ads/ak$a; {:try_start_9 .. :try_end_10} :catch_85
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_7d

    .line 165
    :goto_10
    :try_start_10
    invoke-static {}, Lcom/google/ads/ak;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 166
    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/ads/ak;->a(IJ)V

    .line 168
    sget-wide v2, Lcom/google/ads/ak;->j:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_34

    .line 169
    const/16 v2, 0x11

    sget-wide v4, Lcom/google/ads/ak;->j:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/ads/ak;->a(IJ)V

    .line 170
    const/16 v0, 0x17

    sget-wide v2, Lcom/google/ads/ak;->j:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/ads/ak;->a(IJ)V
    :try_end_34
    .catch Lcom/google/ads/ak$a; {:try_start_10 .. :try_end_34} :catch_83
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_34} :catch_7d

    .line 177
    :cond_34
    :goto_34
    :try_start_34
    iget-object v0, p0, Lcom/google/ads/ak;->a:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/ads/ak;->b:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/google/ads/ak;->a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v1

    .line 178
    const/16 v2, 0xe

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/ads/ak;->a(IJ)V

    .line 179
    const/16 v2, 0xf

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/ads/ak;->a(IJ)V

    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_73

    .line 182
    const/16 v2, 0x10

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/ads/ak;->a(IJ)V
    :try_end_73
    .catch Lcom/google/ads/ak$a; {:try_start_34 .. :try_end_73} :catch_81
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_73} :catch_7d

    .line 189
    :cond_73
    :goto_73
    const/16 v0, 0x1b

    :try_start_75
    invoke-static {p1}, Lcom/google/ads/ak;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/ak;->a(ILjava/lang/String;)V
    :try_end_7c
    .catch Lcom/google/ads/ak$a; {:try_start_75 .. :try_end_7c} :catch_7f
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7c} :catch_7d

    .line 196
    :goto_7c
    return-void

    .line 193
    :catch_7d
    move-exception v0

    goto :goto_7c

    .line 190
    :catch_7f
    move-exception v0

    goto :goto_7c

    .line 184
    :catch_81
    move-exception v0

    goto :goto_73

    .line 172
    :catch_83
    move-exception v0

    goto :goto_34

    .line 160
    :catch_85
    move-exception v0

    goto :goto_10

    .line 154
    :catch_87
    move-exception v0

    goto :goto_8
.end method
