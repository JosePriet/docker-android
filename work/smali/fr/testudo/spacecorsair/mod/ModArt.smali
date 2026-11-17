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

.field static volatile freeReq:Z

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

    .line 471
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModArt$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModArt$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->GEN_LOADER:Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;

    .line 616
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    .line 706
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->turrets:Ljava/util/Map;

    .line 724
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

    .line 725
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    array-length v0, v0

    filled-new-array {v0, v7}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_NAMES:[[Ljava/lang/String;

    .line 727
    new-array v3, v7, [Ljava/lang/String;

    const-string v0, "s"

    aput-object v0, v3, v1

    const-string v0, "m"

    aput-object v0, v3, v4

    const-string v0, "l"

    aput-object v0, v3, v5

    move v0, v1

    .line 728
    :goto_87
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_be

    move v2, v1

    .line 729
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

    .line 728
    :cond_bb
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 733
    :cond_be
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->familyDrawables:Ljava/util/Map;

    .line 734
    sput v8, Lfr/testudo/spacecorsair/mod/ModArt;->memoKey:I

    .line 771
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ORIGTEX:Ljava/util/Map;

    .line 881
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ORIG:Ljava/util/Map;

    .line 947
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->EXTENT:Ljava/util/Map;

    .line 977
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
    .line 775
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 777
    :goto_3
    return-object v0

    .line 776
    :cond_4
    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v0, :cond_d

    check-cast p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->asset:Ljava/lang/String;

    goto :goto_3

    .line 777
    :cond_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ORIGTEX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method

.method static assetExists(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 288
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

    .line 289
    :cond_19
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    if-eqz v0, :cond_24

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 303
    :goto_23
    return v0

    .line 290
    :cond_24
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->exists:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 291
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_23

    .line 293
    :cond_33
    const/4 v1, 0x0

    .line 295
    :try_start_34
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_39} :catch_4a
    .catchall {:try_start_34 .. :try_end_39} :catchall_54

    move-result-object v1

    .line 296
    const/4 v0, 0x1

    .line 300
    if-eqz v1, :cond_40

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_5b

    .line 302
    :cond_40
    :goto_40
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->exists:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 297
    :catch_4a
    move-exception v0

    .line 298
    const/4 v0, 0x0

    .line 300
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

    .line 301
    :cond_5a
    :goto_5a
    throw v0

    .line 300
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

    .line 824
    .line 826
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 827
    if-lez p2, :cond_32

    .line 828
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_48
    .catchall {:try_start_2 .. :try_end_c} :catchall_52

    move-result-object v1

    .line 829
    const/4 v4, 0x1

    :try_start_e
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 830
    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 831
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_17} :catch_63
    .catchall {:try_start_e .. :try_end_17} :catchall_5f

    .line 833
    :try_start_17
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v2, v3

    .line 834
    :goto_20
    mul-int/lit8 v1, v2, 0x2

    div-int v1, v4, v1

    if-lt v1, p2, :cond_2a

    mul-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_20

    .line 835
    :cond_2a
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 836
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object v2, v1

    .line 838
    :cond_32
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 839
    const/4 v1, 0x0

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 840
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_3c} :catch_48
    .catchall {:try_start_17 .. :try_end_3c} :catchall_52

    move-result-object v1

    .line 841
    const/4 v3, 0x0

    :try_start_3e
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_63
    .catchall {:try_start_3e .. :try_end_41} :catchall_5f

    move-result-object v0

    .line 845
    if-eqz v1, :cond_47

    :try_start_44
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_5b

    .line 843
    :cond_47
    :goto_47
    return-object v0

    .line 842
    :catch_48
    move-exception v1

    move-object v1, v0

    .line 845
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

    .line 846
    :cond_5a
    :goto_5a
    throw v2

    .line 845
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

    .line 842
    :catch_63
    move-exception v2

    goto :goto_4a
.end method

.method private static decodeFull(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 431
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    .line 432
    if-nez v0, :cond_7

    move-object v0, v2

    .line 451
    :cond_6
    :goto_6
    return-object v0

    .line 433
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

    .line 436
    :cond_24
    :try_start_24
    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_54
    .catchall {:try_start_24 .. :try_end_27} :catchall_5d

    move-result-object v3

    .line 437
    :try_start_28
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 438
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 439
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 440
    const/4 v1, 0x0

    invoke-static {v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 442
    if-eqz v1, :cond_6e

    const-string v0, "mfx_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 443
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_6e

    .line 445
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_4c} :catch_6b
    .catchall {:try_start_28 .. :try_end_4c} :catchall_69

    .line 453
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

    .line 450
    :catch_54
    move-exception v0

    move-object v0, v2

    .line 453
    :goto_56
    if-eqz v0, :cond_5b

    :try_start_58
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_65

    :cond_5b
    :goto_5b
    move-object v0, v2

    .line 451
    goto :goto_6

    .line 453
    :catchall_5d
    move-exception v0

    move-object v3, v2

    :goto_5f
    if-eqz v3, :cond_64

    :try_start_61
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_67

    .line 454
    :cond_64
    :goto_64
    throw v0

    .line 453
    :catch_65
    move-exception v0

    goto :goto_5b

    :catch_67
    move-exception v1

    goto :goto_64

    :catchall_69
    move-exception v0

    goto :goto_5f

    .line 450
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

    .line 657
    :goto_3
    :try_start_3
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_17

    .line 658
    :goto_6
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 660
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    :try_start_16
    throw v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_17} :catch_17

    .line 681
    :catch_17
    move-exception v0

    .line 682
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 683
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

    .line 686
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_31

    throw v0

    .line 659
    :cond_34
    :try_start_34
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 660
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_14

    .line 664
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

    .line 665
    :try_start_4b
    iget-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v4, :cond_91

    if-eqz v1, :cond_91

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->asset:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->decodeFull(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_56} :catch_7c

    move-result-object v1

    .line 669
    :goto_57
    :try_start_57
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_17

    .line 670
    const/4 v5, 0x0

    :try_start_5b
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->queued:Z

    .line 671
    if-eqz v1, :cond_72

    .line 672
    iget-boolean v5, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v5, :cond_6f

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->pending:Landroid/graphics/Bitmap;

    if-nez v5, :cond_6f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_7f

    .line 673
    :cond_6f
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 679
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

    .line 664
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

    .line 666
    :catch_7c
    move-exception v1

    move-object v1, v2

    .line 667
    goto :goto_57

    .line 675
    :cond_7f
    :try_start_7f
    iput-object v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->pending:Landroid/graphics/Bitmap;

    .line 676
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_74

    goto :goto_72

    .line 684
    :cond_87
    :try_start_87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 685
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->decoder:Ljava/lang/Thread;

    .line 686
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_31

    .line 688
    return-void

    :cond_91
    move-object v1, v2

    goto :goto_57
.end method

.method static extent(Lfr/testudo/spacecorsair/display/Texture;)F
    .registers 2

    .prologue
    .line 992
    if-nez p0, :cond_8

    const/4 v0, 0x0

    .line 993
    :goto_3
    if-nez v0, :cond_11

    const/high16 v0, -0x40800000    # -1.0f

    :goto_7
    return v0

    .line 992
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->EXTENT:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_3

    .line 993
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_7
.end method

.method private static fallbackName(I)I
    .registers 3

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 361
    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 364
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

    .line 368
    :goto_18
    return v0

    .line 362
    :cond_19
    const/4 v1, 0x2

    if-ne p0, v1, :cond_8

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v1, :cond_8

    .line 363
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_8

    .line 365
    :catch_25
    move-exception v0

    .line 368
    :cond_26
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    goto :goto_18
.end method

.method public static familyTurret(IIF)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 749
    if-ltz p0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_9

    .line 763
    :cond_8
    :goto_8
    return-object v1

    .line 750
    :cond_9
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModArt;->sizeIndex(I)I

    move-result v2

    .line 751
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_NAMES:[[Ljava/lang/String;

    aget-object v3, v3, p0

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 752
    if-eqz v0, :cond_8

    .line 753
    mul-int/lit8 v1, p0, 0x3

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x14

    float-to-int v2, p2

    const v3, 0xfffff

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 754
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->memoTurret:Lfr/testudo/spacecorsair/display/Drawable;

    .line 755
    sget v3, Lfr/testudo/spacecorsair/mod/ModArt;->memoKey:I

    if-ne v2, v3, :cond_34

    if-eqz v1, :cond_34

    iget-object v3, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eq v3, v0, :cond_8

    .line 756
    :cond_34
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->familyDrawables:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/display/Drawable;

    .line 757
    if-eqz v1, :cond_46

    iget-object v3, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eq v3, v0, :cond_5a

    .line 758
    :cond_46
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3, p2, p2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v4, 0x1

    invoke-direct {v1, v3, v0, v4}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    .line 759
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->familyDrawables:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_5a
    sput v2, Lfr/testudo/spacecorsair/mod/ModArt;->memoKey:I

    .line 762
    sput-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->memoTurret:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_8
.end method

.method static familyTurretName(II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 744
    if-ltz p0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->FAMILY_TURRETS:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    .line 745
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
    const/4 v1, 0x0

    .line 557
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->frame:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModArt;->frame:I

    .line 558
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModArt;->freeReq:Z

    if-eqz v0, :cond_10

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModArt;->freeReq:Z

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->freeUnused(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 560
    :cond_10
    :try_start_10
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 561
    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v1, :cond_1b

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    .line 562
    :cond_1b
    const/4 v0, 0x0

    .line 563
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1f} :catch_44

    .line 564
    :try_start_1f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 565
    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_41

    .line 566
    if-eqz v0, :cond_40

    .line 567
    :try_start_33
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-eqz v1, :cond_46

    .line 568
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->takePending(Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 569
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_40} :catch_44

    .line 580
    :cond_40
    :goto_40
    return-void

    .line 565
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw v0

    .line 577
    :catch_44
    move-exception v0

    goto :goto_40

    .line 570
    :cond_46
    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->failedGen:I

    sget v2, Lfr/testudo/spacecorsair/mod/ModArt;->gen:I

    if-eq v1, v2, :cond_50

    .line 571
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->upload(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    goto :goto_40

    .line 573
    :cond_50
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->takePending(Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_59} :catch_44

    goto :goto_40
.end method

.method private static freeUnused(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 227
    .line 229
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 230
    instance-of v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v3, :cond_b

    .line 231
    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 232
    iget-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-eqz v3, :cond_b

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->lastUse:I

    sget v4, Lfr/testudo/spacecorsair/mod/ModArt;->frame:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_b

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I

    if-lez v3, :cond_b

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I

    sget v4, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    if-eq v3, v4, :cond_b

    .line 233
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v4, 0x0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I

    aput v5, v3, v4

    .line 234
    const/4 v3, 0x1

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    .line 235
    const/4 v3, 0x0

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    .line 236
    const/4 v3, 0x0

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->loaded:Z

    .line 237
    sget v3, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v3, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4b} :catch_6e

    .line 238
    add-int/lit8 v1, v1, 0x1

    .line 239
    goto :goto_b

    :cond_4e
    move v0, v1

    .line 243
    :goto_4f
    const-string v1, "art"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " textures on sector change"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void

    .line 240
    :catch_6e
    move-exception v0

    move v0, v1

    goto :goto_4f
.end method

.method public static gameTex(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Lfr/testudo/spacecorsair/display/Texture;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/16 v4, 0x80

    .line 909
    if-eqz p2, :cond_8

    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 931
    :cond_8
    :goto_8
    return-object p1

    .line 910
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    iget v1, p2, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->origAsset(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_10} :catch_9b

    move-result-object v1

    .line 911
    if-nez v1, :cond_59

    .line 913
    :try_start_13
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lfr/testudo/spacecorsair/display/Texture;->resource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 914
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

    .line 915
    :cond_51
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->ORIGTEX:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_56} :catch_57

    goto :goto_8

    .line 916
    :catch_57
    move-exception v0

    goto :goto_8

    .line 919
    :cond_59
    :try_start_59
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->decodeFull(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_8

    .line 921
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 922
    if-lt v2, v4, :cond_89

    if-lt v3, v4, :cond_89

    add-int/lit8 v4, v2, -0x1

    and-int/2addr v2, v4

    if-nez v2, :cond_89

    add-int/lit8 v2, v3, -0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_89

    .line 923
    const/16 v2, 0xde1

    const v3, 0x8191

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 924
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x461c0c00    # 9987.0f

    invoke-interface {p0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 926
    :cond_89
    if-eqz p1, :cond_90

    if-eq p1, v0, :cond_90

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 927
    :cond_90
    invoke-static {p2, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->measure(Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)V

    .line 928
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ORIGTEX:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_98} :catch_9b

    move-object p1, v0

    .line 929
    goto/16 :goto_8

    .line 930
    :catch_9b
    move-exception v0

    goto/16 :goto_8
.end method

.method private static generated(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 503
    .line 505
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    .line 506
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "artgen"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 507
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

    .line 508
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 509
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 510
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 511
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 512
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_4f

    .line 539
    :goto_4e
    return-object v0

    .line 515
    :cond_4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 516
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->GEN_LOADER:Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->make(Ljava/lang/String;Lfr/testudo/spacecorsair/mod/ModPoliceGen$Loader;)Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;

    move-result-object v0

    .line 517
    if-nez v0, :cond_5d

    move-object v0, v1

    goto :goto_4e

    .line 518
    :cond_5d
    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->px:[I

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->w:I

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModPoliceGen$Img;->h:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6c} :catch_d8

    move-result-wide v6

    .line 522
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 523
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

    .line 524
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_8d} :catch_f8
    .catchall {:try_start_6d .. :try_end_8d} :catchall_102

    .line 525
    :try_start_8d
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    if-eqz v9, :cond_9e

    .line 526
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_9a} :catch_110
    .catchall {:try_start_8d .. :try_end_9a} :catchall_10e

    .line 528
    :try_start_9a
    invoke-virtual {v8, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_f8
    .catchall {:try_start_9a .. :try_end_9d} :catchall_102

    move-object v2, v1

    .line 533
    :cond_9e
    if-eqz v2, :cond_a3

    :try_start_a0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_10a
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_d8

    .line 535
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

    .line 537
    :catch_d8
    move-exception v0

    .line 538
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

    .line 539
    goto/16 :goto_4e

    .line 530
    :catch_f8
    move-exception v2

    move-object v2, v1

    .line 533
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

    .line 534
    :cond_109
    :goto_109
    :try_start_109
    throw v0
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_10a} :catch_d8

    .line 533
    :catch_10a
    move-exception v2

    goto :goto_a3

    :catch_10c
    move-exception v2

    goto :goto_109

    :catchall_10e
    move-exception v0

    goto :goto_104

    .line 530
    :catch_110
    move-exception v3

    goto :goto_fa
.end method

.method public static hasArt(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 282
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 284
    :cond_5
    :goto_5
    return v0

    .line 283
    :cond_6
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModArt;->listAssets()V

    .line 284
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
    .line 700
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 701
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

    .line 702
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
    .line 767
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

    .line 247
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 248
    instance-of v2, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v2, :cond_10

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 255
    :goto_f
    return-object v0

    .line 249
    :cond_10
    if-eqz v0, :cond_14

    move-object v0, v1

    goto :goto_f

    .line 250
    :cond_14
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->assetExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    move-object v0, v1

    goto :goto_f

    .line 251
    :cond_1c
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-direct {v0, p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;-><init>(Ljava/lang/String;I)V

    .line 252
    sget v1, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I

    .line 253
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->loaded:Z

    .line 254
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method static lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    .registers 2

    .prologue
    .line 782
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 785
    :cond_3
    :goto_3
    return-object v0

    .line 783
    :cond_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 784
    if-nez v0, :cond_3

    .line 785
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazy(Ljava/lang/String;I)Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    move-result-object v0

    goto :goto_3
.end method

.method private static listAssets()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 259
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    if-nez v1, :cond_9

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 273
    :cond_9
    :goto_9
    return-void

    .line 261
    :cond_a
    :try_start_a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "modart"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_9

    array-length v1, v2

    if-eqz v1, :cond_9

    .line 263
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 264
    array-length v4, v2

    move v1, v0

    :goto_22
    if-ge v1, v4, :cond_3a

    aget-object v0, v2, v1

    .line 265
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 266
    if-lez v5, :cond_33

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_33
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_36} :catch_44

    .line 264
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 268
    :cond_3a
    :try_start_3a
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModPoliceGen;->virtualNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_41} :catch_49

    .line 269
    :goto_41
    :try_start_41
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_43} :catch_44

    goto :goto_9

    .line 270
    :catch_44
    move-exception v0

    .line 271
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->assetNames:Ljava/util/Set;

    goto :goto_9

    .line 268
    :catch_49
    move-exception v0

    goto :goto_41
.end method

.method static listed()Z
    .registers 1

    .prologue
    .line 277
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
    .line 308
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 309
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 310
    const/16 v1, 0xde1

    invoke-interface {p0, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 311
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->params(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 312
    const/4 v1, 0x1

    const/4 v2, 0x1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_2c

    move-result-object v1

    .line 314
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_20
    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 316
    :try_start_23
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    :goto_26
    return v0

    .line 316
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    throw v0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_2c

    .line 319
    :catch_2c
    move-exception v0

    .line 320
    const/4 v0, -0x1

    goto :goto_26
.end method

.method static measure(Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)V
    .registers 16

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 952
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    :try_start_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 974
    :cond_e
    :goto_e
    return-void

    .line 953
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

    .line 954
    int-to-float v0, v6

    div-float v9, v0, v2

    int-to-float v0, v7

    div-float v10, v0, v2

    .line 955
    const/16 v0, 0x40

    new-array v11, v0, [F

    move v0, v3

    .line 956
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

    .line 957
    :goto_44
    if-ge v4, v7, :cond_8f

    .line 958
    const/16 v1, 0x1f

    mul-int/lit8 v2, v4, 0x20

    div-int/2addr v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v2, v3

    .line 959
    :goto_50
    if-ge v2, v6, :cond_8b

    .line 960
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x18

    const/16 v13, 0x28

    if-le v1, v13, :cond_87

    .line 961
    int-to-float v1, v2

    sub-float/2addr v1, v9

    int-to-float v13, v4

    sub-float/2addr v13, v10

    mul-float/2addr v1, v1

    mul-float/2addr v13, v13

    add-float/2addr v1, v13

    .line 962
    cmpl-float v13, v1, v0

    if-lez v13, :cond_68

    move v0, v1

    .line 963
    :cond_68
    int-to-float v1, v2

    int-to-float v13, v6

    div-float/2addr v1, v13

    .line 964
    mul-int/lit8 v13, v12, 0x2

    aget v13, v11, v13

    cmpg-float v13, v1, v13

    if-gez v13, :cond_77

    mul-int/lit8 v13, v12, 0x2

    aput v1, v11, v13

    .line 965
    :cond_77
    mul-int/lit8 v13, v12, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v13, v11, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_87

    mul-int/lit8 v13, v12, 0x2

    add-int/lit8 v13, v13, 0x1

    aput v1, v11, v13

    .line 959
    :cond_87
    add-int v1, v2, v8

    move v2, v1

    goto :goto_50

    .line 957
    :cond_8b
    add-int v1, v4, v8

    move v4, v1

    goto :goto_44

    .line 969
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

    .line 970
    :cond_ab
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->PROFILE:Ljava/util/Map;

    invoke-interface {v0, p0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b0} :catch_b2

    goto/16 :goto_e

    .line 971
    :catch_b2
    move-exception v0

    goto/16 :goto_e
.end method

.method public static missile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 714
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->missile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_7

    .line 717
    :goto_6
    return-object v0

    .line 716
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

    .line 717
    :cond_1b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->devMissile:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_6
.end method

.method static nameOf(Lfr/testudo/spacecorsair/display/Texture;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 807
    if-nez p0, :cond_5

    move-object v0, v1

    .line 809
    :goto_4
    return-object v0

    .line 808
    :cond_5
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_28
    move-object v0, v1

    .line 809
    goto :goto_4
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
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

    .line 818
    :goto_21
    return-object v0

    .line 817
    :catch_22
    move-exception v0

    .line 818
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

    .line 885
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 898
    :cond_5
    :goto_5
    return-object v0

    .line 886
    :cond_6
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ORIG:Ljava/util/Map;

    monitor-enter v2

    .line 887
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

    .line 899
    :catchall_23
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v0

    .line 890
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

    .line 891
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 892
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_48} :catch_54
    .catchall {:try_start_26 .. :try_end_48} :catchall_23

    move-object v0, v1

    .line 897
    :goto_49
    :try_start_49
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->ORIG:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_23

    goto :goto_5

    .line 894
    :catch_54
    move-exception v1

    goto :goto_49
.end method

.method public static origIcon(Landroid/widget/ImageView;II)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 937
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->origAsset(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 938
    if-nez v1, :cond_10

    .line 943
    :cond_f
    :goto_f
    return v0

    .line 939
    :cond_10
    if-lez p2, :cond_21

    .line 940
    :goto_12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 941
    if-eqz v1, :cond_f

    .line 942
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 943
    const/4 v0, 0x1

    goto :goto_f

    .line 939
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

    .line 326
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 327
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 328
    const/16 v0, 0x2802

    invoke-interface {p0, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 329
    const/16 v0, 0x2803

    invoke-interface {p0, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 330
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x46040000    # 8448.0f

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 331
    return-void
.end method

.method public static prefetch(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 5

    .prologue
    .line 624
    instance-of v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->appCtx:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 646
    :cond_8
    :goto_8
    return-void

    .line 625
    :cond_9
    check-cast p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 626
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v0, :cond_8

    .line 628
    :try_start_f
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_28

    .line 629
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

    .line 642
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_28} :catch_28

    .line 643
    :catch_28
    move-exception v0

    goto :goto_8

    .line 630
    :cond_2a
    :try_start_2a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->decoder:Ljava/lang/Thread;

    if-nez v0, :cond_47

    .line 631
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lfr/testudo/spacecorsair/mod/ModArt$2;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModArt$2;-><init>()V

    const-string v3, "ModArt-decode"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 634
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 635
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 636
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 637
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->decoder:Ljava/lang/Thread;

    .line 639
    :cond_47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->queued:Z

    .line 640
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 642
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_2a .. :try_end_55} :catchall_25

    goto :goto_8
.end method

.method static prefetch(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 650
    if-eqz p0, :cond_d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 651
    :cond_d
    return-void
.end method

.method static pump(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3

    .prologue
    .line 547
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 548
    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v1, :cond_b

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    .line 549
    :cond_b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->scanQueue(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 553
    :goto_e
    return-void

    .line 550
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

    .line 396
    .line 398
    const/4 v2, 0x1

    :try_start_5
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v4, 0x0

    invoke-interface {p0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 399
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v3, 0x0

    aget v2, v2, v3
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_10} :catch_90
    .catchall {:try_start_5 .. :try_end_10} :catchall_a9

    .line 400
    const/16 v3, 0xde1

    :try_start_12
    invoke-interface {p0, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 401
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->params(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 404
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 405
    if-lt v3, v5, :cond_42

    if-lt v4, v5, :cond_42

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v3, v5

    if-nez v3, :cond_42

    add-int/lit8 v3, v4, -0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_42

    .line 406
    const/16 v3, 0xde1

    const v4, 0x8191

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {p0, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 407
    const/16 v3, 0xde1

    const/16 v4, 0x2801

    const v5, 0x461c0c00    # 9987.0f

    invoke-interface {p0, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 409
    :cond_42
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, p2, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 410
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 411
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    aput v5, v3, v4

    .line 412
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    const/4 v4, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aput v5, v3, v4

    .line 413
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    const/4 v4, 0x3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    aput v5, v3, v4

    .line 414
    check-cast p0, Ljavax/microedition/khronos/opengles/GL11;

    const/16 v3, 0xde1

    const v4, 0x8b9d

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModArt;->crop:[I

    const/4 v6, 0x0

    invoke-interface {p0, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 415
    iput v2, p1, Lfr/testudo/spacecorsair/display/Texture;->name:I

    .line 416
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p1, Lfr/testudo/spacecorsair/display/Texture;->width:I

    .line 417
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p1, Lfr/testudo/spacecorsair/display/Texture;->height:I

    .line 418
    const/4 v3, 0x1

    iput-boolean v3, p1, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 419
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->measure(Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_8c} :catch_b6
    .catchall {:try_start_12 .. :try_end_8c} :catchall_a9

    .line 426
    :try_start_8c
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_ae

    .line 424
    :goto_8f
    return v0

    .line 421
    :catch_90
    move-exception v0

    move v0, v1

    .line 423
    :goto_92
    if-lez v0, :cond_a4

    :try_start_94
    iget v2, p1, Lfr/testudo/spacecorsair/display/Texture;->name:I
    :try_end_96
    .catchall {:try_start_94 .. :try_end_96} :catchall_a9

    if-eq v2, v0, :cond_a4

    :try_start_98
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ids:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_a4} :catch_b4
    .catchall {:try_start_98 .. :try_end_a4} :catchall_a9

    .line 426
    :cond_a4
    :goto_a4
    :try_start_a4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a7} :catch_b0

    :goto_a7
    move v0, v1

    .line 424
    goto :goto_8f

    .line 426
    :catchall_a9
    move-exception v0

    :try_start_aa
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_ad} :catch_b2

    .line 427
    :goto_ad
    throw v0

    .line 426
    :catch_ae
    move-exception v1

    goto :goto_8f

    :catch_b0
    move-exception v0

    goto :goto_a7

    :catch_b2
    move-exception v1

    goto :goto_ad

    .line 423
    :catch_b4
    move-exception v0

    goto :goto_a4

    .line 421
    :catch_b6
    move-exception v0

    move v0, v2

    goto :goto_92
.end method

.method static ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    .registers 4

    .prologue
    .line 793
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 794
    instance-of v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-nez v1, :cond_9

    .line 798
    :cond_8
    :goto_8
    return-object v0

    .line 795
    :cond_9
    check-cast v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 796
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v1, :cond_8

    .line 797
    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->failedGen:I

    sget v2, Lfr/testudo/spacecorsair/mod/ModArt;->gen:I

    if-eq v1, v2, :cond_18

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 798
    :cond_18
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static scanQueue(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 587
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModArt;->scanOff:Z

    if-eqz v0, :cond_6

    .line 613
    :cond_5
    :goto_5
    return-void

    .line 589
    :cond_6
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    .line 590
    if-eqz v1, :cond_5

    .line 591
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->fQueue:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2c

    .line 592
    const-class v0, Lfr/testudo/spacecorsair/engine/GameRenderer;

    const-string v2, "renderQueue"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 593
    const-class v2, Lfr/testudo/spacecorsair/engine/GameRenderer;

    const-string v3, "renderQueueSize"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 594
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 595
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 596
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->fSize:Ljava/lang/reflect/Field;

    .line 597
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->fQueue:Ljava/lang/reflect/Field;

    .line 599
    :cond_2c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->fQueue:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/testudo/spacecorsair/display/RenderElement;

    .line 600
    if-eqz v0, :cond_5

    .line 601
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->fSize:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 602
    const/4 v1, 0x0

    move v2, v1

    :goto_43
    if-ge v2, v3, :cond_5

    .line 603
    aget-object v1, v0, v2

    .line 604
    if-nez v1, :cond_4d

    .line 602
    :cond_49
    :goto_49
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_43

    .line 605
    :cond_4d
    iget-object v1, v1, Lfr/testudo/spacecorsair/display/RenderElement;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 606
    if-eqz v1, :cond_49

    .line 607
    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 608
    instance-of v4, v1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v4, :cond_49

    check-cast v1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_5c} :catch_5d

    goto :goto_49

    .line 610
    :catch_5d
    move-exception v0

    .line 611
    sput-boolean v5, Lfr/testudo/spacecorsair/mod/ModArt;->scanOff:Z

    goto :goto_5
.end method

.method public static shipIcon(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 851
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->shipIcon(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    .line 852
    return-void
.end method

.method public static shipIcon(Landroid/widget/ImageView;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V
    .registers 6

    .prologue
    .line 859
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 860
    if-nez v1, :cond_12

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    .line 861
    :try_start_a
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getDrawableId()I

    move-result v0

    invoke-static {p0, v0, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->origIcon(Landroid/widget/ImageView;II)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_4e

    .line 878
    :cond_11
    :goto_11
    return-void

    .line 864
    :cond_12
    if-eqz v1, :cond_11

    if-eqz p0, :cond_11

    .line 867
    if-gtz p2, :cond_31

    .line 868
    :try_start_18
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 869
    if-nez v0, :cond_45

    const/4 v0, 0x0

    .line 870
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

    .line 871
    :cond_2f
    mul-int/lit8 p2, v0, 0x2

    .line 873
    :cond_31
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v1}, Lfr/testudo/spacecorsair/mod/ModV35;->shownArt(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lfr/testudo/spacecorsair/mod/ModArt;->decode(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 874
    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_11

    .line 875
    :catch_43
    move-exception v0

    goto :goto_11

    .line 869
    :cond_45
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_4c} :catch_43

    move-result v0

    goto :goto_1f

    .line 861
    :catch_4e
    move-exception v0

    goto :goto_11
.end method

.method private static shipsFile(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 459
    const/4 v1, 0x0

    .line 461
    :try_start_1
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_c
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    move-result-object v1

    .line 462
    const/4 v0, 0x1

    .line 466
    if-eqz v1, :cond_b

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_1d

    .line 464
    :cond_b
    :goto_b
    return v0

    .line 463
    :catch_c
    move-exception v0

    .line 464
    const/4 v0, 0x0

    .line 466
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

    .line 467
    :cond_1c
    :goto_1c
    throw v0

    .line 466
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

    .line 738
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

    .line 739
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

    .line 981
    if-nez p0, :cond_9

    move-object v0, v1

    .line 982
    :goto_5
    if-nez v0, :cond_12

    move-object p2, v1

    .line 987
    :goto_8
    return-object p2

    .line 981
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->PROFILE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_5

    .line 983
    :cond_12
    const/16 v2, 0x1f

    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 984
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    aget v4, v0, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_30

    move-object p2, v1

    goto :goto_8

    .line 985
    :cond_30
    mul-int/lit8 v1, v2, 0x2

    aget v1, v0, v1

    aput v1, p2, v5

    .line 986
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
    .line 691
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->pending:Landroid/graphics/Bitmap;

    .line 693
    const/4 v2, 0x0

    iput-object v2, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->pending:Landroid/graphics/Bitmap;

    .line 694
    if-eqz v0, :cond_f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModArt;->ready:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 695
    :cond_f
    monitor-exit v1

    return-object v0

    .line 696
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
    .line 802
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
    .line 721
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

    .line 373
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModArt;->decodeFull(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 374
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/display/Texture;

    .line 375
    if-nez v2, :cond_1a

    .line 376
    if-eqz v0, :cond_18

    .line 377
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 378
    sget v2, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v2, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    :cond_18
    move-object v0, v1

    .line 391
    :cond_19
    :goto_19
    return-object v0

    .line 382
    :cond_1a
    if-nez v0, :cond_26

    .line 383
    new-instance v0, Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/Texture;-><init>()V

    .line 384
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModArt;->textures:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_26
    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/mod/ModArt;->put(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 387
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/display/Texture;->loaded:Z

    .line 388
    sget v2, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v2, v0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    move-object v0, v1

    .line 389
    goto :goto_19
.end method

.method private static upload(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V
    .registers 4

    .prologue
    .line 341
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModArt;->takePending(Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 342
    if-nez v0, :cond_c

    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->asset:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->decodeFull(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    :cond_c
    if-eqz v0, :cond_19

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModArt;->PROFILE:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->measure(Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)V

    .line 344
    :cond_19
    if-eqz v0, :cond_25

    invoke-static {p0, p1, v0}, Lfr/testudo/spacecorsair/mod/ModArt;->put(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/Texture;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    .line 356
    :goto_24
    return-void

    .line 350
    :cond_25
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModArt;->inLoad:Z

    if-eqz v0, :cond_2e

    .line 351
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->blankName:I

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I

    goto :goto_24

    .line 354
    :cond_2e
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->gen:I

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->failedGen:I

    .line 355
    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->fallback:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->fallbackName(I)I

    move-result v0

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->name:I

    goto :goto_24
.end method

.method static use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V
    .registers 4

    .prologue
    .line 335
    sget v0, Lfr/testudo/spacecorsair/mod/ModArt;->frame:I

    iput v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->lastUse:I

    .line 336
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-nez v0, :cond_e

    iget v0, p1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->failedGen:I

    sget v1, Lfr/testudo/spacecorsair/mod/ModArt;->gen:I

    if-ne v0, v1, :cond_f

    .line 338
    :cond_e
    :goto_e
    return-void

    .line 337
    :cond_f
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModArt;->upload(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    goto :goto_e
.end method
