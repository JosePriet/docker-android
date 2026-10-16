.class public Lfr/testudo/spacecorsair/mod/ModSpecs;
.super Ljava/lang/Object;
.source "ModSpecs.java"


# static fields
.field public static final ARWING:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final BANSHEE:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final BATTERY:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final FAMILY_NAMES:[Ljava/lang/String;

.field public static final F_ARWING:I = 0x2

.field public static final F_BANSHEE:I = 0x0

.field public static final F_BATTERY:I = 0x3

.field public static final F_HIVE:I = 0x5

.field public static final F_REGENT:I = 0x1

.field public static final F_SALVO:I = 0x4

.field public static final HIVE:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public static final HIVE_DMG:[F

.field public static final HIVE_LIFE:[I

.field public static final REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final SALVO:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public static final TIER_LEVELS:[I

.field public static final TIER_MULT:[F

.field public static arwingBolt:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static megatronBattery:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static megatronSalvo:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public static regentBeam:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static regentHiveBay:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_168

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_174

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_MULT:[F

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_180

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE_DMG:[F

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_18c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE_LIFE:[I

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "alienBeamLaser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "regentBeamLaser"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "arwingBoltLaser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "megatronBattery"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "megatronSalvo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "regentHiveBay"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->FAMILY_NAMES:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->BANSHEE:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->ARWING:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->BATTERY:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->SALVO:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 40
    const/4 v0, 0x0

    move v7, v0

    :goto_63
    const/4 v0, 0x4

    if-ge v7, v0, :cond_144

    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_MULT:[F

    aget v8, v0, v7

    .line 42
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->BANSHEE:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    if-nez v7, :cond_13d

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpecBuilder;->alienBeamLaser:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    :goto_70
    aput-object v0, v1, v7

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->BANSHEE:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v7

    const/high16 v1, 0x430c0000    # 140.0f

    mul-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v2, 0x1f4

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3dcccccd    # 0.1f

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModSpecs;->beam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;IIFFF)V

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    new-instance v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    aput-object v1, v0, v7

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v7

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v2, 0x258

    const v3, 0x3f2aaaab

    const v4, 0x3e70f0f1

    const v5, 0x3f34b4b5

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModSpecs;->beam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;IIFFF)V

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v7

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->poison_10sec_8_proba_400dmg:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 47
    sget-object v9, Lfr/testudo/spacecorsair/mod/ModSpecs;->ARWING:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x104

    const/16 v2, 0x62

    const/high16 v3, -0x3ef00000    # -9.0f

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModSpecs;->laser(IIIFFFF)Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    move-result-object v0

    aput-object v0, v9, v7

    .line 48
    sget-object v9, Lfr/testudo/spacecorsair/mod/ModSpecs;->BATTERY:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v0, 0x435c0000    # 220.0f

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x44c

    const/16 v2, 0x60

    const/high16 v3, -0x3eb00000    # -13.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3f333333    # 0.7f

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModSpecs;->laser(IIIFFFF)Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    move-result-object v0

    aput-object v0, v9, v7

    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->SALVO:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const/high16 v1, 0x44c80000    # 1600.0f

    mul-float/2addr v1, v8

    const/high16 v2, 0x44160000    # 600.0f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModSpecs;->salvo(FF)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v1

    aput-object v1, v0, v7

    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModSpecs;->hiveBay(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v1

    aput-object v1, v0, v7

    .line 51
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->BANSHEE:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, v7

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v1, v1, v7

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSpecs;->ARWING:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v2, v2, v7

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModSpecs;->BATTERY:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v3, v3, v7

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    aget v4, v4, v7

    iput v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    iput v4, v2, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    iput v4, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->SALVO:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    aget-object v0, v0, v7

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    aget-object v1, v1, v7

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_LEVELS:[I

    aget v2, v2, v7

    iput v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    .line 40
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_63

    .line 42
    :cond_13d
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    goto/16 :goto_70

    .line 54
    :cond_144
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->regentBeam:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->ARWING:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->arwingBolt:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->BATTERY:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->megatronBattery:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->SALVO:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->megatronSalvo:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->regentHiveBay:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 59
    return-void

    .line 16
    :array_168
    .array-data 4
        0x0
        0x5
        0xa
        0xf
    .end array-data

    .line 17
    :array_174
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 19
    :array_180
    .array-data 4
        0x3f333333    # 0.7f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 20
    :array_18c
    .array-data 4
        0x3a98
        0x4650
        0x4e20
        0x61a8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;IIFFF)V
    .registers 7

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->isBeam:Z

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 113
    iput p1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 114
    iput p2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 115
    const/16 v0, 0x64

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 116
    const/4 v0, 0x5

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 117
    const/high16 v0, -0x3f000000    # -8.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 118
    iput p3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 119
    iput p4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 120
    iput p5, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 121
    return-void
.end method

.method public static beamRange(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)F
    .registers 2

    .prologue
    .line 107
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isRegentBeam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x44960000    # 1200.0f

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x44160000    # 600.0f

    goto :goto_8
.end method

.method public static gear(II)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    .registers 3

    .prologue
    .line 63
    packed-switch p0, :pswitch_data_22

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    aget-object v0, v0, p1

    :goto_7
    return-object v0

    .line 64
    :pswitch_8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->BANSHEE:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p1

    goto :goto_7

    .line 65
    :pswitch_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p1

    goto :goto_7

    .line 66
    :pswitch_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->ARWING:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p1

    goto :goto_7

    .line 67
    :pswitch_17
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->BATTERY:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v0, v0, p1

    goto :goto_7

    .line 68
    :pswitch_1c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->SALVO:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    aget-object v0, v0, p1

    goto :goto_7

    .line 63
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8
        :pswitch_d
        :pswitch_12
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method private static hiveBay(I)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 158
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;-><init>()V

    .line 159
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 160
    iput v8, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    .line 161
    iput v8, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    .line 162
    iput v8, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    .line 163
    const-wide/16 v2, 0x2ee0

    int-to-long v4, p0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->reloadSpeedInMilli:J

    .line 164
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE_LIFE:[I

    aget v1, v1, p0

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    .line 165
    iput v8, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxTurnFactor:F

    .line 166
    iput v8, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->pousseeForce:F

    .line 167
    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->sendAndForget:Z

    .line 169
    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    .line 170
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->normal:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    .line 171
    return-object v0
.end method

.method private static indexIn([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 74
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 75
    aget-object v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 77
    :goto_8
    return v0

    .line 74
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static isBeam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z
    .registers 2

    .prologue
    .line 91
    if-eqz p0, :cond_14

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->BANSHEE:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isBolt(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z
    .registers 2

    .prologue
    .line 99
    if-eqz p0, :cond_c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->ARWING:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isHive(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;)Z
    .registers 2

    .prologue
    .line 103
    if-eqz p0, :cond_c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isRegentBeam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z
    .registers 2

    .prologue
    .line 95
    if-eqz p0, :cond_c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static laser(IIIFFFF)Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;
    .registers 9

    .prologue
    .line 124
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    .line 125
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 126
    iput p0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 127
    iput p1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 128
    iput p2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 129
    const/4 v1, 0x5

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 130
    iput p3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 131
    iput p4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 132
    iput p5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 133
    iput p6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 134
    return-object v0
.end method

.method public static megatronShip()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 9

    .prologue
    const/16 v8, 0x12c

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 175
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;-><init>()V

    .line 176
    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    .line 177
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    .line 178
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 179
    const/4 v1, 0x3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    .line 180
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 181
    const v1, 0x3f80c49c    # 1.006f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    .line 182
    const/16 v1, 0x200

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    .line 183
    const/16 v1, 0x280

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    .line 184
    const/16 v1, 0xbb8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    .line 185
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    .line 186
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    .line 187
    const/16 v1, 0x14a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    .line 188
    const/16 v1, 0x230

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    .line 189
    const v1, 0x3eb33333    # 0.35f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    .line 190
    const/16 v1, 0xe6

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    .line 191
    const/16 v1, 0x96

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    .line 192
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazBehindImage:Z

    .line 193
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->simpleGaz:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    .line 194
    const/4 v1, 0x3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    .line 195
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v6

    .line 196
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3d1a0000    # -115.0f

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v5

    .line 197
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42e60000    # 115.0f

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v7

    .line 198
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    .line 199
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    .line 200
    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    .line 201
    new-array v1, v7, [Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3d600000    # -80.0f

    const/high16 v4, -0x3ccc0000    # -180.0f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v6

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v4, -0x3ccc0000    # -180.0f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v5

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 202
    iput v8, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    .line 203
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->VERY_LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    .line 204
    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    .line 205
    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    .line 206
    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    .line 207
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->attractionFactor:F

    .line 208
    iput v8, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerNameDecalY:I

    .line 209
    const/16 v1, -0x41

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalY:I

    .line 210
    iput v8, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarWidth:I

    .line 211
    const/4 v1, 0x7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarHeight:I

    .line 212
    return-object v0
.end method

.method public static regentShip()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, -0x3cb80000    # -200.0f

    const/4 v4, 0x0

    .line 217
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpecBuilder;->getAlienBlatte()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    move-result-object v0

    .line 218
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->FIXED:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 219
    iput v8, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    .line 220
    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    .line 221
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3e380000    # -25.0f

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v6

    .line 222
    const/16 v1, 0x384

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    .line 223
    const/16 v1, 0x2f8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    .line 224
    const/16 v1, 0x17c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    .line 225
    const/16 v1, 0x280

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    .line 226
    new-array v1, v8, [Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v6

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v7

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 227
    const/16 v1, 0x14a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerNameDecalY:I

    .line 228
    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarWidth:I

    .line 229
    return-object v0
.end method

.method private static salvo(FF)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;
    .registers 6

    .prologue
    .line 139
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;-><init>()V

    .line 140
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 141
    iput p0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    .line 142
    iput p1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    .line 143
    const/high16 v1, 0x41c80000    # 25.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    .line 144
    const-wide/16 v2, 0x1770

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->reloadSpeedInMilli:J

    .line 145
    const/16 v1, 0xc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    .line 146
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxTurnFactor:F

    .line 147
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->pousseeForce:F

    .line 148
    const v1, 0x3f83d70a    # 1.03f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->speedDeperdition:F

    .line 149
    const/16 v1, 0x3c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    .line 150
    const/16 v1, 0x4b0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->timeAllume:I

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->sendAndForget:Z

    .line 152
    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    .line 153
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->normal:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    .line 154
    return-object v0
.end method

.method public static tierOf(Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;)I
    .registers 2

    .prologue
    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->BANSHEE:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_9

    .line 87
    :cond_8
    :goto_8
    return v0

    .line 83
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->REGENT:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->ARWING:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->BATTERY:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->SALVO:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE:[Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->indexIn([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_8
.end method
