.class public Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static basicLaserSpecCritLevel1:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static dilmaxLaserSpecLevel8:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static fastLaserSpecSlowLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static slowLaserLevel7AgilityReducer:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static standardLaserLevel6ReloadReducer:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;


.field public static alienBeamLaser:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x104

    const/16 v6, 0xfa

    const/4 v5, 0x5

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v3, 0x64

    .line 17
    const/16 v0, 0xa

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 21
    const/4 v0, 0x0

    :goto_10
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_63

    .line 22
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    aput-object v2, v1, v0

    .line 23
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 24
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 25
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 28
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const v2, 0x3f48c8c9

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 29
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const v2, 0x3f48c8c9

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 30
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v4, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 33
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v3, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 34
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 35
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const/high16 v2, -0x3f000000    # -8.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 40
    :cond_63
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0xa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0xc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0xe

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v5

    const/16 v1, 0x11

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0x13

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/16 v1, 0x15

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x16

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x17

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0x122

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v5

    const/16 v1, 0x122

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0x122

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/16 v1, 0x118

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/16 v1, 0x118

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x118

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x10e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 67
    const/16 v0, 0xa

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 71
    const/4 v0, 0x0

    :goto_134
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_184

    .line 72
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    aput-object v2, v1, v0

    .line 73
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 74
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 75
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 76
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v4, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 77
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const v2, 0x3f34b4b5

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 78
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v4, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 79
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v3, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 80
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 81
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const/high16 v2, -0x3f400000    # -6.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_134

    .line 86
    :cond_184
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x17

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0x18

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x1b

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 90
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v5

    const/16 v1, 0x20

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 92
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0x22

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/16 v1, 0x24

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 94
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/16 v1, 0x26

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 95
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x28

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x1f4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x1f4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 100
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0x1f4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x1f4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0x1c2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v5

    const/16 v1, 0x1c2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 104
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0x1c2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/16 v1, 0x1c2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/16 v1, 0x190

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x190

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 112
    const/16 v0, 0xa

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 116
    const/4 v0, 0x0

    :goto_241
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_294

    .line 117
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    aput-object v2, v1, v0

    .line 118
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 119
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 120
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 121
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const v2, 0x3f62e2e3

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 122
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v4, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 123
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const v2, 0x3ec6c6c7

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 124
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v3, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 125
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 126
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const/high16 v2, -0x3f100000    # -7.5f

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_241

    .line 131
    :cond_294
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x9

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 133
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0xa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0xb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0xc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v5

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0xe

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 138
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/16 v1, 0x10

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 139
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/16 v1, 0x10

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 140
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x11

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 141
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x11

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 143
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 144
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0xf8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 145
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0xf5

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0xf0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 147
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0xf0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 148
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v5

    const/16 v1, 0xf0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 149
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0xeb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 150
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/16 v1, 0xeb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 151
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/16 v1, 0xe6

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 152
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0xe6

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 157
    const/16 v0, 0xa

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 161
    const/4 v0, 0x0

    :goto_359
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_3ac

    .line 162
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    aput-object v2, v1, v0

    .line 163
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 164
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 165
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 166
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const v2, 0x3f62e2e3

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 167
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v4, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 168
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const v2, 0x3ec6c6c7

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 169
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v3, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 170
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 171
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const/high16 v2, -0x3ef80000    # -8.5f

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_359

    .line 176
    :cond_3ac
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0xb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 177
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 178
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0xe

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 180
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0x11

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 181
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v5

    const/16 v1, 0x12

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0x15

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 183
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/16 v1, 0x16

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 184
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/16 v1, 0x17

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 185
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x18

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 187
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 188
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 189
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 190
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 191
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 192
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v5

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 193
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 194
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 195
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 196
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 197
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 201
    const/16 v0, 0xa

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 205
    const/4 v0, 0x0

    :goto_45d
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_4b0

    .line 206
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    aput-object v2, v1, v0

    .line 207
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 208
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 209
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 210
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const v2, 0x3f58d8d9

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 211
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const v2, 0x3f32b2b3

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 212
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v4, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 213
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v3, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 214
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    iput v5, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 215
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v0

    const/high16 v2, -0x3f000000    # -8.0f

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_45d

    .line 220
    :cond_4b0
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 221
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0xe

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 222
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 223
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x12

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 224
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 225
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v5

    const/16 v1, 0x16

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 226
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0x18

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 227
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/16 v1, 0x1b

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 228
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/16 v1, 0x1c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 229
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x1d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 233
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 234
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 235
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 236
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v5

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 238
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 239
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 240
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 241
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 246
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 248
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x12

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 249
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 250
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 251
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3ef80000    # -8.5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 252
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 253
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 254
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 255
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 258
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    const v1, 0x3ccccccd    # 0.025f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->probability:F

    .line 259
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->critique:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/CritiqueSpec;->multiplicationFactor:F

    .line 260
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->probability:F

    .line 261
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->snareRatio:F

    .line 262
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    const/16 v1, 0x2710

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->duree:I

    .line 263
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    const/16 v1, 0x2710

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->duree:I

    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->probability:F

    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->badAssLaserLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->reloadFactor:F

    .line 270
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 272
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 273
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 274
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 275
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3ef80000    # -8.5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 277
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 278
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 279
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x10e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 282
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    const v1, 0x3da3d70a    # 0.08f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->probability:F

    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->damagePerTic:I

    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    const/16 v1, 0x2bc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->tickFrequenceInMilli:I

    .line 285
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->corrosiveLaserLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    const/16 v1, 0x1388

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->duree:I

    .line 291
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 293
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x23

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 294
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 295
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 296
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3ee00000    # -10.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 297
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 298
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f139394

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 299
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f70f0f1

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 300
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 301
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x118

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 304
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->crit_time5_2_percent:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 308
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 310
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x24

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 311
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 312
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xe

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 313
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3ee00000    # -10.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 314
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 315
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f139394

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 316
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f70f0f1

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 317
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 318
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 321
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->iridiumLaserlevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->crit_time5_2_percent:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 325
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 330
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f000000    # -8.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 331
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 332
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f43c3c4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 333
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3ed4d4d5

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 334
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 338
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->snare50_3percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 341
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 343
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x1c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 344
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 345
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 346
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f000000    # -8.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 347
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 348
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f43c3c4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 349
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3ed4d4d5

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 350
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 351
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 353
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->phosphoreLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->snare60_5percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 358
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 360
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x16

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 361
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 362
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 363
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f000000    # -8.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3e24a4a5

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 365
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f23a3a4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 366
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3e24a4a5

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 367
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 368
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 370
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel9:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->reload_40pc_20_sec_4poucent:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 374
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 376
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 377
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 378
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 379
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f000000    # -8.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 380
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3e24a4a5

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 381
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f23a3a4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 382
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3e24a4a5

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 383
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 384
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 386
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->radonLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->reload_50pc_20_sec_5poucent:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 391
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 393
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 394
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 395
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 396
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3ee00000    # -10.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 397
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 398
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 399
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3df0f0f1

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 400
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 401
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x320

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 403
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->solitaireLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->poison_10sec_8_proba_400dmg:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 407
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 409
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x23

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 410
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 411
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 412
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3ee00000    # -10.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 413
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 414
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f0e8e8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 415
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f70f0f1

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 416
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 417
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 419
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->fermiumLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 423
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 425
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x2d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 426
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 427
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 428
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3ee00000    # -10.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 429
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f0e8e8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 431
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f70f0f1

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 432
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 433
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 435
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fermiumLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->fermiumLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 441
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 443
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 444
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 445
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 446
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f000000    # -8.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 447
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 448
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f3ababb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 449
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f0c8c8d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 450
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 451
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 455
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 457
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x1c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 458
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 459
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 460
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f000000    # -8.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 461
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 462
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f3ababb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 463
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f0c8c8d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 464
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 465
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 470
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 472
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 473
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 474
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xe

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 475
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f000000    # -8.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 476
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 477
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f3ababb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 478
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f0c8c8d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 479
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 480
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->galiumLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 484
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 486
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 487
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 488
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 489
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f000000    # -8.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 490
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f25a5a6

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 491
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 492
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f0e8e8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 493
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 494
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 496
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->poison_8sec_250_proba_3:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 501
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 503
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x1d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 504
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 505
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 506
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f000000    # -8.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 507
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f25a5a6

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 508
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 509
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f0e8e8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 510
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 511
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 513
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->poison_8sec_300_proba_3:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 517
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 519
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x20

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 520
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 521
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 522
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f000000    # -8.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 523
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f25a5a6

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 524
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 525
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f0e8e8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 526
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 527
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 529
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->argonLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->poison_8sec_350_proba_3:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 534
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 536
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x1a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 537
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 538
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 539
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f200000    # -7.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 540
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 541
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f39b9ba

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 542
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3ec6c6c7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 543
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 544
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 547
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 549
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x1b

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 550
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 551
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 552
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f200000    # -7.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 553
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 554
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f39b9ba

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 555
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3ec6c6c7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 556
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 557
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x125

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 560
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 562
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x1c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 563
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 564
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 565
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f200000    # -7.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 566
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 567
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f39b9ba

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 568
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3ec6c6c7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 569
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 570
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x122

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 573
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 575
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 576
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 577
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 578
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f200000    # -7.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 579
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 580
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f39b9ba

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 581
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3ec6c6c7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 582
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 583
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 586
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 588
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x1f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 589
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 590
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xe

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 591
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f200000    # -7.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 592
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 593
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f39b9ba

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 594
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3ec6c6c7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 595
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 596
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 599
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 601
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x20

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 602
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 603
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xe

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 604
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f200000    # -7.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 605
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 606
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f39b9ba

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 607
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3ec6c6c7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 608
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 609
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->cobaltLaserLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 612
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 615
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 616
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 617
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 618
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3f100000    # -7.5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 619
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f62e2e3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 620
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 621
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3ec6c6c7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 622
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 623
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 626
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->debugLaserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->snare40_5percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 703
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 707
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 708
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 709
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 710
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 711
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3e900000    # -15.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 712
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x96

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 713
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 714
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x6a4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 715
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 716
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 717
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->jaspinBite5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->poison_5sec_150_proba10:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 721
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 725
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 726
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 727
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 728
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 729
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3ee00000    # -10.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 730
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 731
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 732
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xb4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 733
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 734
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->ventoGouv:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 738
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->crit_time_4_2p5_percent:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->dilmaxLaserSpecLevel8:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 739
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->crit_time_5_1_percent:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecCritLevel1:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 740
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v5

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->snare40_5percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecSlowLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 741
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->agility_60_4percent_10sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserLevel7AgilityReducer:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 742
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->reload_50pc_15_sec_1p25poucent:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->standardLaserLevel6ReloadReducer:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 747
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 750
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 751
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 752
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x1

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 753
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3ef80000    # -8.5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 754
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3f62e2e3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 755
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 756
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const v1, 0x3ec6c6c7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 757
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 758
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->multiBasic:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 760
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->makeAlienBeamLaser()Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    move-result-object v0
    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->alienBeamLaser:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecentLaser(I)Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    .registers 2

    .prologue
    .line 685
    .line 686
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length v0, v0

    if-le p0, v0, :cond_8

    .line 687
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length p0, v0

    .line 689
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->decentLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getExceptionalLaser(I)Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    .registers 2

    .prologue
    .line 694
    .line 695
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length v0, v0

    if-le p0, v0, :cond_8

    .line 696
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length p0, v0

    .line 698
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->exceptionalLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getStandardFastLaser(I)Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    .registers 2

    .prologue
    .line 666
    .line 667
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length v0, v0

    if-le p0, v0, :cond_8

    .line 668
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length p0, v0

    .line 670
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->fastLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getStandardLaser(I)Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    .registers 2

    .prologue
    .line 656
    .line 657
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length v0, v0

    if-le p0, v0, :cond_8

    .line 658
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length p0, v0

    .line 660
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->basicLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getStandardSlowLaser(I)Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    .registers 2

    .prologue
    .line 675
    .line 676
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length v0, v0

    if-le p0, v0, :cond_8

    .line 677
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    array-length p0, v0

    .line 679
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->slowLaserSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p0

    return-object v0
.end method

# mod: player version of the alien UFO's beam (continuous, auto-targeted)
.method public static makeAlienBeamLaser()Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    .registers 3
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V
    const/4 v1, 0x1
    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->isBeam:Z
    const/4 v1, 0x0
    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;
    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;
    const/16 v1, 0x12
    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I
    const/16 v1, 0x12c
    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I
    const/16 v1, 0x64
    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I
    const/4 v1, 0x5
    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I
    const/high16 v1, -0x3f000000    # -8.0f
    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F
    const/high16 v1, 0x3f800000    # 1.0f
    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->r:F
    const v1, 0x3dcccccd    # 0.1f
    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->g:F
    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->b:F
    return-object v0
.end method
