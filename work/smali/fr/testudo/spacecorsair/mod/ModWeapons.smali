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

.field public static final RESKIN_BASE:[Ljava/lang/String;

.field static final RESKIN_COLOR:[[F

.field static final RESKIN_FACTION:[Ljava/lang/String;

.field static final RESKIN_NAME:[Ljava/lang/String;

.field static final RESKIN_PARENT:[I

.field static final RESKIN_STAT:[[F

.field static final RSPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

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

.field private static rampLastE:J

.field private static rampSince:J

.field private static rampSinceE:J

.field private static rampTarget:Lfr/testudo/spacecorsair/business/Element;

.field private static rampTargetE:Lfr/testudo/spacecorsair/business/Element;

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
    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x3

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "modRailgun"

    aput-object v1, v0, v2

    const-string v1, "modAutocannon"

    aput-object v1, v0, v7

    const-string v1, "modArtillery"

    aput-object v1, v0, v9

    const-string v1, "modBlaster"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v3, "modDisintegrator"

    aput-object v3, v0, v1

    const-string v1, "modArcProjector"

    aput-object v1, v0, v8

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

    aput-object v1, v0, v7

    const-string v1, "Artillery"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "Blaster"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v3, "Disintegrator"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Arc Projector"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->NAME:[Ljava/lang/String;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Light"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Standard"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Heavy"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "Siege"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->TIER_NAME:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [[F

    new-array v1, v8, [F

    fill-array-data v1, :array_318

    aput-object v1, v0, v2

    new-array v1, v8, [F

    fill-array-data v1, :array_326

    aput-object v1, v0, v7

    new-array v1, v8, [F

    fill-array-data v1, :array_334

    aput-object v1, v0, v9

    new-array v1, v8, [F

    fill-array-data v1, :array_342

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v3, v8, [F

    fill-array-data v3, :array_350

    aput-object v3, v0, v1

    new-array v1, v8, [F

    fill-array-data v1, :array_35e

    aput-object v1, v0, v8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [[F

    new-array v1, v6, [F

    fill-array-data v1, :array_36c

    aput-object v1, v0, v2

    new-array v1, v6, [F

    fill-array-data v1, :array_376

    aput-object v1, v0, v7

    new-array v1, v6, [F

    fill-array-data v1, :array_380

    aput-object v1, v0, v9

    new-array v1, v6, [F

    fill-array-data v1, :array_38a

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v3, v6, [F

    fill-array-data v3, :array_394

    aput-object v3, v0, v1

    new-array v1, v6, [F

    fill-array-data v1, :array_39e

    aput-object v1, v0, v8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3a8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->PRICE:[I

    .line 49
    const/4 v0, 0x6

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

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
    :goto_fc
    const/4 v0, 0x6

    if-ge v3, v0, :cond_183

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;-><init>()V

    aput-object v1, v0, v3

    move v1, v2

    .line 56
    :goto_109
    const/4 v0, 0x4

    if-ge v1, v0, :cond_17e

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_MULT:[F

    aget v4, v0, v1

    .line 58
    new-instance v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    .line 59
    if-nez v1, :cond_176

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    :goto_119
    iput-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_REQ:[I

    aget v0, v0, v1

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v2

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v7

    float-to-int v0, v0

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v9

    float-to-int v0, v0

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v6

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 65
    iput v8, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v0, v0, v3

    aget v0, v0, v2

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v0, v0, v3

    aget v0, v0, v7

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v0, v0, v3

    aget v0, v0, v9

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

    goto :goto_109

    .line 59
    :cond_176
    if-ne v1, v6, :cond_17b

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    goto :goto_119

    :cond_17b
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    goto :goto_119

    .line 54
    :cond_17e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_fc

    .line 77
    :cond_183
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "modFlak"

    aput-object v1, v0, v2

    const-string v1, "modLance"

    aput-object v1, v0, v7

    const-string v1, "modBioSpine"

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_BASE:[Ljava/lang/String;

    .line 78
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Flak"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Lance"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Bio-spines"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_NAME:[Ljava/lang/String;

    .line 79
    new-array v0, v6, [I

    fill-array-data v0, :array_3b4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_PARENT:[I

    .line 80
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "reaver"

    aput-object v1, v0, v2

    const-string v1, "helion"

    aput-object v1, v0, v7

    const-string v1, "kretari"

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_FACTION:[Ljava/lang/String;

    .line 81
    new-array v0, v6, [[F

    new-array v1, v8, [F

    fill-array-data v1, :array_3be

    aput-object v1, v0, v2

    new-array v1, v8, [F

    fill-array-data v1, :array_3cc

    aput-object v1, v0, v7

    new-array v1, v8, [F

    fill-array-data v1, :array_3da

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_STAT:[[F

    .line 86
    new-array v0, v6, [[F

    new-array v1, v6, [F

    fill-array-data v1, :array_3e8

    aput-object v1, v0, v2

    new-array v1, v6, [F

    fill-array-data v1, :array_3f2

    aput-object v1, v0, v7

    new-array v1, v6, [F

    fill-array-data v1, :array_3fc

    aput-object v1, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_COLOR:[[F

    .line 87
    const/4 v0, 0x4

    filled-new-array {v6, v0}, [I

    move-result-object v0

    const-class v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RSPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    move v3, v2

    .line 90
    :goto_208
    if-ge v3, v6, :cond_288

    move v1, v2

    .line 91
    :goto_20b
    const/4 v0, 0x4

    if-ge v1, v0, :cond_284

    .line 92
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_MULT:[F

    aget v4, v0, v1

    .line 93
    new-instance v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v5}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    .line 94
    if-nez v1, :cond_27c

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    :goto_21b
    iput-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 95
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_REQ:[I

    aget v0, v0, v1

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v2

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 97
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v7

    float-to-int v0, v0

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v9

    float-to-int v0, v0

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_STAT:[[F

    aget-object v0, v0, v3

    aget v0, v0, v6

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 100
    iput v8, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_COLOR:[[F

    aget-object v0, v0, v3

    aget v0, v0, v2

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_COLOR:[[F

    aget-object v0, v0, v3

    aget v0, v0, v7

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_COLOR:[[F

    aget-object v0, v0, v3

    aget v0, v0, v9

    iput v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 104
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_PARENT:[I

    aget v4, v4, v3

    aget-object v0, v0, v4

    iput-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RSPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v3

    aput-object v5, v0, v1

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20b

    .line 94
    :cond_27c
    if-ne v1, v6, :cond_281

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    goto :goto_21b

    :cond_281
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    goto :goto_21b

    .line 90
    :cond_284
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_208

    .line 134
    :cond_288
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Railgun"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Autocannon"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "Artillery"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "Blaster"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v3, "Disintegrator"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Arc Projector"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->FAMILY_NAMES:[Ljava/lang/String;

    .line 135
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "icon_railgun"

    aput-object v1, v0, v2

    const-string v1, "icon_autocannon"

    aput-object v1, v0, v7

    const-string v1, "icon_artillery"

    aput-object v1, v0, v9

    const-string v1, "icon_blaster"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v3, "icon_disintegrator"

    aput-object v3, v0, v1

    const-string v1, "icon_arc"

    aput-object v1, v0, v8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->ICONS:[Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->stocked:Ljava/util/Map;

    .line 266
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wpn_rail"

    aput-object v1, v0, v2

    const-string v1, "wpn_auto"

    aput-object v1, v0, v7

    const-string v1, "wpn_arty"

    aput-object v1, v0, v9

    const-string v1, "wpn_blast"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "wpn_disint"

    aput-object v2, v0, v1

    const-string v1, "wpn_arc"

    aput-object v1, v0, v8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->SOUND:[Ljava/lang/String;

    .line 267
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_406

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->GAP:[J

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    .line 322
    const/16 v0, 0x30

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    return-void

    .line 36
    nop

    :array_318
    .array-data 4
        0x43660000    # 230.0f
        0x449c4000    # 1250.0f
        0x42c80000    # 100.0f
        -0x3e300000    # -26.0f
        0x3fe66666    # 1.8f
    .end array-data

    :array_326
    .array-data 4
        0x41980000    # 19.0f
        0x42c80000    # 100.0f
        0x42a80000    # 84.0f
        -0x3ec00000    # -12.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_334
    .array-data 4
        0x43d20000    # 420.0f
        0x45160000    # 2400.0f
        0x42c20000    # 97.0f
        -0x3ed00000    # -11.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_342
    .array-data 4
        0x42780000    # 62.0f
        0x438c0000    # 280.0f
        0x42b80000    # 92.0f
        -0x3f200000    # -7.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_350
    .array-data 4
        0x42080000    # 34.0f
        0x43480000    # 200.0f
        0x42c80000    # 100.0f
        -0x3ee00000    # -10.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_35e
    .array-data 4
        0x42be0000    # 95.0f
        0x44020000    # 520.0f
        0x42c80000    # 100.0f
        -0x3ea00000    # -14.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 44
    :array_36c
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_376
    .array-data 4
        0x3f800000    # 1.0f
        0x3f51eb85    # 0.82f
        0x3eb33333    # 0.35f
    .end array-data

    :array_380
    .array-data 4
        0x3f800000    # 1.0f
        0x3f0ccccd    # 0.55f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_38a
    .array-data 4
        0x3eb33333    # 0.35f
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
    .end array-data

    :array_394
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3e99999a    # 0.3f
    .end array-data

    :array_39e
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    .line 47
    :array_3a8
    .array-data 4
        0x7530
        0x15f90
        0x3d090
        0x927c0
    .end array-data

    .line 79
    :array_3b4
    .array-data 4
        0x1
        0x3
        0x1
    .end array-data

    .line 81
    :array_3be
    .array-data 4
        0x41d00000    # 26.0f
        0x430c0000    # 140.0f
        0x428c0000    # 70.0f
        -0x3ed00000    # -11.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_3cc
    .array-data 4
        0x43160000    # 150.0f
        0x442f0000    # 700.0f
        0x42c40000    # 98.0f
        -0x3e800000    # -16.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_3da
    .array-data 4
        0x41c00000    # 24.0f
        0x42f00000    # 120.0f
        0x42b00000    # 88.0f
        -0x3ee00000    # -10.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    .line 86
    :array_3e8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
    .end array-data

    :array_3f2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_3fc
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    .line 267
    :array_406
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

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    if-nez p1, :cond_19

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "replex laser inc"

    aput-object v2, v1, v5

    const-string v2, "Replex laser inc (Ventohigh)"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
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

    .line 206
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

    .line 207
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

    .line 208
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

    .line 209
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
    .line 404
    sget v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcCount:I

    rem-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x6

    .line 405
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

    .line 406
    sget v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcCount:I

    .line 407
    return-void
.end method

.method public static bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Z)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 20

    .prologue
    .line 292
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v17

    .line 293
    if-gez v17, :cond_8

    const/4 v2, 0x0

    .line 315
    :goto_7
    return-object v2

    .line 294
    :cond_8
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->sprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-nez v2, :cond_a7

    .line 295
    const/16 v2, 0xc

    new-array v2, v2, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->sprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 296
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

    .line 297
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

    .line 298
    const/4 v2, 0x0

    :goto_6d
    const/4 v5, 0x6

    if-ge v2, v5, :cond_a7

    .line 299
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

    .line 300
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

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 303
    :cond_a7
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->sprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-eqz p1, :cond_133

    const/4 v2, 0x6

    :goto_ac
    add-int v2, v2, v17

    aget-object v16, v3, v2

    .line 304
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

    .line 305
    :cond_c2
    if-nez v17, :cond_14b

    .line 306
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

    .line 307
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

    .line 315
    :cond_12a
    :goto_12a
    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v2, :cond_1ed

    const/4 v2, 0x0

    goto/16 :goto_7

    .line 303
    :cond_133
    const/4 v2, 0x0

    goto/16 :goto_ac

    .line 304
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

    .line 308
    :cond_14b
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_1a5

    .line 309
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

    .line 310
    sget v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->trail:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->trail:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_12a

    .line 311
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

    .line 312
    :cond_1a5
    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_12a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_12a

    .line 313
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

    .line 315
    goto/16 :goto_7

    .line 297
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
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->parse(Ljava/lang/String;)[I

    move-result-object v1

    .line 176
    if-nez v1, :cond_f

    const/4 v0, 0x0

    .line 191
    :goto_e
    return-object v0

    .line 178
    :cond_f
    array-length v0, v1

    if-le v0, v3, :cond_5b

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Flak: Reaver autocannon family. Own stats and colours."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "Lance: Helion blaster family. Own stats and colours."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const-string v2, "Bio-spines: Kre\'tari autocannon family. Own stats and colours."

    .line 180
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v1, v3

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br><br><font color=\'#6ad0ff\'><b>Sold at:</b> "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v1, v4

    aget v1, v1, v5

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->soldAt(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 183
    :cond_5b
    aget v0, v1, v4

    packed-switch v0, :pswitch_data_b4

    .line 189
    const-string v0, "<b>Arc Projector</b>: lightning bolts that jump from the target to 2 more enemies within 450 (60% damage each)."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br><br><font color=\'#6ad0ff\'><b>Sold at:</b> "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v1, v4

    aget v1, v1, v5

    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->soldAt(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 184
    :pswitch_91
    const-string v0, "<b>Railgun</b>: magnetic slug thrower. Very long range, near-instant slugs, heavy damage per shot, slow reload."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 185
    :pswitch_98
    const-string v0, "<b>Autocannon</b>: rapid-fire projectile gun. Small shells, huge rate of fire, spread at range."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 186
    :pswitch_9f
    const-string v0, "<b>Artillery</b>: siege gun. Very slow reload, enormous shells that also hit everything within 180 of the impact (50%)."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 187
    :pswitch_a6
    const-string v0, "<b>Blaster</b>: short-range plasma brawler. The highest damage per second, but the bolts fizzle out quickly."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 188
    :pswitch_ad
    const-string v0, "<b>Disintegrator</b>: entropic beam pulses. Damage ramps up to +100% while you keep hitting the same target, resets when you switch."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 183
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_91
        :pswitch_98
        :pswitch_9f
        :pswitch_a6
        :pswitch_ad
    .end packed-switch
.end method

.method static drawArcs(J)V
    .registers 16

    .prologue
    .line 411
    const/4 v0, 0x0

    move v11, v0

    :goto_2
    const/16 v0, 0x8

    if-ge v11, v0, :cond_93

    .line 412
    mul-int/lit8 v0, v11, 0x6

    .line 413
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v2, v0, 0x4

    aget v1, v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_17

    .line 411
    :goto_13
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2

    .line 414
    :cond_17
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->arcs:[F

    add-int/lit8 v2, v0, 0x4

    aget v3, v1, v2

    long-to-float v4, p0

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 415
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

    .line 417
    const/4 v2, 0x1

    move v8, v2

    move v1, v9

    move v0, v10

    :goto_3b
    const/4 v2, 0x7

    if-gt v8, v2, :cond_7b

    .line 418
    int-to-float v2, v8

    const/high16 v3, 0x40e00000    # 7.0f

    div-float v3, v2, v3

    .line 419
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

    .line 420
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

    .line 421
    const/high16 v4, 0x3f400000    # 0.75f

    const v5, 0x3f59999a    # 0.85f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModFx;->line(FFFFFFFF)V

    .line 417
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v1, v3

    move v0, v2

    goto :goto_3b

    .line 419
    :cond_77
    const/4 v2, 0x0

    goto :goto_53

    .line 420
    :cond_79
    const/4 v3, 0x0

    goto :goto_64

    .line 425
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

    .line 427
    :cond_93
    return-void
.end method

.method static family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I
    .registers 7

    .prologue
    const/4 v5, 0x6

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 128
    if-nez p0, :cond_6

    .line 131
    :cond_5
    :goto_5
    return v0

    :cond_6
    move v1, v2

    .line 129
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

    .line 130
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
    .line 138
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

    .line 142
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-nez v1, :cond_6

    .line 145
    :cond_5
    :goto_5
    return v0

    .line 143
    :cond_6
    check-cast p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 144
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
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 169
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->parse(Ljava/lang/String;)[I

    move-result-object v0

    .line 170
    if-eqz v0, :cond_33

    array-length v1, v0

    if-le v1, v4, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->TIER_NAME:[Ljava/lang/String;

    aget v3, v0, v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_NAME:[Ljava/lang/String;

    aget v0, v0, v4

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_32
    return-object v0

    :cond_33
    if-nez v0, :cond_37

    const/4 v0, 0x0

    goto :goto_32

    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->TIER_NAME:[Ljava/lang/String;

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

    goto :goto_32
.end method

.method public static onBullet(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/Object;)V
    .registers 16

    .prologue
    const/high16 v7, 0x42f00000    # 120.0f

    const/4 v8, 0x2

    .line 250
    :try_start_3
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v10

    .line 251
    if-gez v10, :cond_a

    .line 264
    :goto_9
    return-void

    .line 252
    :cond_a
    check-cast p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 253
    if-nez p0, :cond_68

    const/4 v0, -0x1

    .line 254
    :goto_f
    if-ltz v0, :cond_6f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_COLOR:[[F

    aget-object v0, v1, v0

    .line 255
    :goto_15
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    .line 256
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    .line 257
    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    .line 258
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->a:F

    .line 259
    iget-wide v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    long-to-float v0, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v1, v1, v10

    const/4 v2, 0x4

    aget v1, v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 260
    const-string v0, "fx_core"

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42f00000    # 120.0f

    const/high16 v6, 0x41f00000    # 30.0f

    if-ne v10, v8, :cond_74

    :goto_48
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

    goto :goto_9

    .line 261
    :catch_66
    move-exception v0

    goto :goto_9

    .line 253
    :cond_68
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->reskinOf(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v0

    goto :goto_f

    .line 254
    :cond_6f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v0, v0, v10
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_73} :catch_66

    goto :goto_15

    .line 260
    :cond_74
    if-nez v10, :cond_79

    const/high16 v7, 0x42b40000    # 90.0f

    goto :goto_48

    :cond_79
    const/high16 v7, 0x42480000    # 50.0f

    goto :goto_48
.end method

.method public static onImpact(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 19

    .prologue
    .line 328
    :try_start_0
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v3

    .line 329
    if-ltz v3, :cond_8

    if-nez p1, :cond_9

    .line 401
    :cond_8
    :goto_8
    return-void

    .line 330
    :cond_9
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 331
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->COLOR:[[F

    aget-object v12, v2, v3

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v2, v5, :cond_46

    const/4 v2, 0x1

    move v4, v2

    .line 333
    :goto_19
    packed-switch v3, :pswitch_data_2e0

    .line 395
    :pswitch_1c
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

    .line 398
    :catch_44
    move-exception v2

    goto :goto_8

    .line 332
    :cond_46
    const/4 v2, 0x0

    move v4, v2

    goto :goto_19

    .line 335
    :pswitch_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 336
    if-nez v4, :cond_a7

    .line 337
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampTargetE:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_5f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampLastE:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_63

    :cond_5f
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampTargetE:Lfr/testudo/spacecorsair/business/Element;

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampSinceE:J

    .line 338
    :cond_63
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampLastE:J

    .line 339
    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampSinceE:J

    sub-long/2addr v2, v8

    long-to-float v2, v2

    const v3, 0x453b8000    # 3000.0f

    div-float/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v2, v5

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 340
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

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3eb33333    # 0.35f

    const v12, 0x3e99999a    # 0.3f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto/16 :goto_8

    .line 343
    :cond_a7
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampTarget:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_b1

    sput-object p1, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampTarget:Lfr/testudo/spacecorsair/business/Element;

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampSince:J

    .line 344
    :cond_b1
    const/high16 v4, 0x3f800000    # 1.0f

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModWeapons;->rampSince:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    const v3, 0x453b8000    # 3000.0f

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 345
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v11

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 346
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

    .line 350
    :pswitch_fb
    if-eqz v4, :cond_120

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/Mod;->enemiesInto(Ljava/util/List;)V

    .line 352
    :goto_102
    const/4 v2, 0x0

    move v3, v2

    :goto_104
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_147

    .line 353
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 354
    move-object/from16 v0, p1

    if-eq v2, v0, :cond_11c

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v6, :cond_126

    .line 352
    :cond_11c
    :goto_11c
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_104

    .line 351
    :cond_120
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_102

    .line 355
    :cond_126
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p1

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    const/high16 v7, 0x43340000    # 180.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_11c

    move-object/from16 v0, p0

    iget v6, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p0

    invoke-virtual {v2, v6, v7, v0}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_11c

    .line 357
    :cond_147
    if-nez v4, :cond_16f

    if-eqz v5, :cond_16f

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_16f

    iget-object v2, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v3, 0x435c0000    # 220.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_16f

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p0

    invoke-virtual {v5, v2, v3, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 358
    :cond_16f
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

    .line 359
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

    .line 360
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_1bc
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_201

    .line 361
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

    .line 362
    const v2, 0x3f99999a    # 1.2f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 360
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_1bc

    .line 364
    :cond_201
    const-string v2, "titan_blast"

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x3fa00000    # 1.25f

    const-wide/16 v6, 0x96

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_8

    .line 368
    :pswitch_20f
    if-eqz v4, :cond_244

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/Mod;->enemiesInto(Ljava/util/List;)V

    .line 371
    :goto_216
    const/4 v3, 0x0

    .line 372
    const/4 v2, 0x0

    move v7, v2

    move v8, v3

    move-object/from16 v9, p1

    :goto_21c
    const/4 v2, 0x2

    if-ge v7, v2, :cond_25a

    .line 373
    const/4 v5, 0x0

    .line 374
    const/high16 v3, 0x43e10000    # 450.0f

    .line 375
    const/4 v2, 0x0

    move v6, v2

    :goto_224
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_258

    .line 376
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 377
    move-object/from16 v0, p1

    if-eq v2, v0, :cond_2dc

    if-eq v2, v9, :cond_2dc

    iget-boolean v4, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v4, :cond_24a

    move-object v2, v5

    .line 375
    :goto_23f
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-object v5, v2

    goto :goto_224

    .line 369
    :cond_244
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_216

    .line 378
    :cond_24a
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v10, v9, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v10}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    .line 379
    cmpg-float v10, v4, v3

    if-gez v10, :cond_2dc

    move v3, v4

    goto :goto_23f

    .line 381
    :cond_258
    if-nez v5, :cond_282

    .line 388
    :cond_25a
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

    .line 382
    :cond_282
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p0

    invoke-virtual {v5, v2, v3, v0}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 383
    iget-object v2, v9, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, v9, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v3, v4, v6}, Lfr/testudo/spacecorsair/mod/ModWeapons;->addArc(FFFF)V

    .line 384
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->near:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v3, v8, 0x1

    .line 372
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v3

    move-object v9, v5

    goto/16 :goto_21c

    .line 392
    :pswitch_2b4
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
    :try_end_2da
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2da} :catch_44

    goto/16 :goto_8

    :cond_2dc
    move-object v2, v5

    goto/16 :goto_23f

    .line 333
    nop

    :pswitch_data_2e0
    .packed-switch 0x0
        :pswitch_2b4
        :pswitch_1c
        :pswitch_fb
        :pswitch_1c
        :pswitch_49
        :pswitch_20f
    .end packed-switch
.end method

.method private static parse(Ljava/lang/String;)[I
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 153
    move v3, v4

    :goto_6
    if-ge v3, v8, :cond_66

    .line 154
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_BASE:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 153
    :cond_12
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 155
    :cond_16
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_BASE:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_35

    new-array v0, v8, [I

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_PARENT:[I

    aget v1, v1, v3

    aput v1, v0, v4

    aput v4, v0, v2

    aput v3, v0, v7

    .line 165
    :goto_34
    return-object v0

    :cond_35
    move v1, v2

    .line 157
    :goto_36
    if-ge v1, v9, :cond_12

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

    if-eqz v0, :cond_62

    new-array v0, v8, [I

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_PARENT:[I

    aget v5, v5, v3

    aput v5, v0, v4

    aput v1, v0, v2

    aput v3, v0, v7

    goto :goto_34

    :cond_62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_36

    :cond_66
    move v3, v4

    .line 159
    :goto_67
    const/4 v0, 0x6

    if-ge v3, v0, :cond_bd

    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->BASE:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 159
    :cond_74
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_67

    .line 161
    :cond_78
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->BASE:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_91

    new-array v0, v7, [I

    aput v3, v0, v4

    aput v4, v0, v2

    goto :goto_34

    :cond_91
    move v1, v2

    .line 163
    :goto_92
    if-ge v1, v9, :cond_74

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

    if-eqz v0, :cond_b9

    new-array v0, v7, [I

    aput v3, v0, v4

    aput v1, v0, v2

    goto/16 :goto_34

    :cond_b9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_92

    .line 165
    :cond_bd
    const/4 v0, 0x0

    goto/16 :goto_34
.end method

.method public static playFire(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 8

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 272
    :try_start_4
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v4

    .line 273
    if-gez v4, :cond_d

    .line 282
    :goto_c
    return v0

    .line 274
    :cond_d
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 275
    if-nez v2, :cond_36

    const/4 v2, -0x1

    move v3, v2

    .line 276
    :goto_17
    if-ne v3, v5, :cond_3a

    const v2, 0x3f3851ec    # 0.72f

    .line 278
    :goto_1c
    if-ne v3, v5, :cond_50

    .line 279
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

    .line 280
    const/4 v0, 0x1

    goto :goto_c

    .line 275
    :cond_36
    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_38} :catch_53

    move v3, v2

    goto :goto_17

    .line 276
    :cond_3a
    const/4 v2, 0x4

    if-eq v3, v2, :cond_40

    const/4 v2, 0x5

    if-ne v3, v2, :cond_44

    :cond_40
    const v2, 0x3f570a3d    # 0.84f

    goto :goto_1c

    .line 277
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

    .line 278
    :cond_50
    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_1e

    .line 281
    :catch_53
    move-exception v1

    goto :goto_c
.end method

.method static reskinOf(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 117
    if-nez p0, :cond_5

    .line 119
    :cond_4
    :goto_4
    return v0

    :cond_5
    move v1, v3

    .line 118
    :goto_6
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    move v2, v3

    :goto_a
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1a

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWeapons;->RSPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    if-ne v4, p0, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static reskinSpec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    .registers 3

    .prologue
    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->RSPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    div-int/lit8 v1, p0, 0x4

    aget-object v0, v0, v1

    rem-int/lit8 v1, p0, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static soldAt(II)Ljava/lang/String;
    .registers 8

    .prologue
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
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

    .line 198
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
    .line 124
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->SPECS:[[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    div-int/lit8 v1, p0, 0x4

    aget-object v0, v0, v1

    rem-int/lit8 v1, p0, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static stockShops()V
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 217
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v8, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    move v7, v3

    .line 218
    :goto_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_8b

    .line 219
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 220
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v1, :cond_22

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->stocked:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 218
    :cond_22
    :goto_22
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_a

    .line 221
    :cond_26
    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 222
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 223
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    move v6, v3

    move v1, v3

    .line 225
    :goto_34
    const/4 v2, 0x6

    if-ge v6, v2, :cond_ba

    move v5, v3

    .line 226
    :goto_38
    const/4 v2, 0x4

    if-ge v5, v2, :cond_b5

    .line 227
    invoke-static {v6, v5}, Lfr/testudo/spacecorsair/mod/ModWeapons;->SHOP_RULES(II)[[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v4, v3

    :goto_41
    if-ge v4, v11, :cond_b1

    aget-object v2, v10, v4

    .line 228
    const/4 v12, 0x0

    aget-object v12, v2, v12

    if-eqz v12, :cond_ad

    const/4 v12, 0x0

    aget-object v2, v2, v12

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 229
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v6, v5}, Lfr/testudo/spacecorsair/mod/ModWeapons;->typeName(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    move v2, v3

    .line 230
    :goto_69
    const/4 v1, 0x3

    if-ge v2, v1, :cond_ac

    .line 231
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_PARENT:[I

    aget v1, v1, v2

    if-eq v1, v6, :cond_76

    .line 230
    :goto_72
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_69

    .line 232
    :cond_76
    iget-object v12, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    if-nez v5, :cond_8c

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_BASE:[Ljava/lang/String;

    aget-object v1, v1, v2

    :goto_7e
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v12, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    goto :goto_72

    .line 241
    :catch_8a
    move-exception v0

    .line 244
    :cond_8b
    return-void

    .line 232
    :cond_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lfr/testudo/spacecorsair/mod/ModWeapons;->RESKIN_BASE:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "L"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v13, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    aget v13, v13, v5

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7e

    .line 234
    :cond_ac
    const/4 v1, 0x1

    .line 227
    :cond_ad
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_41

    .line 226
    :cond_b1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_38

    .line 225
    :cond_b5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_34

    .line 239
    :cond_ba
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWeapons;->stocked:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c3} :catch_8a

    goto/16 :goto_22
.end method

.method static typeName(II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 149
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
