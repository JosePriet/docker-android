.class public final Lfr/testudo/spacecorsair/mod/ModWeapons;
.super Ljava/lang/Object;
.source "ModWeapons.java"


# static fields
.field public static final ARC:I = 0x5

.field public static final ARTY:I = 0x2

.field public static final AUTO:I = 0x1

.field public static final BASE:[Ljava/lang/String;

.field public static final BLAST:I = 0x3

.field static final COLOR:[[F

.field public static final COUNT:I = 0x6

.field public static final DISINT:I = 0x4

.field static final FAMILY_NAMES:[Ljava/lang/String;

.field static final GAP:[J

.field static final ICONS:[Ljava/lang/String;

.field static final NAME:[Ljava/lang/String;

.field public static final PRICE:[I

.field public static final RAIL:I

.field static final SOUND:[Ljava/lang/String;

.field static final SPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field static final STAT:[[F

.field static final TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field static final TIER_NAME:[Ljava/lang/String;

.field static arcCount:I

.field static final arcs:[F

.field private static final near:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static rampSince:J

.field private static rampTarget:Lfr/testudo/spacecorsair/business/Element;

.field private static sprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final stocked:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/world/station/Station;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static trail:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "modRailgun"

    aput-object v1, v0, v2

    const-string v1, "modAutocannon"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v3, "modArtillery"

    aput-object v3, v0, v1

    const-string v1, "modBlaster"

    aput-object v1, v0, v6

    const-string v1, "modDisintegrator"

    aput-object v1, v0, v9

    const-string v1, "modArcProjector"

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->BASE:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Railgun"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Autocannon"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v3, "Artillery"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Blaster"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "Disintegrator"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "Arc Projector"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->NAME:[Ljava/lang/String;

    .line 34
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "Light"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Standard"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v3, "Heavy"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Siege"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->TIER_NAME:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [[F

    new-array v1, v7, [F

    fill-array-data v1, :array_212

    aput-object v1, v0, v2

    new-array v1, v7, [F

    fill-array-data v1, :array_220

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-array v3, v7, [F

    fill-array-data v3, :array_22e

    aput-object v3, v0, v1

    new-array v1, v7, [F

    fill-array-data v1, :array_23c

    aput-object v1, v0, v6

    new-array v1, v7, [F

    fill-array-data v1, :array_24a

    aput-object v1, v0, v9

    new-array v1, v7, [F

    fill-array-data v1, :array_258

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [[F

    new-array v1, v6, [F

    fill-array-data v1, :array_266

    aput-object v1, v0, v2

    new-array v1, v6, [F

    fill-array-data v1, :array_270

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-array v3, v6, [F

    fill-array-data v3, :array_27a

    aput-object v3, v0, v1

    new-array v1, v6, [F

    fill-array-data v1, :array_284

    aput-object v1, v0, v6

    new-array v1, v6, [F

    fill-array-data v1, :array_28e

    aput-object v1, v0, v9

    new-array v1, v6, [F

    fill-array-data v1, :array_298

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    .line 47
    new-array v0, v9, [I

    fill-array-data v0, :array_2a2

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->PRICE:[I

    .line 49
    const/4 v0, 0x6

    filled-new-array {v0, v9}, [I

    move-result-object v0

    const-class v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->SPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move v3, v2

    .line 54
    :goto_fa
    const/4 v0, 0x6

    if-ge v3, v0, :cond_182

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;-><init>()V

    aput-object v1, v0, v3

    move v1, v2

    .line 56
    :goto_107
    if-ge v1, v9, :cond_17d

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_MULT:[F

    aget v4, v0, v1

    .line 58
    new-instance v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    .line 59
    if-nez v1, :cond_175

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    :goto_116
    iput-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    aget v0, v0, v1

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v2

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v8

    float-to-int v0, v0

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v0, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    float-to-int v0, v0

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v6

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 65
    iput v7, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v0, v0, v3

    aget v0, v0, v2

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v0, v0, v3

    aget v0, v0, v8

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v0, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    aget-object v0, v0, v3

    iput-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 70
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->SPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v3

    aput-object v5, v0, v1

    .line 56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_107

    .line 59
    :cond_175
    if-ne v1, v6, :cond_17a

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    goto :goto_116

    :cond_17a
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    goto :goto_116

    .line 54
    :cond_17d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_fa

    .line 87
    :cond_182
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Railgun"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Autocannon"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v3, "Artillery"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Blaster"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "Disintegrator"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "Arc Projector"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->FAMILY_NAMES:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "icon_railgun"

    aput-object v1, v0, v2

    const-string v1, "icon_autocannon"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v3, "icon_artillery"

    aput-object v3, v0, v1

    const-string v1, "icon_blaster"

    aput-object v1, v0, v6

    const-string v1, "icon_disintegrator"

    aput-object v1, v0, v9

    const-string v1, "icon_arc"

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->ICONS:[Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->stocked:Ljava/util/Map;

    .line 201
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wpn_rail"

    aput-object v1, v0, v2

    const-string v1, "wpn_auto"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "wpn_arty"

    aput-object v2, v0, v1

    const-string v1, "wpn_blast"

    aput-object v1, v0, v6

    const-string v1, "wpn_disint"

    aput-object v1, v0, v9

    const-string v1, "wpn_arc"

    aput-object v1, v0, v7

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->SOUND:[Ljava/lang/String;

    .line 202
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_2ae

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->GAP:[J

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    .line 257
    const/16 v0, 0x30

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    return-void

    .line 36
    nop

    :array_212
    .array-data 4
        0x43660000    # 230.0f
        0x449c4000    # 1250.0f
        0x42c80000    # 100.0f
        -0x3e300000    # -26.0f
        0x3fe66666    # 1.8f
    .end array-data

    :array_220
    .array-data 4
        0x41980000    # 19.0f
        0x42c80000    # 100.0f
        0x42a80000    # 84.0f
        -0x3ec00000    # -12.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_22e
    .array-data 4
        0x43d20000    # 420.0f
        0x45160000    # 2400.0f
        0x42c20000    # 97.0f
        -0x3ed00000    # -11.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_23c
    .array-data 4
        0x42780000    # 62.0f
        0x438c0000    # 280.0f
        0x42b80000    # 92.0f
        -0x3f200000    # -7.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_24a
    .array-data 4
        0x42080000    # 34.0f
        0x43480000    # 200.0f
        0x42c80000    # 100.0f
        -0x3ee00000    # -10.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_258
    .array-data 4
        0x42be0000    # 95.0f
        0x44020000    # 520.0f
        0x42c80000    # 100.0f
        -0x3ea00000    # -14.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 44
    :array_266
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_270
    .array-data 4
        0x3f800000    # 1.0f
        0x3f51eb85    # 0.82f
        0x3eb33333    # 0.35f
    .end array-data

    :array_27a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f0ccccd    # 0.55f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_284
    .array-data 4
        0x3eb33333    # 0.35f
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
    .end array-data

    :array_28e
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3e99999a    # 0.3f
    .end array-data

    :array_298
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    .line 47
    :array_2a2
    .array-data 4
        0x7530
        0x15f90
        0x3d090
        0x927c0
    .end array-data

    .line 202
    :array_2ae
    .array-data 8
        0x78
        0x46
        0xc8
        0x5a
        0x5a
        0x78
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SHOP_RULES(II)[[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    if-nez p1, :cond_19

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "replex laser inc"

    aput-object v2, v1, v5

    const-string v2, "Replex laser inc (Ventohigh)"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_19
    if-ne p1, v3, :cond_2e

    if-eq p0, v3, :cond_21

    if-eq p0, v6, :cond_21

    if-nez p0, :cond_2e

    :cond_21
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "replex laser inc"

    aput-object v2, v1, v5

    const-string v2, "Replex laser inc (Ventohigh)"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2e
    if-eq p1, v3, :cond_32

    if-ne p1, v4, :cond_49

    :cond_32
    if-eq p0, v3, :cond_38

    if-eq p0, v4, :cond_38

    if-ne p0, v7, :cond_49

    :cond_38
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "smuggler"

    aput-object v2, v1, v5

    const-string v2, "Smuggler stations (Pirate Bay, Solar Field)"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_49
    if-eq p1, v3, :cond_4d

    if-ne p1, v4, :cond_63

    :cond_4d
    if-eqz p0, :cond_56

    if-eq p0, v6, :cond_56

    if-eq p0, v4, :cond_56

    const/4 v1, 0x5

    if-ne p0, v1, :cond_63

    :cond_56
    new-array v1, v4, [Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/UniverseName;->SPARTAN_LASER_FACTORY:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "Laser shop (Spartan HQ)"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_63
    if-eq p1, v6, :cond_6c

    if-ne p1, v4, :cond_79

    if-eq p0, v7, :cond_6c

    const/4 v1, 0x5

    if-ne p0, v1, :cond_79

    :cond_6c
    new-array v1, v4, [Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/UniverseName;->STATION_OMICRON_PRIME_GOODS:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "Omicron goods station (Omicron Prime)"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method private static addArc(FFFF)V
    .registers 7

    .prologue
    .line 328
    sget v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcCount:I

    rem-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x6

    .line 329
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    aput p0, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v2, v0, 0x1

    aput p1, v1, v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v2, v0, 0x2

    aput p2, v1, v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v2, v0, 0x3

    aput p3, v1, v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v0, v0, 0x4

    const/high16 v2, 0x43200000    # 160.0f

    aput v2, v1, v0

    .line 330
    sget v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcCount:I

    .line 331
    return-void
.end method

.method public static bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Z)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 20

    .prologue
    .line 227
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v17

    .line 228
    if-gez v17, :cond_8

    const/4 v2, 0x0

    .line 250
    :goto_7
    return-object v2

    .line 229
    :cond_8
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->sprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-nez v2, :cond_a7

    .line 230
    const/16 v2, 0xc

    new-array v2, v2, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->sprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 231
    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "fx_bolt"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "fx_bolt"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "fx_core"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "fx_glow"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "fx_bolt"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "fx_spark"

    aput-object v4, v3, v2

    .line 232
    const/4 v2, 0x6

    new-array v4, v2, [[F

    const/4 v2, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1f2

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1fa

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_202

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_20a

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_212

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_21a

    aput-object v5, v4, v2

    .line 233
    const/4 v2, 0x0

    :goto_6d
    const/4 v5, 0x6

    if-ge v2, v5, :cond_a7

    .line 234
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->sprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v6, v3, v2

    aget-object v7, v4, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    aget-object v8, v4, v2

    const/4 v9, 0x1

    aget v8, v8, v9

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v6

    aput-object v6, v5, v2

    .line 235
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->sprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    add-int/lit8 v6, v2, 0x6

    aget-object v7, v3, v2

    aget-object v8, v4, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    const v9, 0x3fe66666    # 1.8f

    mul-float/2addr v8, v9

    aget-object v9, v4, v2

    const/4 v10, 0x1

    aget v9, v9, v10

    const v10, 0x3fcccccd    # 1.6f

    mul-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v7

    aput-object v7, v5, v6

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 238
    :cond_a7
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->sprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eqz p1, :cond_133

    const/4 v2, 0x6

    :goto_ac
    add-int v2, v2, v17

    aget-object v16, v3, v2

    .line 239
    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v2, :cond_c2

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_136

    const-string v2, "fx_core"

    :goto_bd
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModFx;->rebind(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;)V

    .line 240
    :cond_c2
    if-nez v17, :cond_14b

    .line 241
    const-string v2, "fx_beam"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43a00000    # 320.0f

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x40c00000    # 6.0f

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v10, v10, v17

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v11, v11, v17

    const/4 v12, 0x1

    aget v11, v11, v12

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v12, v12, v17

    const/4 v13, 0x2

    aget v12, v12, v13

    const v13, 0x3f59999a    # 0.85f

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 242
    const-string v2, "fx_glow"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, 0x428c0000    # 70.0f

    const/high16 v9, 0x41a00000    # 20.0f

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v10, v10, v17

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v11, v11, v17

    const/4 v12, 0x1

    aget v11, v11, v12

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v12, v12, v17

    const/4 v13, 0x2

    aget v12, v12, v13

    const v13, 0x3f19999a    # 0.6f

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 250
    :cond_12a
    :goto_12a
    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v2, :cond_1ed

    const/4 v2, 0x0

    goto/16 :goto_7

    .line 238
    :cond_133
    const/4 v2, 0x0

    goto/16 :goto_ac

    .line 239
    :cond_136
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_13e

    const-string v2, "fx_glow"

    goto :goto_bd

    :cond_13e
    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_147

    const-string v2, "fx_spark"

    goto/16 :goto_bd

    :cond_147
    const-string v2, "fx_bolt"

    goto/16 :goto_bd

    .line 243
    :cond_14b
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_1a5

    .line 244
    const-string v2, "fx_glow"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43200000    # 160.0f

    const/high16 v8, 0x42dc0000    # 110.0f

    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f19999a    # 0.6f

    const/high16 v12, 0x3e800000    # 0.25f

    const/high16 v13, 0x3f400000    # 0.75f

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 245
    sget v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->trail:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->trail:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_12a

    .line 246
    const-string v2, "fx_smoke"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x44610000    # 900.0f

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v9, 0x42a00000    # 80.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const v11, 0x3ee66666    # 0.45f

    const v12, 0x3ecccccd    # 0.4f

    const v13, 0x3f19999a    # 0.6f

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto :goto_12a

    .line 247
    :cond_1a5
    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_12a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_12a

    .line 248
    const-string v2, "fx_spark"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v4, -0x3ea00000    # -14.0f

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, -0x3ea00000    # -14.0f

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42f00000    # 120.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x41000000    # 8.0f

    const v10, 0x3f333333    # 0.7f

    const v11, 0x3f59999a    # 0.85f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto/16 :goto_12a

    :cond_1ed
    move-object/from16 v2, v16

    .line 250
    goto/16 :goto_7

    .line 232
    nop

    :array_1f2
    .array-data 4
        0x41c00000    # 24.0f
        0x433e0000    # 190.0f
    .end array-data

    :array_1fa
    .array-data 4
        0x41200000    # 10.0f
        0x42100000    # 36.0f
    .end array-data

    :array_202
    .array-data 4
        0x42800000    # 64.0f
        0x42800000    # 64.0f
    .end array-data

    :array_20a
    .array-data 4
        0x42300000    # 44.0f
        0x42300000    # 44.0f
    .end array-data

    :array_212
    .array-data 4
        0x41900000    # 18.0f
        0x42800000    # 64.0f
    .end array-data

    :array_21a
    .array-data 4
        0x42300000    # 44.0f
        0x42300000    # 44.0f
    .end array-data
.end method

.method public static desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->parse(Ljava/lang/String;)[I

    move-result-object v1

    .line 122
    if-nez v1, :cond_d

    const/4 v0, 0x0

    .line 132
    :goto_c
    return-object v0

    .line 124
    :cond_d
    aget v0, v1, v3

    packed-switch v0, :pswitch_data_66

    .line 130
    const-string v0, "<b>Arc Projector</b>: lightning bolts that jump from the target to 2 more enemies within 450 (60% damage each)."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br><br><font color=\'#6ad0ff\'><b>Sold at:</b> "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v1, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->soldAt(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 125
    :pswitch_43
    const-string v0, "<b>Railgun</b>: magnetic slug thrower. Very long range, near-instant slugs, heavy damage per shot, slow reload."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 126
    :pswitch_4a
    const-string v0, "<b>Autocannon</b>: rapid-fire projectile gun. Small shells, huge rate of fire, spread at range."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 127
    :pswitch_51
    const-string v0, "<b>Artillery</b>: siege gun. Very slow reload, enormous shells that also hit everything within 180 of the impact (50%)."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 128
    :pswitch_58
    const-string v0, "<b>Blaster</b>: short-range plasma brawler. The highest damage per second, but the bolts fizzle out quickly."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 129
    :pswitch_5f
    const-string v0, "<b>Disintegrator</b>: entropic beam pulses. Damage ramps up to +100% while you keep hitting the same target, resets when you switch."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 124
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_43
        :pswitch_4a
        :pswitch_51
        :pswitch_58
        :pswitch_5f
    .end packed-switch
.end method

.method static drawArcs(J)V
    .registers 16

    .prologue
    .line 335
    const/4 v0, 0x0

    move v11, v0

    :goto_2
    const/16 v0, 0x8

    if-ge v11, v0, :cond_93

    .line 336
    mul-int/lit8 v0, v11, 0x6

    .line 337
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v2, v0, 0x4

    aget v1, v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_17

    .line 335
    :goto_13
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2

    .line 338
    :cond_17
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v2, v0, 0x4

    aget v3, v1, v2

    long-to-float v4, p0

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 339
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    aget v10, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v2, v0, 0x1

    aget v9, v1, v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v2, v0, 0x2

    aget v12, v1, v2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v0, v0, 0x3

    aget v13, v1, v0

    .line 341
    const/4 v2, 0x1

    move v8, v2

    move v1, v9

    move v0, v10

    :goto_3b
    const/4 v2, 0x7

    if-gt v8, v2, :cond_7b

    .line 342
    int-to-float v2, v8

    const/high16 v3, 0x40e00000    # 7.0f

    div-float v3, v2, v3

    .line 343
    sub-float v2, v12, v10

    mul-float/2addr v2, v3

    add-float v4, v10, v2

    const/4 v2, 0x7

    if-ge v8, v2, :cond_77

    const/high16 v2, -0x3e500000    # -22.0f

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    :goto_53
    add-float/2addr v2, v4

    .line 344
    sub-float v4, v13, v9

    mul-float/2addr v3, v4

    add-float v4, v9, v3

    const/4 v3, 0x7

    if-ge v8, v3, :cond_79

    const/high16 v3, -0x3e500000    # -22.0f

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v3, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    :goto_64
    add-float/2addr v3, v4

    .line 345
    const/high16 v4, 0x3f400000    # 0.75f

    const v5, 0x3f59999a    # 0.85f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModFx;->line(FFFFFFFF)V

    .line 341
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v1, v3

    move v0, v2

    goto :goto_3b

    .line 343
    :cond_77
    const/4 v2, 0x0

    goto :goto_53

    .line 344
    :cond_79
    const/4 v3, 0x0

    goto :goto_64

    .line 349
    :cond_7b
    const-string v0, "fx_glow"

    const/high16 v3, 0x428c0000    # 70.0f

    const/high16 v4, 0x428c0000    # 70.0f

    const/4 v5, 0x0

    const v6, 0x3f0ccccd    # 0.55f

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f4ccccd    # 0.8f

    const/4 v10, 0x1

    move v1, v12

    move v2, v13

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto :goto_13

    .line 351
    :cond_93
    return-void
.end method

.method static family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I
    .registers 7

    .prologue
    const/4 v5, 0x6

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 81
    if-nez p0, :cond_6

    .line 84
    :cond_5
    :goto_5
    return v0

    :cond_6
    move v1, v2

    .line 82
    :goto_7
    if-ge v1, v5, :cond_1d

    move v3, v2

    :goto_a
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1a

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWeapons;->SPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    if-ne v4, p0, :cond_17

    move v0, v1

    goto :goto_5

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    move v1, v2

    .line 83
    :goto_1e
    if-ge v1, v5, :cond_5

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    aget-object v3, v3, v1

    if-ne v2, v3, :cond_2a

    move v0, v1

    goto :goto_5

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method static familyName(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    if-ltz p0, :cond_a

    const/4 v0, 0x6

    if-ge p0, v0, :cond_a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->FAMILY_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_9
    return-object v0

    :cond_a
    const-string v0, ""

    goto :goto_9
.end method

.method static familyOf(Ljava/lang/Object;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 95
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-nez v1, :cond_6

    .line 98
    :cond_5
    :goto_5
    return v0

    .line 96
    :cond_6
    check-cast p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 97
    const/4 v1, 0x0

    :goto_b
    const/4 v3, 0x6

    if-ge v1, v3, :cond_5

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    aget-object v3, v3, v1

    if-ne v3, v2, :cond_16

    move v0, v1

    goto :goto_5

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public static label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 116
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->parse(Ljava/lang/String;)[I

    move-result-object v0

    .line 117
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->TIER_NAME:[Ljava/lang/String;

    const/4 v3, 0x1

    aget v3, v0, v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->NAME:[Ljava/lang/String;

    const/4 v3, 0x0

    aget v0, v0, v3

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static onBullet(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/Object;)V
    .registers 16

    .prologue
    const/high16 v7, 0x42f00000    # 120.0f

    const/4 v8, 0x2

    .line 187
    :try_start_3
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v10

    .line 188
    if-gez v10, :cond_a

    .line 199
    :goto_9
    return-void

    .line 189
    :cond_a
    check-cast p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 190
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v0, v0, v10

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    .line 191
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v0, v0, v10

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    .line 192
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v0, v0, v10

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    .line 193
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->a:F

    .line 194
    iget-wide v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    long-to-float v0, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v1, v1, v10

    const/4 v2, 0x4

    aget v1, v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 195
    const-string v0, "fx_core"

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42f00000    # 120.0f

    const/high16 v6, 0x41f00000    # 30.0f

    if-ne v10, v8, :cond_6b

    :goto_4b
    sget-object v8, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v8, v8, v10

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v9, v9, v10

    const/4 v11, 0x1

    aget v9, v9, v11

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v10, v11, v10

    const/4 v11, 0x2

    aget v10, v10, v11

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_68} :catch_69

    goto :goto_9

    .line 196
    :catch_69
    move-exception v0

    goto :goto_9

    .line 195
    :cond_6b
    if-nez v10, :cond_70

    const/high16 v7, 0x42b40000    # 90.0f

    goto :goto_4b

    :cond_70
    const/high16 v7, 0x42480000    # 50.0f

    goto :goto_4b
.end method

.method public static onImpact(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 19

    .prologue
    .line 263
    :try_start_0
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v2

    .line 264
    if-ltz v2, :cond_8

    if-nez p1, :cond_9

    .line 325
    :cond_8
    :goto_8
    return-void

    .line 265
    :cond_9
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 266
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v12, v3, v2

    .line 267
    packed-switch v2, :pswitch_data_242

    .line 319
    :pswitch_14
    const-string v2, "fx_core"

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x430c0000    # 140.0f

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v10, 0x0

    aget v10, v12, v10

    const/4 v11, 0x1

    aget v11, v12, v11

    const/4 v13, 0x2

    aget v12, v12, v13

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto :goto_8

    .line 322
    :catch_3c
    move-exception v2

    goto :goto_8

    .line 269
    :pswitch_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 270
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampTarget:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_4c

    sput-object p1, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampTarget:Lfr/testudo/spacecorsair/business/Element;

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampSince:J

    .line 271
    :cond_4c
    const/high16 v4, 0x3f800000    # 1.0f

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampSince:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    const v3, 0x453b8000    # 3000.0f

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 272
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v11

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 273
    const-string v2, "fx_core"

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43200000    # 160.0f

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v9, 0x42700000    # 60.0f

    const/high16 v10, 0x42a00000    # 80.0f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3e800000    # 0.25f

    const v13, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v13

    add-float/2addr v11, v12

    const v12, 0x3e99999a    # 0.3f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto/16 :goto_8

    .line 277
    :pswitch_96
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/Mod;->enemiesInto(Ljava/util/List;)V

    .line 278
    const/4 v2, 0x0

    move v3, v2

    :goto_9d
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_da

    .line 279
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 280
    move-object/from16 v0, p1

    if-eq v2, v0, :cond_b5

    iget-boolean v4, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v4, :cond_b9

    .line 278
    :cond_b5
    :goto_b5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9d

    .line 281
    :cond_b9
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p1

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b5

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v5, v0}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_b5

    .line 283
    :cond_da
    const-string v2, "fx_core"

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43820000    # 260.0f

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x43820000    # 260.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f400000    # 0.75f

    const v12, 0x3ecccccd    # 0.4f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 284
    const-string v2, "fx_shock"

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43be0000    # 380.0f

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x43be0000    # 380.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0ccccd    # 0.55f

    const v12, 0x3e4ccccd    # 0.2f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 285
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_127
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_16c

    .line 286
    const-string v2, "fx_smoke"

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, -0x3d900000    # -60.0f

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    const/high16 v6, -0x3d900000    # -60.0f

    const/high16 v7, 0x42700000    # 60.0f

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v6

    const/high16 v7, 0x44960000    # 1200.0f

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x42f00000    # 120.0f

    const v10, 0x3eb33333    # 0.35f

    const v11, 0x3ea8f5c3    # 0.33f

    const v12, 0x3e99999a    # 0.3f

    const v13, 0x3f19999a    # 0.6f

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 287
    const v2, 0x3f99999a    # 1.2f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 285
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_127

    .line 289
    :cond_16c
    const-string v2, "titan_blast"

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x3fa00000    # 1.25f

    const-wide/16 v6, 0x96

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_8

    .line 293
    :pswitch_17a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/Mod;->enemiesInto(Ljava/util/List;)V

    .line 295
    const/4 v3, 0x0

    .line 296
    const/4 v2, 0x0

    move v7, v2

    move v8, v3

    move-object/from16 v9, p1

    :goto_185
    const/4 v2, 0x2

    if-ge v7, v2, :cond_1bd

    .line 297
    const/4 v5, 0x0

    .line 298
    const/high16 v3, 0x43e10000    # 450.0f

    .line 299
    const/4 v2, 0x0

    move v6, v2

    :goto_18d
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_1bb

    .line 300
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 301
    move-object/from16 v0, p1

    if-eq v2, v0, :cond_23f

    if-eq v2, v9, :cond_23f

    iget-boolean v4, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v4, :cond_1ad

    move-object v2, v5

    .line 299
    :goto_1a8
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-object v5, v2

    goto :goto_18d

    .line 302
    :cond_1ad
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v10, v9, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v10}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    .line 303
    cmpg-float v10, v4, v3

    if-gez v10, :cond_23f

    move v3, v4

    goto :goto_1a8

    .line 305
    :cond_1bb
    if-nez v5, :cond_1e5

    .line 312
    :cond_1bd
    const-string v2, "fx_spark"

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43480000    # 200.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v10, 0x0

    aget v10, v12, v10

    const/4 v11, 0x1

    aget v11, v12, v11

    const/4 v13, 0x2

    aget v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto/16 :goto_8

    .line 306
    :cond_1e5
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p0

    invoke-virtual {v5, v2, v3, v0}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 307
    iget-object v2, v9, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v9, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3, v4, v6}, Lfr/testudo/spacecorsair/mod/ModWeapons;->addArc(FFFF)V

    .line 308
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v3, v8, 0x1

    .line 296
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v3

    move-object v9, v5

    goto/16 :goto_185

    .line 316
    :pswitch_217
    const-string v2, "fx_streak"

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43480000    # 200.0f

    const/high16 v8, 0x42f00000    # 120.0f

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v10, 0x0

    aget v10, v12, v10

    const/4 v11, 0x1

    aget v11, v12, v11

    const/4 v13, 0x2

    aget v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V
    :try_end_23d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23d} :catch_3c

    goto/16 :goto_8

    :cond_23f
    move-object v2, v5

    goto/16 :goto_1a8

    .line 267
    :pswitch_data_242
    .packed-switch 0x0
        :pswitch_217
        :pswitch_14
        :pswitch_96
        :pswitch_14
        :pswitch_3e
        :pswitch_17a
    .end packed-switch
.end method

.method private static parse(Ljava/lang/String;)[I
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 106
    move v3, v4

    :goto_4
    const/4 v0, 0x6

    if-ge v3, v0, :cond_5a

    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->BASE:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 106
    :cond_11
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 108
    :cond_15
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->BASE:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    new-array v0, v7, [I

    aput v3, v0, v4

    aput v4, v0, v2

    .line 112
    :goto_2d
    return-object v0

    :cond_2e
    move v1, v2

    .line 110
    :goto_2f
    const/4 v0, 0x4

    if-ge v1, v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    aget v6, v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    new-array v0, v7, [I

    aput v3, v0, v4

    aput v1, v0, v2

    goto :goto_2d

    :cond_56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 112
    :cond_5a
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public static playFire(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 8

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 207
    :try_start_4
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v4

    .line 208
    if-gez v4, :cond_d

    .line 217
    :goto_c
    return v0

    .line 209
    :cond_d
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 210
    if-nez v2, :cond_36

    const/4 v2, -0x1

    move v3, v2

    .line 211
    :goto_17
    if-ne v3, v5, :cond_3a

    const v2, 0x3f3851ec    # 0.72f

    .line 213
    :goto_1c
    if-ne v3, v5, :cond_50

    .line 214
    :goto_1e
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->SOUND:[Ljava/lang/String;

    aget-object v3, v3, v4

    const v5, 0x3f75c28f    # 0.96f

    const v6, 0x3f851eb8    # 1.04f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    mul-float/2addr v2, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->GAP:[J

    aget-wide v4, v5, v4

    invoke-static {v3, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 215
    const/4 v0, 0x1

    goto :goto_c

    .line 210
    :cond_36
    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_38} :catch_53

    move v3, v2

    goto :goto_17

    .line 211
    :cond_3a
    const/4 v2, 0x4

    if-eq v3, v2, :cond_40

    const/4 v2, 0x5

    if-ne v3, v2, :cond_44

    :cond_40
    const v2, 0x3f570a3d    # 0.84f

    goto :goto_1c

    .line 212
    :cond_44
    const/4 v2, 0x2

    if-eq v3, v2, :cond_4a

    const/4 v2, 0x3

    if-ne v3, v2, :cond_4e

    :cond_4a
    const v2, 0x3f6e147b    # 0.93f

    goto :goto_1c

    :cond_4e
    move v2, v1

    goto :goto_1c

    .line 213
    :cond_50
    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_1e

    .line 216
    :catch_53
    move-exception v1

    goto :goto_c
.end method

.method private static soldAt(II)Ljava/lang/String;
    .registers 8

    .prologue
    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->SHOP_RULES(II)[[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_18

    aget-object v4, v2, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 139
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "rare drop"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    const-string v0, ", "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method public static spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    .registers 3

    .prologue
    .line 77
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->SPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    div-int/lit8 v1, p0, 0x4

    aget-object v0, v0, v1

    rem-int/lit8 v1, p0, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static stockShops()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 158
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v7, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    move v6, v3

    .line 159
    :goto_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_7f

    .line 160
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 161
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v1, :cond_22

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->stocked:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 159
    :cond_22
    :goto_22
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_a

    .line 162
    :cond_26
    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 163
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 164
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    move v5, v3

    move v1, v3

    .line 166
    :goto_34
    const/4 v2, 0x6

    if-ge v5, v2, :cond_74

    move v4, v3

    .line 167
    :goto_38
    const/4 v2, 0x4

    if-ge v4, v2, :cond_70

    .line 168
    invoke-static {v5, v4}, Lfr/testudo/spacecorsair/mod/ModWeapons;->SHOP_RULES(II)[[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v2, v3

    :goto_41
    if-ge v2, v10, :cond_6c

    aget-object v11, v9, v2

    .line 169
    const/4 v12, 0x0

    aget-object v12, v11, v12

    if-eqz v12, :cond_69

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_69

    .line 170
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v5, v4}, Lfr/testudo/spacecorsair/mod/ModWeapons;->typeName(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v11

    invoke-static {v11}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v11

    invoke-virtual {v1, v11}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 171
    const/4 v1, 0x1

    .line 168
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 167
    :cond_6c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_38

    .line 166
    :cond_70
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_34

    .line 176
    :cond_74
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->stocked:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7d} :catch_7e

    goto :goto_22

    .line 178
    :catch_7e
    move-exception v0

    .line 181
    :cond_7f
    return-void
.end method

.method static typeName(II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 102
    if-nez p1, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->BASE:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->BASE:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
