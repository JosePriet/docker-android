.class public final Lfr/testudo/spacecorsair/mod/ModStationGuns;
.super Ljava/lang/Object;
.source "ModStationGuns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;
    }
.end annotation


# static fields
.field static final ACTIVE:F = 9000.0f

.field static final AIM_MS:J = 0x190L

.field static final AIM_TOLERANCE:F = 8.0f

.field static final BASE_DPS:F = 2.5f

.field public static final CIVIL:I = 0x5

.field public static final DRONE:I = 0x1

.field public static final ENEMY_NPC:I = 0x3

.field public static final FACTION_WING:I = 0x4

.field static final MOUNTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field

.field static final NEUTRAL:Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

.field static final NEUTRAL_TEX:Ljava/lang/String; = "hw_turret_cap_spartan"

.field static final OUTPOST_DPS:F = 1.5f

.field public static final PLAYER:I = 0x0

.field public static final PROTECTED:I = 0x2

.field static final SCAN_MS:J = 0x3e8L

.field static final TURRET:F = 0.15f

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final aim:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final enemies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static level:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field private static final mz:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final posts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;",
            ">;"
        }
    .end annotation
.end field

.field private static scanLeft:J


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v13, 0x4

    const/16 v12, 0x8

    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const v2, 0x3e99999a    # 0.3f

    const/16 v3, 0xf0

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x45160000    # 2400.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v8, 0x42f00000    # 120.0f

    const v9, 0x3f59999a    # 0.85f

    const v10, 0x3f666666    # 0.9f

    const/high16 v11, 0x3f800000    # 1.0f

    move v7, v1

    invoke-direct/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;-><init>(IFIFFFIFFFF)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->NEUTRAL:Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    .line 71
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_base_helion"

    new-array v2, v12, [F

    fill-array-data v2, :array_ea

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_base_ironclad"

    new-array v2, v12, [F

    fill-array-data v2, :array_fe

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_base_kretari"

    new-array v2, v12, [F

    fill-array-data v2, :array_112

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_base_reaver"

    new-array v2, v12, [F

    fill-array-data v2, :array_126

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_base_spartan"

    new-array v2, v12, [F

    fill-array-data v2, :array_13a

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_base_varn"

    new-array v2, v12, [F

    fill-array-data v2, :array_14e

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_base_warden"

    new-array v2, v12, [F

    fill-array-data v2, :array_162

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_mining_1"

    new-array v2, v13, [F

    fill-array-data v2, :array_176

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_mining_2"

    new-array v2, v13, [F

    fill-array-data v2, :array_182

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_mining_3"

    new-array v2, v13, [F

    fill-array-data v2, :array_18e

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_outpost_1"

    new-array v2, v12, [F

    fill-array-data v2, :array_19a

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_outpost_2"

    new-array v2, v12, [F

    fill-array-data v2, :array_1ae

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    const-string v1, "poi_outpost_3"

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_1c2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->aim:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->enemies:Ljava/util/ArrayList;

    return-void

    .line 71
    nop

    :array_ea
    .array-data 4
        -0x41b6ae7d    # -0.1966f
        -0x418e075f    # -0.2363f
        0x3e49374c    # 0.1965f
        -0x418dd2f2    # -0.2365f
        -0x41af837b    # -0.2036f
        0x3e32ca58    # 0.1746f
        0x3e504817    # 0.2034f
        0x3e32e48f    # 0.1747f
    .end array-data

    .line 72
    :array_fe
    .array-data 4
        -0x415e4f76    # -0.3158f
        -0x41695e9e    # -0.2942f
        0x3ea1bda5    # 0.3159f
        -0x41695183    # -0.2943f
        -0x415e425b    # -0.3159f
        0x3e9460aa    # 0.2898f
        0x3ea1d7dc    # 0.3161f
        0x3e946dc6    # 0.2899f
    .end array-data

    .line 73
    :array_112
    .array-data 4
        -0x41761e4f    # -0.2693f
        -0x41e353f8    # -0.153f
        0x3e8aa64c    # 0.2708f
        -0x41e339c1    # -0.1531f
        -0x41744674    # -0.2729f
        0x3e1de69b    # 0.1542f
        0x3e8b4396    # 0.272f
        0x3e1cc63f    # 0.1531f
    .end array-data

    .line 74
    :array_126
    .array-data 4
        -0x416c710d    # -0.2882f
        -0x41591687    # -0.326f
        0x3e92e48f    # 0.2869f
        -0x41591687    # -0.326f
        -0x416c7e28    # -0.2881f
        0x3ea56042    # 0.323f
        0x3e92f1aa    # 0.287f
        0x3ea5460b    # 0.3228f
    .end array-data

    .line 75
    :array_13a
    .array-data 4
        0x3a03126f    # 5.0E-4f
        -0x4158793e    # -0.3272f
        -0x41543958    # -0.3355f
        0x3aebedfa    # 0.0018f
        0x3eabc6a8    # 0.3355f
        0x3ad1b717    # 0.0016f
        0x3951b717    # 2.0E-4f
        0x3ea3c9ef    # 0.3199f
    .end array-data

    .line 76
    :array_14e
    .array-data 4
        -0x4217f62b    # -0.1133f
        -0x415db22d    # -0.317f
        0x3de17c1c    # 0.1101f
        -0x415f6fd2    # -0.3136f
        -0x4154c986    # -0.3344f
        0x3e541206    # 0.2071f
        0x3eab9f56    # 0.3352f
        0x3e56d5d0    # 0.2098f
    .end array-data

    .line 77
    :array_162
    .array-data 4
        -0x416bd3c3    # -0.2894f
        -0x41f5dcc6    # -0.1349f
        0x3e90624e    # 0.282f
        -0x41f43958    # -0.1365f
        -0x416f34d7    # -0.2828f
        0x3df80347    # 0.1211f
        0x3e926e98    # 0.286f
        0x3dfb7e91    # 0.1228f
    .end array-data

    .line 78
    :array_176
    .array-data 4
        -0x418a3d71    # -0.24f
        -0x41a8f5c3    # -0.21f
        0x3e3851ec    # 0.18f
        0x3e428f5c    # 0.19f
    .end array-data

    .line 79
    :array_182
    .array-data 4
        -0x4175c28f    # -0.27f
        -0x41ae147b    # -0.205f
        0x3e99999a    # 0.3f
        0x0
    .end array-data

    .line 80
    :array_18e
    .array-data 4
        -0x41851eb8    # -0.245f
        -0x417d70a4    # -0.255f
        0x3eae147b    # 0.34f
        0x3da3d70a    # 0.08f
    .end array-data

    .line 81
    :array_19a
    .array-data 4
        -0x4229930c    # -0.1047f
        -0x421d14e4    # -0.1108f
        0x3dd2bd3c    # 0.1029f
        -0x421ba5e3    # -0.1115f
        -0x4229c77a    # -0.1046f
        0x3ddf6fd2    # 0.1091f
        0x3dd288ce    # 0.1028f
        0x3ddf6fd2    # 0.1091f
    .end array-data

    .line 82
    :array_1ae
    .array-data 4
        -0x423dd97f    # -0.0948f
        -0x423da512    # -0.0949f
        0x3db78034    # 0.0896f
        -0x423d07c8    # -0.0952f
        -0x423e425b
        0x3db46dc6    # 0.0881f
        0x3db645a2    # 0.089f
        0x3db2617c    # 0.0871f
    .end array-data

    .line 83
    :array_1c2
    .array-data 4
        -0x422c710d    # -0.1033f
        -0x41f7ced9    # -0.133f
        0x3dd3f7cf    # 0.1035f
        -0x41f7b4a2    # -0.1331f
        -0x46ae48e9    # -2.0E-4f
        0x3d401a37    # 0.0469f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyerDps(I)F
    .registers 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 270
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienRatSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->UfoSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    .line 271
    const/4 v2, 0x0

    array-length v3, v0

    array-length v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 272
    aget-object v3, v0, v2

    iget v3, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    aget-object v4, v1, v2

    iget v4, v4, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 273
    const/high16 v4, 0x42c80000    # 100.0f

    aget-object v0, v0, v2

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    aget-object v1, v1, v2

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 274
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v3

    div-float v0, v1, v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3b} :catch_3e

    move-result v1

    mul-float/2addr v0, v1

    .line 276
    :goto_3d
    return v0

    .line 275
    :catch_3e
    move-exception v0

    .line 276
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_3d
.end method

.method static draw(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 15

    .prologue
    const/4 v10, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 376
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v0, :cond_f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 390
    :cond_f
    return-void

    .line 377
    :cond_10
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->post(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;

    move-result-object v12

    .line 378
    if-eqz v12, :cond_f

    iget-object v0, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->art:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 379
    iget-object v0, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->mounts:[F

    array-length v0, v0

    div-int/lit8 v13, v0, 0x2

    move v11, v10

    .line 380
    :goto_24
    if-ge v11, v13, :cond_f

    .line 381
    iget-object v0, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/station/Station;->spin:F

    iget-object v2, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->mounts:[F

    mul-int/lit8 v3, v11, 0x2

    aget v2, v2, v3

    iget v3, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->side:F

    mul-float/2addr v2, v3

    iget-object v3, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->mounts:[F

    mul-int/lit8 v4, v11, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    iget v4, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->side:F

    mul-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModStationGuns;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 382
    iget-object v0, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ang:[F

    aget v5, v0, v11

    .line 383
    iget-object v0, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->kick:[I

    aget v0, v0, v11

    if-lez v0, :cond_77

    .line 384
    iget v0, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ts:F

    const v1, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, v1

    iget-object v1, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->kick:[I

    aget v1, v1, v11

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 385
    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 386
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModStationGuns;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v4, v8

    neg-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {v1, v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 388
    :cond_77
    iget-object v0, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->tex:Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModStationGuns;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModStationGuns;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v3, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ts:F

    iget v4, v12, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ts:F

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 380
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_24
.end method

.method static factionOf(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 4

    .prologue
    .line 261
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;

    if-eqz v0, :cond_b

    const-string v0, "kretari"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v0

    .line 264
    :goto_a
    return v0

    .line 262
    :cond_b
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModSector;->basePoint(Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_22

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModSector;->baseFaction(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    goto :goto_a

    .line 264
    :cond_22
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    goto :goto_a
.end method

.method static factionOfSender(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    .line 106
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    if-ne v0, p0, :cond_21

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    .line 107
    :goto_20
    return v0

    .line 106
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 107
    :cond_25
    const/4 v0, -0x1

    goto :goto_20
.end method

.method private static fire(Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 28

    .prologue
    .line 352
    move/from16 v0, p3

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 353
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v16, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v0, v2

    move/from16 v17, v0

    .line 354
    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ts:F

    mul-float v3, v3, v16

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    add-float v18, v2, v3

    move-object/from16 v0, p2

    iget v2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ts:F

    mul-float v3, v3, v17

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    add-float v19, v2, v3

    .line 355
    const/4 v2, 0x0

    move v11, v2

    :goto_38
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->shots:I

    if-ge v11, v2, :cond_d7

    .line 356
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->shots:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_c6

    int-to-float v2, v11

    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->shots:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->spread:F

    mul-float/2addr v2, v3

    :goto_56
    add-float v12, p3, v2

    .line 357
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->r:F

    move-object/from16 v0, p1

    iget v8, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->g:F

    move-object/from16 v0, p1

    iget v9, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->b:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move-object/from16 v0, p1

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    aget-object v10, v3, v10

    move/from16 v3, p5

    .line 358
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 359
    invoke-virtual/range {p6 .. p6}, Lfr/testudo/spacecorsair/business/Element;->getLevel()I

    move-result v3

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 360
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 361
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->speed:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    float-to-double v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 362
    iput v12, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 363
    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->range:F

    const v4, 0x3f933333    # 1.15f

    mul-float/2addr v3, v4

    move-object/from16 v0, p1

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->speed:F

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-long v4, v3

    iput-wide v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 364
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_38

    .line 356
    :cond_c6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->spread:F

    mul-float/2addr v2, v3

    goto :goto_56

    .line 366
    :cond_d7
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_186

    const/high16 v9, 0x43200000    # 160.0f

    .line 367
    :goto_e0
    const-string v2, "fx_core"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x430c0000    # 140.0f

    const v3, 0x3e99999a    # 0.3f

    mul-float v8, v9, v3

    move-object/from16 v0, p1

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->r:F

    move-object/from16 v0, p1

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->g:F

    move-object/from16 v0, p1

    iget v12, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->b:F

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 368
    const-string v2, "fx_glow"

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v5, v16, v3

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v6, v17, v3

    const/high16 v7, 0x435c0000    # 220.0f

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v8, v9, v3

    const v3, 0x3fcccccd    # 1.6f

    mul-float/2addr v9, v3

    move-object/from16 v0, p1

    iget v10, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->r:F

    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->g:F

    const v4, 0x3f666666    # 0.9f

    mul-float v11, v3, v4

    move-object/from16 v0, p1

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->b:F

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v12, v3, v4

    const v13, 0x3f333333    # 0.7f

    const/4 v14, 0x1

    const/4 v15, 0x1

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 369
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p7

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    const v5, 0x459c4000    # 5000.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 370
    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_185

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->SOUND:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    aget-object v3, v3, v4

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    if-ltz v2, :cond_194

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->PITCH:[F

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    aget v2, v2, v5

    :goto_16f
    const v5, 0x3f733333    # 0.95f

    const v6, 0x3f866666    # 1.05f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    mul-float/2addr v2, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->GAP:[J

    move-object/from16 v0, p1

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    aget-wide v6, v5, v6

    invoke-static {v3, v4, v2, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 371
    :cond_185
    return-void

    .line 366
    :cond_186
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    if-nez v2, :cond_190

    const/high16 v9, 0x42f00000    # 120.0f

    goto/16 :goto_e0

    :cond_190
    const/high16 v9, 0x42a00000    # 80.0f

    goto/16 :goto_e0

    .line 370
    :cond_194
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_16f
.end method

.method private static guns(Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;J)V
    .registers 22

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->aimLeft:J

    sub-long v2, v2, p3

    move-object/from16 v0, p0

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->aimLeft:J

    .line 289
    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->aimLeft:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->target:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->hostile(ILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 290
    :cond_2a
    const-wide/16 v2, 0x190

    move-object/from16 v0, p0

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->aimLeft:J

    .line 291
    invoke-static/range {p0 .. p2}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->pick(Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 293
    :cond_38
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->mounts:[F

    array-length v2, v2

    div-int/lit8 v11, v2, 0x2

    .line 295
    const/4 v2, 0x0

    move v10, v2

    :goto_45
    if-ge v10, v11, :cond_1f6

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->guns:[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->guns:[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    array-length v3, v3

    rem-int v3, v10, v3

    aget-object v3, v2, v3

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->reload:[I

    aget v2, v2, v10

    if-lez v2, :cond_68

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->reload:[I

    aget v4, v2, v10

    int-to-long v4, v4

    sub-long v4, v4, p3

    long-to-int v4, v4

    aput v4, v2, v10

    .line 298
    :cond_68
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->kick:[I

    aget v2, v2, v10

    if-lez v2, :cond_7c

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->kick:[I

    aget v4, v2, v10

    int-to-long v4, v4

    sub-long v4, v4, p3

    long-to-int v4, v4

    aput v4, v2, v10

    .line 299
    :cond_7c
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget v4, v4, Lfr/testudo/spacecorsair/business/world/station/Station;->spin:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->mounts:[F

    mul-int/lit8 v6, v10, 0x2

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->side:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->mounts:[F

    mul-int/lit8 v7, v10, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->side:F

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModStationGuns;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 300
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->outward(Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;I)F

    move-result v2

    .line 301
    if-nez v8, :cond_14c

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 302
    :goto_b4
    if-eqz v8, :cond_156

    iget v4, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->range:F

    cmpg-float v4, v6, v4

    if-gez v4, :cond_156

    const/4 v4, 0x1

    .line 303
    :goto_bd
    if-eqz v4, :cond_105

    .line 304
    iget v2, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->speed:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    div-float v2, v6, v2

    .line 305
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModStationGuns;->aim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, v8, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v9, v8, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v9, v12

    mul-float/2addr v9, v2

    add-float/2addr v7, v9

    iget-object v9, v8, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v12, v8, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v12, v12, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v12, v13

    mul-float/2addr v2, v12

    add-float/2addr v2, v9

    invoke-virtual {v5, v7, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 306
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModStationGuns;->aim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModStationGuns;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v5

    float-to-double v12, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModStationGuns;->aim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModStationGuns;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v5

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v2, v12

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v2, v5

    .line 308
    :cond_105
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ang:[F

    aget v5, v5, v10

    sub-float/2addr v2, v5

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLive;->normDelta(F)F

    move-result v2

    .line 309
    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->turn:F

    move-wide/from16 v0, p3

    long-to-float v7, v0

    mul-float/2addr v5, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v5, v7

    .line 310
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ang:[F

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ang:[F

    aget v9, v9, v10

    neg-float v12, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v9

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v5

    aput v5, v7, v10

    .line 311
    if-eqz v4, :cond_147

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->reload:[I

    aget v4, v4, v10

    if-gtz v4, :cond_147

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_159

    .line 295
    :cond_147
    :goto_147
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_45

    .line 301
    :cond_14c
    iget-object v4, v8, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModStationGuns;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    goto/16 :goto_b4

    .line 302
    :cond_156
    const/4 v4, 0x0

    goto/16 :goto_bd

    .line 312
    :cond_159
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->reload:[I

    iget v4, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->reload:I

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    double-to-float v9, v12

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v10

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->kick:[I

    const/16 v4, 0xa0

    aput v4, v2, v10

    .line 315
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->shot:F

    iget v4, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->reload:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    const/4 v4, 0x1

    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->shots:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v7, v2, v4

    .line 316
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModStationGuns;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ang:[F

    aget v5, v2, v10

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->fire(Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 317
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->logged:Z

    if-nez v2, :cond_147

    const-string v2, "corsair_nodialog"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_147

    .line 318
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->logged:Z

    .line 319
    const-string v2, "ModStationGuns"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->art:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fire at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dmg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_147

    .line 322
    :cond_1f6
    return-void
.end method

.method static hostile(ILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 144
    if-eqz p1, :cond_7

    iget-boolean v1, p1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v1, :cond_8

    .line 151
    :cond_7
    :goto_7
    return v0

    .line 145
    :cond_8
    instance-of v1, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v1, :cond_1b

    const-string v1, ""

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->playerWanted()Z

    move-result v2

    check-cast p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v3, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->rule(IILjava/lang/String;ZZ)Z

    move-result v0

    goto :goto_7

    .line 146
    :cond_1b
    iget-boolean v1, p1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_7

    .line 147
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->playerWanted()Z

    move-result v3

    invoke-static {p0, v1, v2, v3, v0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->rule(IILjava/lang/String;ZZ)Z

    move-result v0

    goto :goto_7

    .line 148
    :cond_31
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v1

    if-nez v1, :cond_7

    .line 149
    instance-of v1, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v1, :cond_4b

    const/4 v1, 0x3

    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->npcFaction(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0, v0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->rule(IILjava/lang/String;ZZ)Z

    move-result v0

    goto :goto_7

    .line 150
    :cond_4b
    instance-of v1, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v1, :cond_7

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModSector;->factionShip(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0, v0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->rule(IILjava/lang/String;ZZ)Z

    move-result v0

    goto :goto_7
.end method

.method static ignore(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 178
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v0, :cond_24

    move v1, v2

    .line 179
    :goto_10
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v0, :cond_26

    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v0, :cond_26

    move v0, v2

    .line 180
    :goto_1e
    if-nez v1, :cond_28

    if-nez v0, :cond_28

    move v2, v3

    .line 182
    :cond_23
    :goto_23
    return v2

    :cond_24
    move v1, v3

    .line 178
    goto :goto_10

    :cond_26
    move v0, v3

    .line 179
    goto :goto_1e

    .line 181
    :cond_28
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v0, :cond_30

    instance-of v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-nez v0, :cond_23

    .line 182
    :cond_30
    if-eqz v1, :cond_3e

    check-cast p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->side(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    if-eq v0, v2, :cond_23

    move v2, v3

    goto :goto_23

    :cond_3e
    check-cast p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->side(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    if-eq v0, v2, :cond_23

    move v2, v3

    goto :goto_23
.end method

.method static npcFaction(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 131
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 136
    :goto_c
    return-object v0

    .line 133
    :cond_d
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    if-nez v0, :cond_1d

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    if-nez v0, :cond_1d

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    if-nez v0, :cond_1d

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    if-eqz v0, :cond_20

    :cond_1d
    const-string v0, "kretari"

    goto :goto_c

    .line 134
    :cond_20
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    .line 135
    if-ltz v0, :cond_37

    const-string v1, "reaver"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v2, v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "reaver"

    goto :goto_c

    .line 136
    :cond_37
    const-string v0, ""

    goto :goto_c
.end method

.method private static outward(Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;I)F
    .registers 7

    .prologue
    .line 281
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->mounts:[F

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->mounts:[F

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    .line 282
    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget v3, v3, Lfr/testudo/spacecorsair/business/world/station/Station;->spin:F

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->side:F

    mul-float/2addr v0, v4

    iget v4, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->side:F

    mul-float/2addr v1, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModStationGuns;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v0, v1, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModStationGuns;->mz:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    return v0
.end method

.method private static pick(Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;)Lfr/testudo/spacecorsair/business/Element;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 326
    const/4 v2, 0x0

    .line 327
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->range:F

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->side:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    .line 328
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    invoke-static {v0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->hostile(ILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 329
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    .line 330
    cmpg-float v3, v0, v1

    if-gez v3, :cond_9a

    .line 332
    :goto_20
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModStationGuns;->enemies:Ljava/util/ArrayList;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/Mod;->enemiesInto(Ljava/util/List;)V

    move v4, v5

    move v2, v0

    move-object v3, p1

    .line 333
    :goto_28
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_53

    .line 334
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 335
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 336
    cmpg-float v6, v1, v2

    if-gez v6, :cond_97

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    invoke-static {v6, v0, p2}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->hostile(ILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 333
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    move-object v3, v0

    goto :goto_28

    .line 338
    :cond_53
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    if-ltz v0, :cond_91

    .line 339
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 340
    :goto_5f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_91

    .line 341
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 342
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-nez v1, :cond_78

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 340
    :cond_75
    :goto_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 343
    :cond_78
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 344
    cmpg-float v6, v1, v2

    if-gez v6, :cond_75

    iget v6, p0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    invoke-static {v6, v0, p2}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->hostile(ILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v6

    if-eqz v6, :cond_75

    move v2, v1

    move-object v3, v0

    goto :goto_75

    .line 347
    :cond_91
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->enemies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 348
    return-object v3

    :cond_97
    move v1, v2

    move-object v0, v3

    goto :goto_4e

    :cond_9a
    move v0, v1

    move-object p1, v2

    goto :goto_20
.end method

.method static playerWanted()Z
    .registers 1

    .prologue
    .line 117
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->heat()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static poiClass(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 256
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    if-nez v0, :cond_14

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    if-nez v0, :cond_14

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;

    if-nez v0, :cond_14

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/CasinoStation;

    if-nez v0, :cond_14

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static post(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;
    .registers 3

    .prologue
    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    if-ne v0, p0, :cond_1f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;

    .line 187
    :goto_1e
    return-object v0

    .line 186
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 187
    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method static rel(ILjava/lang/String;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 121
    if-ltz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 125
    :cond_b
    :goto_b
    return v0

    .line 122
    :cond_c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v1, v1, p0

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModRep;->index(Ljava/lang/String;)I

    move-result v2

    .line 123
    if-ltz v1, :cond_b

    if-ltz v2, :cond_b

    .line 124
    if-ne v1, v2, :cond_22

    const/4 v0, 0x2

    goto :goto_b

    .line 125
    :cond_22
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRep;->REL:[[I

    aget-object v0, v0, v1

    aget v0, v0, v2

    goto :goto_b
.end method

.method public static rule(IILjava/lang/String;ZZ)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 156
    packed-switch p1, :pswitch_data_2c

    :pswitch_5
    move v0, v1

    .line 163
    :cond_6
    :goto_6
    return v0

    .line 157
    :pswitch_7
    if-eqz p3, :cond_b

    if-eqz p4, :cond_6

    :cond_b
    move v0, v1

    goto :goto_6

    :pswitch_d
    move v0, p3

    .line 158
    goto :goto_6

    .line 160
    :pswitch_f
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    if-ltz p0, :cond_6

    .line 161
    invoke-static {p0, p2}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->rel(ILjava/lang/String;)I

    move-result v2

    if-lt v2, v0, :cond_6

    move v0, v1

    goto :goto_6

    .line 162
    :pswitch_21
    if-ltz p0, :cond_2a

    invoke-static {p0, p2}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->rel(ILjava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    :cond_2a
    move v0, v1

    goto :goto_6

    .line 156
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_d
        :pswitch_5
        :pswitch_f
        :pswitch_21
    .end packed-switch
.end method

.method private static scan(Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 218
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_b
    if-ltz v1, :cond_24

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->removed:Z

    if-eqz v0, :cond_20

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_b

    .line 219
    :cond_24
    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    move v2, v3

    .line 220
    :goto_27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_119

    .line 221
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 222
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v1, :cond_47

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_47

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->poiClass(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->post(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 220
    :cond_47
    :goto_47
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_27

    .line 223
    :cond_4b
    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 224
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoi;->artFor(Lfr/testudo/spacecorsair/business/world/station/Station;)Ljava/lang/String;

    move-result-object v5

    .line 225
    if-nez v5, :cond_d8

    const/4 v1, 0x0

    .line 226
    :goto_54
    if-eqz v1, :cond_47

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    if-eqz v6, :cond_47

    .line 227
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/station/Station;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v6

    .line 228
    if-eqz v6, :cond_47

    iget-object v7, v6, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v7, :cond_47

    .line 229
    new-instance v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;

    invoke-direct {v7}, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;-><init>()V

    .line 230
    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 231
    iput-object v5, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->art:Ljava/lang/String;

    .line 232
    iput-object v1, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->mounts:[F

    .line 233
    iget-object v8, v6, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v6, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->side:F

    .line 234
    iget v6, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->side:F

    const v8, 0x3e19999a    # 0.15f

    mul-float/2addr v6, v8

    iput v6, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ts:F

    .line 235
    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->factionOf(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    iput v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    .line 236
    iget v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    if-ltz v0, :cond_e2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    iget v6, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    aget-object v0, v0, v6

    :goto_97
    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->guns:[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    .line 237
    iget v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    if-ltz v0, :cond_e9

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget v6, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    aget-object v0, v0, v6

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->turretTex:Ljava/lang/String;

    :goto_a5
    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->tex:Ljava/lang/String;

    .line 238
    iget-object v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->tex:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->prefetch(Ljava/lang/String;)V

    .line 239
    const-string v0, "poi_base_"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    const/high16 v0, 0x40200000    # 2.5f

    .line 240
    :goto_b6
    iget v5, p1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->destroyerDps(I)F

    move-result v5

    mul-float/2addr v0, v5

    iput v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->shot:F

    .line 241
    iget-object v5, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->guns:[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    array-length v6, v5

    move v0, v3

    :goto_c7
    if-ge v0, v6, :cond_ef

    aget-object v8, v5, v0

    iget v9, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->range:F

    iget v8, v8, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->range:F

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->range:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 225
    :cond_d8
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModStationGuns;->MOUNTS:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    goto/16 :goto_54

    .line 236
    :cond_e2
    new-array v0, v10, [Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModStationGuns;->NEUTRAL:Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    aput-object v6, v0, v3

    goto :goto_97

    .line 237
    :cond_e9
    const-string v0, "hw_turret_cap_spartan"

    goto :goto_a5

    .line 239
    :cond_ec
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_b6

    .line 242
    :cond_ef
    array-length v0, v1

    div-int/lit8 v1, v0, 0x2

    .line 243
    new-array v0, v1, [F

    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ang:[F

    .line 244
    new-array v0, v1, [I

    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->reload:[I

    .line 245
    new-array v0, v1, [I

    iput-object v0, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->kick:[I

    move v0, v3

    .line 246
    :goto_ff
    if-ge v0, v1, :cond_112

    .line 247
    iget-object v5, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->ang:[F

    invoke-static {v7, v0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->outward(Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;I)F

    move-result v6

    aput v6, v5, v0

    .line 248
    iget-object v5, v7, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->reload:[I

    mul-int/lit16 v6, v0, 0xfa

    aput v6, v5, v0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_ff

    .line 250
    :cond_112
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 252
    :cond_119
    return-void
.end method

.method static side(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)I
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 170
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-nez v1, :cond_7

    const/4 v0, 0x0

    .line 173
    :cond_6
    :goto_6
    return v0

    .line 171
    :cond_7
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->post(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_6

    .line 173
    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->f:I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModStationGuns;->level:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1, p1, v2}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->hostile(ILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x2

    goto :goto_6
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 193
    :try_start_3
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 194
    if-nez v1, :cond_2c

    move-object v2, v0

    .line 195
    :goto_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->level:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v2, v0, :cond_1b

    .line 196
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModStationGuns;->level:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 198
    const-wide/16 v4, 0x0

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModStationGuns;->scanLeft:J

    .line 200
    :cond_1b
    if-eqz v2, :cond_2b

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_2b

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModSector;->excluded(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 215
    :cond_2b
    :goto_2b
    return-void

    .line 194
    :cond_2c
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object v2, v0

    goto :goto_c

    .line 201
    :cond_30
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModStationGuns;->scanLeft:J

    sub-long/2addr v4, p1

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModStationGuns;->scanLeft:J

    .line 202
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModStationGuns;->scanLeft:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_42

    .line 203
    const-wide/16 v4, 0x3e8

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModStationGuns;->scanLeft:J

    .line 204
    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->scan(Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 206
    :cond_42
    const/4 v0, 0x0

    move v1, v0

    :goto_44
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 207
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModStationGuns;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;

    .line 208
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/business/world/station/Station;->removed:Z

    if-eqz v3, :cond_5e

    .line 206
    :goto_5a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44

    .line 209
    :cond_5e
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->st:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    const v4, 0x460ca000    # 9000.0f

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->range:F

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_78

    const/4 v3, 0x0

    iput-object v3, v0, Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;->target:Lfr/testudo/spacecorsair/business/Element;

    goto :goto_5a

    .line 212
    :catch_76
    move-exception v0

    goto :goto_2b

    .line 210
    :cond_78
    invoke-static {v0, p0, v2, p1, p2}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->guns(Lfr/testudo/spacecorsair/mod/ModStationGuns$Post;Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/game/levels/LevelId;J)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_7b} :catch_76

    goto :goto_5a
.end method
