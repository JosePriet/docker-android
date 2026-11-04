.class public Lfr/testudo/spacecorsair/mod/ModArt;
.super Ljava/lang/Object;
.source "ModArt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModArt$Lazy;,
        Lfr/testudo/spacecorsair/mod/ModArt$Art;
    }
.end annotation


# static fields
.field static final BANDS:I = 0x20

.field private static final BLANK:Lfr/testudo/spacecorsair/display/Texture;

.field private static final EXTENT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/display/Texture;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final FAMILY_NAMES:[[Ljava/lang/String;

.field static final FAMILY_TURRETS:[Ljava/lang/String;

.field static final FB_GUARDIAN:I = 0x2

.field static final FB_NONE:I = 0x0

.field static final FB_SHIP:I = 0x1

.field private static final GEN_LOADER:Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;

.field static final GEN_TAG:Ljava/lang/String; = "g43"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_READY:I = 0x3

.field private static final ORIG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ORIGTEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/display/Texture;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/display/Texture;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final RECENT:I = 0x384

.field private static appCtx:Landroid/content/Context;

.field private static assetNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blankName:I

.field private static final crop:[I

.field private static decoder:Ljava/lang/Thread;

.field public static devActive:Z

.field private static devMissile:Lfr/testudo/spacecorsair/display/Drawable;

.field private static final exists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static fQueue:Ljava/lang/reflect/Field;

.field private static fSize:Ljava/lang/reflect/Field;

.field private static final familyDrawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lfr/testudo/spacecorsair/display/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static frame:I

.field private static gen:I

.field public static heavyTurret:Lfr/testudo/spacecorsair/display/Drawable;

.field private static hullImages:[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

.field private static final ids:[I

.field private static inLoad:Z

.field private static memoKey:I

.field private static memoTurret:Lfr/testudo/spacecorsair/display/Drawable;

.field private static final queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModArt$Lazy;",
            ">;"
        }
    .end annotation
.end field

.field private static final ready:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModArt$Lazy;",
            ">;"
        }
    .end annotation
.end field

.field private static scanOff:Z

.field private static final textures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfr/testudo/spacecorsair/display/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final turrets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfr/testudo/spacecorsair/display/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    .line 88
    sput v8, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->exists:Ljava/util/Map;

    .line 93
    new-array v0, v4, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    .line 216
    new-instance v0, Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/Texture;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->BLANK:Lfr/testudo/spacecorsair/display/Texture;

    .line 446
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModArt$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModArt$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->GEN_LOADER:Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;

    .line 590
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    .line 680
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->turrets:Ljava/util/Map;

    .line 698
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "railgun"

    aput-object v2, v0, v1

    const-string v2, "autocannon"

    aput-object v2, v0, v4

    const-string v2, "artillery"

    aput-object v2, v0, v5

    const-string v2, "blaster"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "disintegrator"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "arc"

    aput-object v3, v0, v2

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    .line 699
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    array-length v0, v0

    filled-new-array {v0, v7}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_NAMES:[[Ljava/lang/String;

    .line 701
    new-array v3, v7, [Ljava/lang/String;

    const-string v0, "s"

    aput-object v0, v3, v1

    const-string v0, "m"

    aput-object v0, v3, v4

    const-string v0, "l"

    aput-object v0, v3, v5

    move v0, v1

    .line 702
    :goto_87
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_be

    move v2, v1

    .line 703
    :goto_8d
    if-ge v2, v7, :cond_bb

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_NAMES:[[Ljava/lang/String;

    aget-object v4, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "turret_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 702
    :cond_bb
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 707
    :cond_be
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->familyDrawables:Ljava/util/Map;

    .line 708
    sput v8, Lfr/testudo/spacecorsair/mod/ModArt;->memoKey:I

    .line 745
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ORIGTEX:Ljava/util/Map;

    .line 848
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ORIG:Ljava/util/Map;

    .line 914
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->EXTENT:Ljava/util/Map;

    .line 944
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->PROFILE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 43
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->decodeLoop()V

    return-void
.end method

.method static artOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 749
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 751
    :goto_3
    return-object v0

    .line 750
    :cond_4
    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v0, :cond_d

    check-cast p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->asset:Ljava/lang/String;

    goto :goto_3

    .line 751
    :cond_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ORIGTEX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method

.method private static assetExists(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    if-nez v0, :cond_19

    if-eqz p0, :cond_19

    const-string v0, "pol_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "wreck_cap_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_16
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->listAssets()V

    .line 266
    :cond_19
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    if-eqz v0, :cond_24

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 280
    :goto_23
    return v0

    .line 267
    :cond_24
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->exists:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 268
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_23

    .line 270
    :cond_33
    const/4 v1, 0x0

    .line 272
    :try_start_34
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_39} :catch_4a
    .catchall {:try_start_34 .. :try_end_39} :catchall_54

    move-result-object v1

    .line 273
    const/4 v0, 0x1

    .line 277
    if-eqz v1, :cond_40

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_5b

    .line 279
    :cond_40
    :goto_40
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->exists:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 274
    :catch_4a
    move-exception v0

    .line 275
    const/4 v0, 0x0

    .line 277
    if-eqz v1, :cond_40

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_40

    :catch_52
    move-exception v1

    goto :goto_40

    :catchall_54
    move-exception v0

    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5d

    .line 278
    :cond_5a
    :goto_5a
    throw v0

    .line 277
    :catch_5b
    move-exception v1

    goto :goto_40

    :catch_5d
    move-exception v1

    goto :goto_5a
.end method

.method static blank()Lfr/testudo/spacecorsair/display/Texture;
    .registers 2

    .prologue
    .line 218
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->BLANK:Lfr/testudo/spacecorsair/display/Texture;

    sget v1, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v1, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    .line 219
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->BLANK:Lfr/testudo/spacecorsair/display/Texture;

    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, v1, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 220
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->BLANK:Lfr/testudo/spacecorsair/display/Texture;

    return-object v0

    .line 219
    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 791
    .line 793
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 794
    if-lez p2, :cond_32

    .line 795
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_48
    .catchall {:try_start_2 .. :try_end_c} :catchall_52

    move-result-object v1

    .line 796
    const/4 v4, 0x1

    :try_start_e
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 797
    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 798
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_17} :catch_63
    .catchall {:try_start_e .. :try_end_17} :catchall_5f

    .line 800
    :try_start_17
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v2, v3

    .line 801
    :goto_20
    mul-int/lit8 v1, v2, 0x2

    div-int v1, v4, v1

    if-lt v1, p2, :cond_2a

    mul-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_20

    .line 802
    :cond_2a
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 803
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object v2, v1

    .line 805
    :cond_32
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 806
    const/4 v1, 0x0

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 807
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_3c} :catch_48
    .catchall {:try_start_17 .. :try_end_3c} :catchall_52

    move-result-object v1

    .line 808
    const/4 v3, 0x0

    :try_start_3e
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_63
    .catchall {:try_start_3e .. :try_end_41} :catchall_5f

    move-result-object v0

    .line 812
    if-eqz v1, :cond_47

    :try_start_44
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_5b

    .line 810
    :cond_47
    :goto_47
    return-object v0

    .line 809
    :catch_48
    move-exception v1

    move-object v1, v0

    .line 812
    :goto_4a
    if-eqz v1, :cond_47

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_47

    :catch_50
    move-exception v1

    goto :goto_47

    :catchall_52
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_55
    if-eqz v3, :cond_5a

    :try_start_57
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5d

    .line 813
    :cond_5a
    :goto_5a
    throw v2

    .line 812
    :catch_5b
    move-exception v1

    goto :goto_47

    :catch_5d
    move-exception v0

    goto :goto_5a

    :catchall_5f
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_55

    .line 809
    :catch_63
    move-exception v2

    goto :goto_4a
.end method

.method private static decodeFull(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 406
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    .line 407
    if-nez v0, :cond_7

    move-object v0, v2

    .line 426
    :cond_6
    :goto_6
    return-object v0

    .line 408
    :cond_7
    if-eqz p0, :cond_24

    const-string v1, "pol_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "wreck_cap_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_19
    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModArt;->shipsFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->generated(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6

    .line 411
    :cond_24
    :try_start_24
    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_54
    .catchall {:try_start_24 .. :try_end_27} :catchall_5d

    move-result-object v3

    .line 412
    :try_start_28
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 413
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 414
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 415
    const/4 v1, 0x0

    invoke-static {v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 417
    if-eqz v1, :cond_6e

    const-string v0, "mfx_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 418
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_6e

    .line 420
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_4c} :catch_6b
    .catchall {:try_start_28 .. :try_end_4c} :catchall_69

    .line 428
    :goto_4c
    if-eqz v3, :cond_6

    :try_start_4e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_6

    :catch_52
    move-exception v1

    goto :goto_6

    .line 425
    :catch_54
    move-exception v0

    move-object v0, v2

    .line 428
    :goto_56
    if-eqz v0, :cond_5b

    :try_start_58
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_65

    :cond_5b
    :goto_5b
    move-object v0, v2

    .line 426
    goto :goto_6

    .line 428
    :catchall_5d
    move-exception v0

    move-object v3, v2

    :goto_5f
    if-eqz v3, :cond_64

    :try_start_61
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_67

    .line 429
    :cond_64
    :goto_64
    throw v0

    .line 428
    :catch_65
    move-exception v0

    goto :goto_5b

    :catch_67
    move-exception v1

    goto :goto_64

    :catchall_69
    move-exception v0

    goto :goto_5f

    .line 425
    :catch_6b
    move-exception v0

    move-object v0, v3

    goto :goto_56

    :cond_6e
    move-object v0, v1

    goto :goto_4c
.end method

.method private static decodeLoop()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 631
    :goto_3
    :try_start_3
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_17

    .line 632
    :goto_6
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 634
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    :try_start_16
    throw v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_17} :catch_17

    .line 655
    :catch_17
    move-exception v0

    .line 656
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    :try_start_1b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->queued:Z

    goto :goto_21

    .line 660
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_31

    throw v0

    .line 633
    :cond_34
    :try_start_34
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 634
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_14

    .line 638
    :try_start_3e
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v4
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_7c

    :try_start_41
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v6, :cond_77

    const/4 v1, 0x1

    :goto_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_79

    .line 639
    :try_start_4b
    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v4, :cond_91

    if-eqz v1, :cond_91

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->asset:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->decodeFull(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_56} :catch_7c

    move-result-object v1

    .line 643
    :goto_57
    :try_start_57
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_17

    .line 644
    const/4 v5, 0x0

    :try_start_5b
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->queued:Z

    .line 645
    if-eqz v1, :cond_72

    .line 646
    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v5, :cond_6f

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->pending:Landroid/graphics/Bitmap;

    if-nez v5, :cond_6f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_7f

    .line 647
    :cond_6f
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 653
    :cond_72
    :goto_72
    monitor-exit v4

    goto :goto_3

    :catchall_74
    move-exception v0

    monitor-exit v4
    :try_end_76
    .catchall {:try_start_5b .. :try_end_76} :catchall_74

    :try_start_76
    throw v0
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_77} :catch_17

    :cond_77
    move v1, v3

    .line 638
    goto :goto_4a

    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v1
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7c} :catch_7c

    .line 640
    :catch_7c
    move-exception v1

    move-object v1, v2

    .line 641
    goto :goto_57

    .line 649
    :cond_7f
    :try_start_7f
    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->pending:Landroid/graphics/Bitmap;

    .line 650
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_74

    goto :goto_72

    .line 658
    :cond_87
    :try_start_87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 659
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->decoder:Ljava/lang/Thread;

    .line 660
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_31

    .line 662
    return-void

    :cond_91
    move-object v1, v2

    goto :goto_57
.end method

.method static extent(Lfr/testudo/spacecorsair/display/Texture;)F
    .registers 2

    .prologue
    .line 959
    if-nez p0, :cond_8

    const/4 v0, 0x0

    .line 960
    :goto_3
    if-nez v0, :cond_11

    const/high16 v0, -0x40800000    # -1.0f

    :goto_7
    return v0

    .line 959
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->EXTENT:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_3

    .line 960
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_7
.end method

.method private static fallbackName(I)I
    .registers 3

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 341
    :cond_8
    :goto_8
    if-eqz v0, :cond_26

    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-nez v1, :cond_26

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    if-eqz v1, :cond_26

    iget v1, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    if-lez v1, :cond_26

    iget v0, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    .line 345
    :goto_18
    return v0

    .line 339
    :cond_19
    const/4 v1, 0x2

    if-ne p0, v1, :cond_8

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v1, :cond_8

    .line 340
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_8

    .line 342
    :catch_25
    move-exception v0

    .line 345
    :cond_26
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    goto :goto_18
.end method

.method public static familyTurret(IIF)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 723
    if-ltz p0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_9

    .line 737
    :cond_8
    :goto_8
    return-object v1

    .line 724
    :cond_9
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModArt;->sizeIndex(I)I

    move-result v2

    .line 725
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_NAMES:[[Ljava/lang/String;

    aget-object v3, v3, p0

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 726
    if-eqz v0, :cond_8

    .line 727
    mul-int/lit8 v1, p0, 0x3

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x14

    float-to-int v2, p2

    const v3, 0xfffff

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 728
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->memoTurret:Lfr/testudo/spacecorsair/display/Drawable;

    .line 729
    sget v3, Lfr/testudo/spacecorsair/mod/ModArt;->memoKey:I

    if-ne v2, v3, :cond_34

    if-eqz v1, :cond_34

    iget-object v3, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eq v3, v0, :cond_8

    .line 730
    :cond_34
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->familyDrawables:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/display/Drawable;

    .line 731
    if-eqz v1, :cond_46

    iget-object v3, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eq v3, v0, :cond_5a

    .line 732
    :cond_46
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3, p2, p2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    .line 733
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->familyDrawables:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_5a
    sput v2, Lfr/testudo/spacecorsair/mod/ModArt;->memoKey:I

    .line 736
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->memoTurret:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_8
.end method

.method static familyTurretName(II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 718
    if-ltz p0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    .line 719
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_NAMES:[[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModArt;->sizeIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_8
.end method

.method public static frameEnd(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    .prologue
    .line 532
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->frame:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModArt;->frame:I

    .line 534
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 535
    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v1, :cond_11

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    .line 536
    :cond_11
    const/4 v0, 0x0

    .line 537
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_15} :catch_3a

    .line 538
    :try_start_15
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 539
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_37

    .line 540
    if-eqz v0, :cond_36

    .line 541
    :try_start_29
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-eqz v1, :cond_3c

    .line 542
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->takePending(Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_36} :catch_3a

    .line 554
    :cond_36
    :goto_36
    return-void

    .line 539
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v0

    .line 551
    :catch_3a
    move-exception v0

    goto :goto_36

    .line 544
    :cond_3c
    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->failedGen:I

    sget v2, Lfr/testudo/spacecorsair/mod/ModArt;->gen:I

    if-eq v1, v2, :cond_46

    .line 545
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->upload(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    goto :goto_36

    .line 547
    :cond_46
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->takePending(Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_4f} :catch_3a

    goto :goto_36
.end method

.method public static gameTex(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Lfr/testudo/spacecorsair/display/Texture;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/16 v4, 0x80

    .line 876
    if-eqz p2, :cond_8

    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 898
    :cond_8
    :goto_8
    return-object p1

    .line 877
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    iget v1, p2, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->origAsset(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_10} :catch_9b

    move-result-object v1

    .line 878
    if-nez v1, :cond_59

    .line 880
    :try_start_13
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_glow_l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->assetExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_glow_e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->assetExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 882
    :cond_51
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->ORIGTEX:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_56} :catch_57

    goto :goto_8

    .line 883
    :catch_57
    move-exception v0

    goto :goto_8

    .line 886
    :cond_59
    :try_start_59
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->decodeFull(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 887
    if-eqz v0, :cond_8

    .line 888
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 889
    if-lt v2, v4, :cond_89

    if-lt v3, v4, :cond_89

    add-int/lit8 v4, v2, -0x1

    and-int/2addr v2, v4

    if-nez v2, :cond_89

    add-int/lit8 v2, v3, -0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_89

    .line 890
    const/16 v2, 0xde1

    const v3, 0x8191

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 891
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x461c0c00    # 9987.0f

    invoke-interface {p0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 893
    :cond_89
    if-eqz p1, :cond_90

    if-eq p1, v0, :cond_90

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 894
    :cond_90
    invoke-static {p2, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->measure(Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)V

    .line 895
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ORIGTEX:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_98} :catch_9b

    move-object p1, v0

    .line 896
    goto/16 :goto_8

    .line 897
    :catch_9b
    move-exception v0

    goto/16 :goto_8
.end method

.method private static generated(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 478
    .line 480
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    .line 481
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "artgen"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 482
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "g43"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".png"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 484
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 485
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 486
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 487
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_4f

    .line 514
    :goto_4e
    return-object v0

    .line 490
    :cond_4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 491
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->GEN_LOADER:Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->make(Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v0

    .line 492
    if-nez v0, :cond_5d

    move-object v0, v1

    goto :goto_4e

    .line 493
    :cond_5d
    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->w:I

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->h:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6c} :catch_d8

    move-result-wide v6

    .line 497
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 498
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 499
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_8d} :catch_f8
    .catchall {:try_start_6d .. :try_end_8d} :catchall_102

    .line 500
    :try_start_8d
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    if-eqz v9, :cond_9e

    .line 501
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_9a} :catch_110
    .catchall {:try_start_8d .. :try_end_9a} :catchall_10e

    .line 503
    :try_start_9a
    invoke-virtual {v8, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_f8
    .catchall {:try_start_9a .. :try_end_9d} :catchall_102

    move-object v2, v1

    .line 508
    :cond_9e
    if-eqz v2, :cond_a3

    :try_start_a0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_10a
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_d8

    .line 510
    :cond_a3
    :goto_a3
    :try_start_a3
    const-string v2, "artgen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms (+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms cache)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_d6} :catch_d8

    goto/16 :goto_4e

    .line 512
    :catch_d8
    move-exception v0

    .line 513
    const-string v2, "artgen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 514
    goto/16 :goto_4e

    .line 505
    :catch_f8
    move-exception v2

    move-object v2, v1

    .line 508
    :goto_fa
    if-eqz v2, :cond_a3

    :try_start_fc
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_ff} :catch_100
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_ff} :catch_d8

    goto :goto_a3

    :catch_100
    move-exception v2

    goto :goto_a3

    :catchall_102
    move-exception v0

    move-object v2, v1

    :goto_104
    if-eqz v2, :cond_109

    :try_start_106
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_10c
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_109} :catch_d8

    .line 509
    :cond_109
    :goto_109
    :try_start_109
    throw v0
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_10a} :catch_d8

    .line 508
    :catch_10a
    move-exception v2

    goto :goto_a3

    :catch_10c
    move-exception v2

    goto :goto_109

    :catchall_10e
    move-exception v0

    goto :goto_104

    .line 505
    :catch_110
    move-exception v3

    goto :goto_fa
.end method

.method public static hasArt(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 259
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 261
    :cond_5
    :goto_5
    return v0

    .line 260
    :cond_6
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->listAssets()V

    .line 261
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    if-eqz v1, :cond_5

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->assetExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static hasPending(Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)Z
    .registers 3

    .prologue
    .line 674
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->pending:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 676
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public static isModTurret(Lfr/testudo/spacecorsair/display/Drawable;)Z
    .registers 2

    .prologue
    .line 741
    if-eqz p0, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eq p0, v0, :cond_10

    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    if-eqz v0, :cond_12

    check-cast p0, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Art;->turret:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 224
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 225
    instance-of v2, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v2, :cond_10

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 232
    :goto_f
    return-object v0

    .line 226
    :cond_10
    if-eqz v0, :cond_14

    move-object v0, v1

    goto :goto_f

    .line 227
    :cond_14
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->assetExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    move-object v0, v1

    goto :goto_f

    .line 228
    :cond_1c
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;-><init>(Ljava/lang/String;I)V

    .line 229
    sget v1, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I

    .line 230
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->loaded:Z

    .line 231
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method static lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    .registers 2

    .prologue
    .line 756
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 759
    :cond_3
    :goto_3
    return-object v0

    .line 757
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 758
    if-nez v0, :cond_3

    .line 759
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    move-result-object v0

    goto :goto_3
.end method

.method private static listAssets()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 236
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    if-nez v1, :cond_9

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 250
    :cond_9
    :goto_9
    return-void

    .line 238
    :cond_a
    :try_start_a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "modart"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_9

    array-length v1, v2

    if-eqz v1, :cond_9

    .line 240
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 241
    array-length v4, v2

    move v1, v0

    :goto_22
    if-ge v1, v4, :cond_3a

    aget-object v0, v2, v1

    .line 242
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 243
    if-lez v5, :cond_33

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_33
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_36} :catch_44

    .line 241
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 245
    :cond_3a
    :try_start_3a
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->virtualNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_41} :catch_49

    .line 246
    :goto_41
    :try_start_41
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_43} :catch_44

    goto :goto_9

    .line 247
    :catch_44
    move-exception v0

    .line 248
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    goto :goto_9

    .line 245
    :catch_49
    move-exception v0

    goto :goto_41
.end method

.method static listed()Z
    .registers 1

    .prologue
    .line 254
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static load(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModArt;->inLoad:Z

    .line 100
    :try_start_4
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->loadAll(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_d
    .catchall {:try_start_4 .. :try_end_7} :catchall_11

    .line 104
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModArt;->inLoad:Z

    .line 106
    :goto_9
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModSound;->init(Landroid/content/Context;)V

    .line 107
    return-void

    .line 101
    :catch_d
    move-exception v0

    .line 104
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModArt;->inLoad:Z

    goto :goto_9

    :catchall_11
    move-exception v0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModArt;->inLoad:Z

    .line 105
    throw v0
.end method

.method private static loadAll(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x2

    const/high16 v10, 0x42800000    # 64.0f

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 112
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->gen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModArt;->gen:I

    .line 113
    if-eqz p1, :cond_16

    .line 115
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_48

    :goto_14
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_16} :catch_4a

    .line 121
    :cond_16
    :goto_16
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->listAssets()V

    .line 122
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->makeBlank(Ljavax/microedition/khronos/opengles/GL10;)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    .line 124
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 125
    instance-of v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v3, :cond_29

    .line 126
    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 127
    iget-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->wasResident:Z

    .line 128
    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    .line 129
    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->loaded:Z

    .line 130
    sget v3, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I

    goto :goto_29

    :cond_48
    move-object v0, p1

    .line 116
    goto :goto_14

    .line 117
    :catch_4a
    move-exception v0

    .line 118
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    goto :goto_16

    .line 134
    :cond_4e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    .line 135
    if-eqz v2, :cond_a8

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->hullImages:[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-eqz v0, :cond_5c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->hullImages:[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    array-length v0, v0

    array-length v3, v2

    if-eq v0, v3, :cond_61

    :cond_5c
    array-length v0, v2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->hullImages:[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    :cond_61
    move v0, v1

    .line 137
    :goto_62
    array-length v3, v2

    if-ge v0, v3, :cond_a8

    .line 138
    aget-object v3, v2, v0

    .line 139
    if-eqz v3, :cond_6d

    iget-object v4, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    if-nez v4, :cond_70

    .line 137
    :cond_6d
    :goto_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 140
    :cond_70
    iget-object v4, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v4, v11}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    move-result-object v4

    .line 141
    if-eqz v4, :cond_6d

    .line 143
    :try_start_78
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModArt;->hullImages:[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    aget-object v5, v5, v0

    if-nez v5, :cond_9f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModArt;->hullImages:[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MOD_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v3

    aput-object v3, v5, v0

    .line 144
    :cond_9f
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->hullImages:[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    aget-object v3, v3, v0

    iput-object v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_a5} :catch_a6

    goto :goto_6d

    .line 145
    :catch_a6
    move-exception v3

    goto :goto_6d

    .line 150
    :cond_a8
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_ac
    if-ge v0, v4, :cond_c9

    aget-object v5, v3, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secret_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .line 152
    :cond_c9
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v4, v3

    move v0, v1

    :goto_cd
    if-ge v0, v4, :cond_104

    aget-object v5, v3, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "emblem_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "map_territory_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    .line 153
    :cond_104
    const-string v0, "map_border"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 154
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v4, v3

    move v0, v1

    :goto_10d
    if-ge v0, v4, :cond_144

    aget-object v5, v3, v0

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cap_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hw_turret_cap_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_10d

    .line 159
    :cond_144
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "turret_heavy"

    aput-object v0, v3, v1

    const-string v0, "turret_laser"

    aput-object v0, v3, v11

    const-string v0, "turret_cannon"

    aput-object v0, v3, v8

    const-string v0, "turret_dev"

    aput-object v0, v3, v12

    array-length v4, v3

    move v0, v1

    :goto_159
    if-ge v0, v4, :cond_17d

    aget-object v5, v3, v0

    .line 160
    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    move-result-object v6

    .line 161
    if-eqz v6, :cond_17a

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModArt;->turrets:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17a

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModArt;->turrets:Ljava/util/Map;

    new-instance v8, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v9, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v9, v10, v10}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v8, v9, v6, v11}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_17a
    add-int/lit8 v0, v0, 0x1

    goto :goto_159

    .line 163
    :cond_17d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->turrets:Ljava/util/Map;

    const-string v3, "turret_heavy"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Drawable;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->heavyTurret:Lfr/testudo/spacecorsair/display/Drawable;

    .line 165
    if-eqz v2, :cond_1f8

    .line 166
    array-length v3, v2

    move v0, v1

    :goto_18d
    if-ge v0, v3, :cond_1f8

    aget-object v4, v2, v0

    .line 167
    if-eqz v4, :cond_197

    iget-object v5, v4, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    if-nez v5, :cond_19a

    .line 166
    :cond_197
    :goto_197
    add-int/lit8 v0, v0, 0x1

    goto :goto_18d

    .line 168
    :cond_19a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hw_turret_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v5, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    move-result-object v6

    .line 170
    if-eqz v6, :cond_1df

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModArt;->turrets:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1df

    .line 171
    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v8, 0x42600000    # 56.0f

    iget v9, v4, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v9, v9

    const v10, 0x3e23d70a    # 0.16f

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 172
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModArt;->turrets:Ljava/util/Map;

    new-instance v9, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v10, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v10, v7, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v9, v10, v6, v11}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_1df
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hw_missile_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    goto :goto_197

    :cond_1f8
    move v0, v1

    .line 178
    :goto_1f9
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_210

    move v2, v1

    .line 179
    :goto_1ff
    if-ge v2, v12, :cond_20d

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_NAMES:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-static {v3, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1ff

    .line 178
    :cond_20d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f9

    .line 181
    :cond_210
    const-string v0, "missile_dev"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_225

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->devMissile:Lfr/testudo/spacecorsair/display/Drawable;

    if-nez v2, :cond_225

    .line 183
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    sget-object v3, Lfr/testudo/spacecorsair/business/projectiles/Missile;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, v0, v1}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->devMissile:Lfr/testudo/spacecorsair/display/Drawable;

    .line 185
    :cond_225
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFleet;->ARTS:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_229
    if-ge v0, v3, :cond_233

    aget-object v4, v2, v0

    invoke-static {v4, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    add-int/lit8 v0, v0, 0x1

    goto :goto_229

    .line 188
    :cond_233
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->TEXTURES:[Ljava/lang/String;

    array-length v2, v0

    :goto_236
    if-ge v1, v2, :cond_240

    aget-object v3, v0, v1

    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModArt;->upload(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    add-int/lit8 v1, v1, 0x1

    goto :goto_236

    .line 192
    :cond_240
    :try_start_240
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 193
    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v1, :cond_24b

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V
    :try_end_24b
    .catch Ljava/lang/Throwable; {:try_start_240 .. :try_end_24b} :catch_2a6

    .line 198
    :cond_24b
    :goto_24b
    :try_start_24b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    .line 199
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v1, :cond_26c

    .line 200
    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 201
    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v1, :cond_26c

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V
    :try_end_26c
    .catch Ljava/lang/Throwable; {:try_start_24b .. :try_end_26c} :catch_2a4

    .line 206
    :cond_26c
    :goto_26c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_276
    :goto_276
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 207
    instance-of v2, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v2, :cond_276

    .line 208
    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 209
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v2, :cond_276

    .line 210
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->wasResident:Z

    if-eqz v2, :cond_299

    sget v2, Lfr/testudo/spacecorsair/mod/ModArt;->frame:I

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->lastUse:I

    sub-int/2addr v2, v3

    const/16 v3, 0x384

    if-lt v2, v3, :cond_29f

    :cond_299
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->hasPending(Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)Z

    move-result v2

    if-eqz v2, :cond_276

    :cond_29f
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->upload(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    goto :goto_276

    .line 212
    :cond_2a3
    return-void

    .line 203
    :catch_2a4
    move-exception v0

    goto :goto_26c

    .line 194
    :catch_2a6
    move-exception v0

    goto :goto_24b
.end method

.method private static makeBlank(Ljavax/microedition/khronos/opengles/GL10;)I
    .registers 6

    .prologue
    .line 285
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 286
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 287
    const/16 v1, 0xde1

    invoke-interface {p0, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 288
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->params(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 289
    const/4 v1, 0x1

    const/4 v2, 0x1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_2c

    move-result-object v1

    .line 291
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_20
    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 293
    :try_start_23
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    :goto_26
    return v0

    .line 293
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    throw v0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_2c

    .line 296
    :catch_2c
    move-exception v0

    .line 297
    const/4 v0, -0x1

    goto :goto_26
.end method

.method static measure(Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)V
    .registers 16

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 919
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    :try_start_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 941
    :cond_e
    :goto_e
    return-void

    .line 920
    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v0, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit16 v1, v1, 0xa0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 921
    int-to-float v0, v6

    div-float v9, v0, v2

    int-to-float v0, v7

    div-float v10, v0, v2

    .line 922
    const/16 v0, 0x40

    new-array v11, v0, [F

    move v0, v3

    .line 923
    :goto_2d
    const/16 v1, 0x20

    if-ge v0, v1, :cond_42

    mul-int/lit8 v1, v0, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v11, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v11, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_42
    move v4, v3

    move v0, v5

    .line 924
    :goto_44
    if-ge v4, v7, :cond_8f

    .line 925
    const/16 v1, 0x1f

    mul-int/lit8 v2, v4, 0x20

    div-int/2addr v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v2, v3

    .line 926
    :goto_50
    if-ge v2, v6, :cond_8b

    .line 927
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x18

    const/16 v13, 0x28

    if-le v1, v13, :cond_87

    .line 928
    int-to-float v1, v2

    sub-float/2addr v1, v9

    int-to-float v13, v4

    sub-float/2addr v13, v10

    mul-float/2addr v1, v1

    mul-float/2addr v13, v13

    add-float/2addr v1, v13

    .line 929
    cmpl-float v13, v1, v0

    if-lez v13, :cond_68

    move v0, v1

    .line 930
    :cond_68
    int-to-float v1, v2

    int-to-float v13, v6

    div-float/2addr v1, v13

    .line 931
    mul-int/lit8 v13, v12, 0x2

    aget v13, v11, v13

    cmpg-float v13, v1, v13

    if-gez v13, :cond_77

    mul-int/lit8 v13, v12, 0x2

    aput v1, v11, v13

    .line 932
    :cond_77
    mul-int/lit8 v13, v12, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v13, v11, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_87

    mul-int/lit8 v13, v12, 0x2

    add-int/lit8 v13, v13, 0x1

    aput v1, v11, v13

    .line 926
    :cond_87
    add-int v1, v2, v8

    move v2, v1

    goto :goto_50

    .line 924
    :cond_8b
    add-int v1, v4, v8

    move v4, v1

    goto :goto_44

    .line 936
    :cond_8f
    cmpl-float v1, v0, v5

    if-lez v1, :cond_ab

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->EXTENT:Ljava/util/Map;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :cond_ab
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->PROFILE:Ljava/util/Map;

    invoke-interface {v0, p0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b0} :catch_b2

    goto/16 :goto_e

    .line 938
    :catch_b2
    move-exception v0

    goto/16 :goto_e
.end method

.method public static missile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 688
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->missile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_7

    .line 691
    :goto_6
    return-object v0

    .line 690
    :cond_7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModArt;->devActive:Z

    if-eqz v0, :cond_19

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->devMissile:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_6

    .line 691
    :cond_1b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->devMissile:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_6
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 783
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".webp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_22

    move-result-object v0

    .line 785
    :goto_21
    return-object v0

    .line 784
    :catch_22
    move-exception v0

    .line 785
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_21
.end method

.method static origAsset(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 852
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 865
    :cond_5
    :goto_5
    return-object v0

    .line 853
    :cond_6
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ORIG:Ljava/util/Map;

    monitor-enter v2

    .line 854
    :try_start_9
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->ORIG:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ORIG:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v2

    goto :goto_5

    .line 866
    :catchall_23
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v0

    .line 857
    :cond_26
    :try_start_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orig_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 859
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_48} :catch_54
    .catchall {:try_start_26 .. :try_end_48} :catchall_23

    move-object v0, v1

    .line 864
    :goto_49
    :try_start_49
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->ORIG:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_23

    goto :goto_5

    .line 861
    :catch_54
    move-exception v1

    goto :goto_49
.end method

.method public static origIcon(Landroid/widget/ImageView;II)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 904
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->origAsset(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 905
    if-nez v1, :cond_10

    .line 910
    :cond_f
    :goto_f
    return v0

    .line 906
    :cond_10
    if-lez p2, :cond_21

    .line 907
    :goto_12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 908
    if-eqz v1, :cond_f

    .line 909
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 910
    const/4 v0, 0x1

    goto :goto_f

    .line 906
    :cond_21
    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int p2, v2

    goto :goto_12
.end method

.method private static params(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5

    .prologue
    const v3, 0x47012f00    # 33071.0f

    const/16 v2, 0xde1

    .line 303
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 304
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 305
    const/16 v0, 0x2802

    invoke-interface {p0, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 306
    const/16 v0, 0x2803

    invoke-interface {p0, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 307
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x46040000    # 8448.0f

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 308
    return-void
.end method

.method public static prefetch(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 5

    .prologue
    .line 598
    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 620
    :cond_8
    :goto_8
    return-void

    .line 599
    :cond_9
    check-cast p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 600
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v0, :cond_8

    .line 602
    :try_start_f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_28

    .line 603
    :try_start_12
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->queued:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->pending:Landroid/graphics/Bitmap;

    if-nez v0, :cond_23

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_2a

    :cond_23
    monitor-exit v1

    goto :goto_8

    .line 616
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_28} :catch_28

    .line 617
    :catch_28
    move-exception v0

    goto :goto_8

    .line 604
    :cond_2a
    :try_start_2a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->decoder:Ljava/lang/Thread;

    if-nez v0, :cond_47

    .line 605
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModArt$2;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModArt$2;-><init>()V

    const-string v3, "ModArt-decode"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 608
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 609
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 610
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 611
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->decoder:Ljava/lang/Thread;

    .line 613
    :cond_47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->queued:Z

    .line 614
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 616
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_2a .. :try_end_55} :catchall_25

    goto :goto_8
.end method

.method static prefetch(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 624
    if-eqz p0, :cond_d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 625
    :cond_d
    return-void
.end method

.method static pump(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3

    .prologue
    .line 522
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 523
    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v1, :cond_b

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    .line 524
    :cond_b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->scanQueue(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 528
    :goto_e
    return-void

    .line 525
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private static put(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)Z
    .registers 10

    .prologue
    const/16 v5, 0x80

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 375
    const/4 v2, 0x1

    :try_start_5
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v4, 0x0

    invoke-interface {p0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 376
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 377
    const/16 v3, 0xde1

    invoke-interface {p0, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 378
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->params(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 381
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 382
    if-lt v3, v5, :cond_42

    if-lt v4, v5, :cond_42

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v3, v5

    if-nez v3, :cond_42

    add-int/lit8 v3, v4, -0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_42

    .line 383
    const/16 v3, 0xde1

    const v4, 0x8191

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {p0, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 384
    const/16 v3, 0xde1

    const/16 v4, 0x2801

    const v5, 0x461c0c00    # 9987.0f

    invoke-interface {p0, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 386
    :cond_42
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, p2, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 387
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 388
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    aput v5, v3, v4

    .line 389
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    const/4 v4, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aput v5, v3, v4

    .line 390
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    const/4 v4, 0x3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    aput v5, v3, v4

    .line 391
    check-cast p0, Ljavax/microedition/khronos/opengles/GL11;

    const/16 v3, 0xde1

    const v4, 0x8b9d

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    const/4 v6, 0x0

    invoke-interface {p0, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 392
    iput v2, p1, Lfr/testudo/spacecorsair/display/Texture;->name:I

    .line 393
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p1, Lfr/testudo/spacecorsair/display/Texture;->width:I

    .line 394
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p1, Lfr/testudo/spacecorsair/display/Texture;->height:I

    .line 395
    const/4 v2, 0x1

    iput-boolean v2, p1, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 396
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->measure(Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8c} :catch_90
    .catchall {:try_start_5 .. :try_end_8c} :catchall_96

    .line 401
    :try_start_8c
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_9b

    .line 399
    :goto_8f
    return v0

    .line 398
    :catch_90
    move-exception v0

    .line 401
    :try_start_91
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_9d

    :goto_94
    move v0, v1

    .line 399
    goto :goto_8f

    .line 401
    :catchall_96
    move-exception v0

    :try_start_97
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_9a} :catch_9f

    .line 402
    :goto_9a
    throw v0

    .line 401
    :catch_9b
    move-exception v1

    goto :goto_8f

    :catch_9d
    move-exception v0

    goto :goto_94

    :catch_9f
    move-exception v1

    goto :goto_9a
.end method

.method static ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    .registers 4

    .prologue
    .line 767
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 768
    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-nez v1, :cond_9

    .line 772
    :cond_8
    :goto_8
    return-object v0

    .line 769
    :cond_9
    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 770
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v1, :cond_8

    .line 771
    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->failedGen:I

    sget v2, Lfr/testudo/spacecorsair/mod/ModArt;->gen:I

    if-eq v1, v2, :cond_18

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 772
    :cond_18
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static scanQueue(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 561
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModArt;->scanOff:Z

    if-eqz v0, :cond_6

    .line 587
    :cond_5
    :goto_5
    return-void

    .line 563
    :cond_6
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    .line 564
    if-eqz v1, :cond_5

    .line 565
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->fQueue:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2c

    .line 566
    const-class v0, Lfr/testudo/spacecorsair/engine/GameRenderer;

    const-string v2, "renderQueue"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 567
    const-class v2, Lfr/testudo/spacecorsair/engine/GameRenderer;

    const-string v3, "renderQueueSize"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 568
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 569
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 570
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->fSize:Ljava/lang/reflect/Field;

    .line 571
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->fQueue:Ljava/lang/reflect/Field;

    .line 573
    :cond_2c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->fQueue:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/display/RenderElement;

    .line 574
    if-eqz v0, :cond_5

    .line 575
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->fSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 576
    const/4 v1, 0x0

    move v2, v1

    :goto_43
    if-ge v2, v3, :cond_5

    .line 577
    aget-object v1, v0, v2

    .line 578
    if-nez v1, :cond_4d

    .line 576
    :cond_49
    :goto_49
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_43

    .line 579
    :cond_4d
    iget-object v1, v1, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 580
    if-eqz v1, :cond_49

    .line 581
    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 582
    instance-of v4, v1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v4, :cond_49

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_5c} :catch_5d

    goto :goto_49

    .line 584
    :catch_5d
    move-exception v0

    .line 585
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModArt;->scanOff:Z

    goto :goto_5
.end method

.method public static shipIcon(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 818
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->shipIcon(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    .line 819
    return-void
.end method

.method public static shipIcon(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V
    .registers 6

    .prologue
    .line 826
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 827
    if-nez v1, :cond_12

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    .line 828
    :try_start_a
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I

    move-result v0

    invoke-static {p0, v0, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->origIcon(Landroid/widget/ImageView;II)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_4c

    .line 845
    :cond_11
    :goto_11
    return-void

    .line 831
    :cond_12
    if-eqz v1, :cond_11

    if-eqz p0, :cond_11

    .line 834
    if-gtz p2, :cond_31

    .line 835
    :try_start_18
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 836
    if-nez v0, :cond_43

    const/4 v0, 0x0

    .line 837
    :goto_1f
    if-gtz v0, :cond_2f

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 838
    :cond_2f
    mul-int/lit8 p2, v0, 0x2

    .line 840
    :cond_31
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_11

    .line 842
    :catch_41
    move-exception v0

    goto :goto_11

    .line 836
    :cond_43
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_4a} :catch_41

    move-result v0

    goto :goto_1f

    .line 828
    :catch_4c
    move-exception v0

    goto :goto_11
.end method

.method private static shipsFile(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 434
    const/4 v1, 0x0

    .line 436
    :try_start_1
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_c
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    move-result-object v1

    .line 437
    const/4 v0, 0x1

    .line 441
    if-eqz v1, :cond_b

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_1d

    .line 439
    :cond_b
    :goto_b
    return v0

    .line 438
    :catch_c
    move-exception v0

    .line 439
    const/4 v0, 0x0

    .line 441
    if-eqz v1, :cond_b

    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_b

    :catch_14
    move-exception v1

    goto :goto_b

    :catchall_16
    move-exception v0

    if-eqz v1, :cond_1c

    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1f

    .line 442
    :cond_1c
    :goto_1c
    throw v0

    .line 441
    :catch_1d
    move-exception v1

    goto :goto_b

    :catch_1f
    move-exception v1

    goto :goto_1c
.end method

.method private static sizeIndex(I)I
    .registers 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 712
    if-eqz p0, :cond_b

    if-eq p0, v1, :cond_b

    const/4 v2, 0x7

    if-eq p0, v2, :cond_b

    if-gez p0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return v0

    .line 713
    :cond_d
    if-eq p0, v0, :cond_12

    const/4 v2, 0x3

    if-ne p0, v2, :cond_c

    :cond_12
    move v0, v1

    goto :goto_c
.end method

.method static span(Lfr/testudo/spacecorsair/display/Texture;F[F)[F
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 948
    if-nez p0, :cond_9

    move-object v0, v1

    .line 949
    :goto_5
    if-nez v0, :cond_12

    move-object p2, v1

    .line 954
    :goto_8
    return-object p2

    .line 948
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->PROFILE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_5

    .line 950
    :cond_12
    const/16 v2, 0x1f

    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 951
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    aget v4, v0, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_30

    move-object p2, v1

    goto :goto_8

    .line 952
    :cond_30
    mul-int/lit8 v1, v2, 0x2

    aget v1, v0, v1

    aput v1, p2, v5

    .line 953
    const/4 v1, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    aput v0, p2, v1

    goto :goto_8
.end method

.method private static takePending(Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 665
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->pending:Landroid/graphics/Bitmap;

    .line 667
    const/4 v2, 0x0

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->pending:Landroid/graphics/Bitmap;

    .line 668
    if-eqz v0, :cond_f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 669
    :cond_f
    monitor-exit v1

    return-object v0

    .line 670
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public static texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    .registers 2

    .prologue
    .line 776
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    goto :goto_3
.end method

.method public static turret(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 695
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->turrets:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_3
.end method

.method private static upload(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 350
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModArt;->decodeFull(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 351
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 352
    if-nez v2, :cond_1a

    .line 353
    if-eqz v0, :cond_18

    .line 354
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 355
    sget v2, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v2, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    :cond_18
    move-object v0, v1

    .line 368
    :cond_19
    :goto_19
    return-object v0

    .line 359
    :cond_1a
    if-nez v0, :cond_26

    .line 360
    new-instance v0, Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/Texture;-><init>()V

    .line 361
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_26
    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModArt;->put(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 364
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 365
    sget v2, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v2, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    move-object v0, v1

    .line 366
    goto :goto_19
.end method

.method private static upload(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V
    .registers 4

    .prologue
    .line 318
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModArt;->takePending(Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    if-nez v0, :cond_c

    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->asset:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->decodeFull(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    :cond_c
    if-eqz v0, :cond_19

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->PROFILE:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->measure(Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)V

    .line 321
    :cond_19
    if-eqz v0, :cond_25

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->put(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    .line 333
    :goto_24
    return-void

    .line 327
    :cond_25
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModArt;->inLoad:Z

    if-eqz v0, :cond_2e

    .line 328
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I

    goto :goto_24

    .line 331
    :cond_2e
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->gen:I

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->failedGen:I

    .line 332
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->fallback:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->fallbackName(I)I

    move-result v0

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I

    goto :goto_24
.end method

.method static use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V
    .registers 4

    .prologue
    .line 312
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->frame:I

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->lastUse:I

    .line 313
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v0, :cond_e

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->failedGen:I

    sget v1, Lfr/testudo/spacecorsair/mod/ModArt;->gen:I

    if-ne v0, v1, :cond_f

    .line 315
    :cond_e
    :goto_e
    return-void

    .line 314
    :cond_f
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->upload(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    goto :goto_e
.end method
