.class Lfr/testudo/spacecorsair/mod/ModArt$1;
.super Ljava/lang/Object;
.source "ModArt.java"

# interfaces
.implements Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/testudo/spacecorsair/mod/ModArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;
    .registers 13

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 449
    # getter for: Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->access$000()Landroid/content/Context;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move-object v0, v8

    .line 467
    :cond_b
    :goto_b
    return-object v0

    .line 453
    :cond_c
    :try_start_c
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_62
    .catchall {:try_start_c .. :try_end_f} :catchall_6b

    move-result-object v9

    .line 454
    :try_start_10
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 455
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 456
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1c} :catch_7b
    .catchall {:try_start_10 .. :try_end_1c} :catchall_79

    .line 457
    :try_start_1c
    const-class v1, Landroid/graphics/BitmapFactory$Options;

    const-string v2, "inPremultiplied"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_28} :catch_7e
    .catchall {:try_start_1c .. :try_end_28} :catchall_79

    .line 458
    :goto_28
    const/4 v1, 0x0

    :try_start_29
    invoke-static {v9, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_7b
    .catchall {:try_start_29 .. :try_end_2c} :catchall_79

    move-result-object v0

    .line 459
    if-nez v0, :cond_36

    .line 469
    if-eqz v9, :cond_34

    :try_start_31
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_73

    :cond_34
    :goto_34
    move-object v0, v8

    .line 459
    goto :goto_b

    .line 460
    :cond_36
    :try_start_36
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 461
    mul-int v1, v3, v7

    new-array v1, v1, [I

    .line 462
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 463
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_60

    const/4 v2, 0x1

    .line 464
    :goto_50
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 465
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    invoke-direct {v0, v3, v7, v1, v2}, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;-><init>(II[IZ)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_58} :catch_7b
    .catchall {:try_start_36 .. :try_end_58} :catchall_79

    .line 469
    if-eqz v9, :cond_b

    :try_start_5a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_b

    :catch_5e
    move-exception v1

    goto :goto_b

    :cond_60
    move v2, v10

    .line 463
    goto :goto_50

    .line 466
    :catch_62
    move-exception v0

    move-object v0, v8

    .line 469
    :goto_64
    if-eqz v0, :cond_69

    :try_start_66
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_75

    :cond_69
    :goto_69
    move-object v0, v8

    .line 467
    goto :goto_b

    .line 469
    :catchall_6b
    move-exception v0

    move-object v9, v8

    :goto_6d
    if-eqz v9, :cond_72

    :try_start_6f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_77

    .line 470
    :cond_72
    :goto_72
    throw v0

    .line 469
    :catch_73
    move-exception v0

    goto :goto_34

    :catch_75
    move-exception v0

    goto :goto_69

    :catch_77
    move-exception v1

    goto :goto_72

    :catchall_79
    move-exception v0

    goto :goto_6d

    .line 466
    :catch_7b
    move-exception v0

    move-object v0, v9

    goto :goto_64

    .line 457
    :catch_7e
    move-exception v1

    goto :goto_28
.end method
