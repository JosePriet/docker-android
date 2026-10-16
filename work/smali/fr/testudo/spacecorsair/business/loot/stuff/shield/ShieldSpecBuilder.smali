.class public Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static final decentShieldLevel5AntiMissile:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static fastReloadShieldLevel5Healer:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static final healerShieldLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static final healerShieldLevel8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static final mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static multiShieldBasic:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static pilotShieldSpecAdv:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static final spartanIonShield6:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static final spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static final spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static final warriorShieldLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public static xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 19
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 20
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 21
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3e7cfcfd

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 22
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3e34b4b5

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 23
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 24
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0xa

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 25
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 26
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0xc8

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpecAdv:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpecAdv:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    const/16 v2, 0x14

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->consumeReductionPourcent:I

    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->pilotShieldSpecAdv:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x2

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 36
    const/16 v0, 0xa

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    move v0, v1

    .line 40
    :goto_58
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_97

    .line 41
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    new-instance v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    aput-object v3, v2, v0

    .line 42
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 43
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 44
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    iput v0, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 45
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    const v3, 0x3e7cfcfd

    iput v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 46
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    const v3, 0x3e34b4b5

    iput v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 47
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    iput v4, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 51
    :cond_97
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v7

    const/16 v2, 0x96

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0xc8

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0xfa

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x15e

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const/16 v2, 0x190

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x1c2

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x226

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    const/16 v2, 0x2bc

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v1

    const/16 v2, 0xa

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v7

    const/16 v2, 0xa

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0xc

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x14

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x19

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x19

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const/16 v2, 0x19

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 70
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x19

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 71
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x19

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 72
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    const/16 v2, 0x19

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v7

    const/16 v2, 0x640

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 77
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x708

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 79
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x76c

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x834

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const/16 v2, 0x9c4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0xa28

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0xa8c

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    const/16 v2, 0xaf0

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 89
    const/16 v0, 0xa

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    move v0, v1

    .line 93
    :goto_1a9
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_1e8

    .line 94
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    new-instance v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    aput-object v3, v2, v0

    .line 95
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 96
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 97
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    iput v0, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 98
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    iput v4, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 99
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    const v3, 0x3e34b4b5

    iput v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 100
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    const v3, 0x3e34b4b5

    iput v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a9

    .line 104
    :cond_1e8
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x41

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v7

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x7d

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x96

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0xbe

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 109
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v6

    const/16 v2, 0xe6

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 110
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const/16 v2, 0x118

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x14a

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x168

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 113
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    const/16 v2, 0x186

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 116
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v1

    const/16 v2, 0xf

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 117
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v7

    const/16 v2, 0x10

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 118
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x12

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 119
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x1e

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x23

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x28

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const/16 v2, 0x28

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 124
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 125
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    const/16 v2, 0x46

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v1

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 129
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v7

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 130
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 131
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 133
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    const/16 v2, 0x6a4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 143
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v6

    invoke-direct {v0, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadShieldLevel5Healer:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadShieldLevel5Healer:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    const/high16 v2, 0x40000000    # 2.0f

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 151
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 155
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 156
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x8

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 157
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3f2babac

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 158
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3ebababb

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 159
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3f2eaeaf

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 160
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x9c4

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 161
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x28

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x1388

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 166
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 170
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 171
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x6

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 172
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3f2babac

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3ebababb

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 174
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3f2eaeaf

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0xaf0

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 176
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x64

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 177
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x7d0

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 178
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6Inapp:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    const/16 v2, 0x14

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    .line 181
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0, v2}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 184
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 185
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 186
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 188
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    const/high16 v2, 0x41000000    # 8.0f

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 189
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    const/16 v2, 0xf

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    .line 190
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    const/16 v2, 0x14

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;->reducePourcent:I

    .line 191
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    const/16 v2, 0x50

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->consumeReductionPourcent:I

    .line 192
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    .line 193
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->reduceInPourc:I

    .line 194
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageBack:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;->pourcentageDamage:I

    .line 195
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->debugShieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    const/16 v2, 0x28

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->damageIncreasePourc:I

    .line 202
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 206
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 207
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x6

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 208
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3f2babac

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 209
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3ebababb

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 210
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3f2eaeaf

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 211
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x4b0

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 212
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x1e

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 213
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->spartanIonShield6:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x1770

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 217
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 221
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 222
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x9

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 223
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3ecccccd    # 0.4f

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 224
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v2, 0x3ecccccd    # 0.4f

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 225
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 226
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x4e2

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 227
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 228
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x190

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 229
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    const/16 v2, 0x14

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->damageIncreasePourc:I

    .line 230
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShield9:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageBack:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;->pourcentageDamage:I

    .line 234
    const/16 v0, 0xa

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    move v0, v1

    .line 238
    :goto_479
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_4b8

    .line 239
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    new-instance v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    aput-object v3, v2, v0

    .line 240
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 241
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 242
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    iput v0, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 243
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    const v3, 0x3f3ebebf

    iput v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 244
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    const v3, 0x3f41c1c2

    iput v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 245
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v2, v2, v0

    iput v5, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_479

    .line 250
    :cond_4b8
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v1

    const/16 v2, 0xc8

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 251
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v7

    const/16 v2, 0xfa

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 252
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x12c

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 253
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x1c2

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 254
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x226

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 255
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x2ee

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 256
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const/16 v2, 0x320

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 257
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x44c

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 258
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x514

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 259
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    const/16 v2, 0x5dc

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 262
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v1

    const/16 v2, 0xa

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 263
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v7

    const/16 v2, 0xa

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x19

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 265
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x1e

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 266
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x23

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 267
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v6

    const/16 v2, 0x28

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 268
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const/16 v2, 0x2d

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 269
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/16 v2, 0x2d

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const/16 v2, 0x2d

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 271
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    const/16 v2, 0x32

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 274
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v1

    const/16 v1, 0x1f4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 275
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v7

    const/16 v1, 0x258

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0x2bc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 277
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x320

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 278
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0x384

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 279
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, v6

    const/16 v1, 0x3e8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0x5dc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 281
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/16 v1, 0x640

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 282
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/16 v1, 0x76c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x76c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 288
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 291
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel3:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 294
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 297
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel8:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 300
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldLevel5AntiMissile:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 303
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldLevel5AntiMissile:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    const/16 v1, 0x23

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    .line 308
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 311
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->reduceInPourc:I

    .line 312
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel5:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x23

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 316
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 319
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 321
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 322
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f46c6c7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3e0c8c8d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 324
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xdac

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 325
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 326
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x7d0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->mirrorShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageBack:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;->pourcentageDamage:I

    .line 331
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 334
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 336
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 337
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3da0a0a1

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 338
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3da0a0a1

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 339
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x320

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 340
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 341
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xc8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 343
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->consumeReductionPourcent:I

    .line 346
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 349
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 350
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 351
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 352
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3da0a0a1

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 353
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3da0a0a1

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 354
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x3e8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 355
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x78

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 356
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xc8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 358
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->rapidoShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->consumeReductionPourcent:I

    .line 362
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 365
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 366
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 367
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3e8e8e8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 368
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f3cbcbd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 369
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f32b2b3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 370
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x76c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 371
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x3c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 372
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xbb8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 374
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 377
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 380
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 381
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xe

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 382
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3e8e8e8f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 383
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f3cbcbd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 384
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f32b2b3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 385
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x960

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 386
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x50

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 387
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xd48

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 389
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->healerShieldLevel14:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 393
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 395
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 396
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 397
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f53d3d4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 398
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 399
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 400
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x7d0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 401
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x46

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 402
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x7d0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 404
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->reduceInPourc:I

    .line 405
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    .line 408
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 410
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 411
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x10

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 412
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f53d3d4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 413
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 414
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 415
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xbb8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 416
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 417
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x9c4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 419
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->reduceInPourc:I

    .line 420
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    const/16 v1, 0x28

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    .line 421
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->warriorShieldLevel16:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->damageIncreasePourc:I

    .line 425
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 427
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 428
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x10

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 429
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f37b7b8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 431
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 432
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x866

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 433
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x32

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 434
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x7d0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 436
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel11:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    .line 439
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 441
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 442
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 443
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 444
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f76f6f7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 445
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 446
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x8fc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 447
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x37

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 448
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x898

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 450
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->antimissileShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    const/16 v1, 0x32

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    .line 454
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 456
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 457
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 458
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3e8c8c8d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 459
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f6aeaeb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 460
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 461
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x640

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 462
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x2d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 463
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x9c4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 466
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 468
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 469
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 470
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3e8c8c8d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 471
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f6aeaeb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 472
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 473
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x708

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 474
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x32

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 475
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel12:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x9c4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 478
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 480
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 481
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 482
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3e8c8c8d

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 483
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f6aeaeb

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 484
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 485
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x7d0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 486
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x37

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 487
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->xenonShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x9c4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 491
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 493
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 494
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 495
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 496
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 497
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 498
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x258

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 499
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xc8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 500
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x3e8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 502
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->damageIncreasePourc:I

    .line 505
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 507
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 508
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 509
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 510
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 511
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f32b2b3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 512
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xdac

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 513
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 514
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x190

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 516
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 517
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    const/16 v1, 0x23

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    .line 518
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    .line 519
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    const/16 v1, 0x32

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->consumeReductionPourcent:I

    .line 522
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 524
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 525
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 526
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 527
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 528
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f32b2b3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 529
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x1388

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 530
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x96

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 531
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x190

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 533
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 534
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;->reducePourcent:I

    .line 535
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    const/16 v1, 0x23

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    .line 536
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    .line 537
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    const/16 v1, 0xf

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->reduceInPourc:I

    .line 538
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    const/16 v1, 0x32

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->consumeReductionPourcent:I

    .line 581
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->multiShieldBasic:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 583
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->multiShieldBasic:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 584
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->multiShieldBasic:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 585
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->multiShieldBasic:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 586
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->multiShieldBasic:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 587
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->multiShieldBasic:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const v1, 0x3f32b2b3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 588
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->multiShieldBasic:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x46

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 589
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->multiShieldBasic:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 590
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->multiShieldBasic:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x7d0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 591
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBasicShield(I)Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;
    .registers 2

    .prologue
    .line 545
    .line 546
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    array-length v0, v0

    if-le p0, v0, :cond_8

    .line 547
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    array-length p0, v0

    .line 551
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->basicShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getDecentShield(I)Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;
    .registers 2

    .prologue
    .line 557
    .line 558
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    array-length v0, v0

    if-le p0, v0, :cond_8

    .line 559
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    array-length p0, v0

    .line 563
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getFastReloadShield(I)Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;
    .registers 2

    .prologue
    .line 569
    .line 570
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    array-length v0, v0

    if-le p0, v0, :cond_8

    .line 571
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    array-length p0, v0

    .line 575
    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->fastReloadSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    aget-object v0, v0, p0

    return-object v0
.end method
