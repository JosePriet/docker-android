.class public Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static basicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

.field public static classicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

.field public static extraBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

.field public static nopBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->nopBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    .line 18
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->nopBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boosterEnabled:Z

    .line 19
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->nopBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->BOOSTER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 20
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->nopBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->level:I

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->basicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    .line 25
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->basicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boosterEnabled:Z

    .line 26
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->basicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->BOOSTER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 27
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->basicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->level:I

    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->basicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->basicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boostPower:F

    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->basicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    const/high16 v1, 0x41900000    # 18.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->shieldConsumeBySecInPourc:F

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->classicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    .line 36
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->classicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boosterEnabled:Z

    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->classicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->level:I

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->classicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->BOOSTER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->classicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->classicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boostPower:F

    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->classicBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    const/high16 v1, 0x41500000    # 13.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->shieldConsumeBySecInPourc:F

    .line 50
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->extraBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->extraBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boosterEnabled:Z

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->extraBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->level:I

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->extraBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->BOOSTER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->extraBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->extraBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    const/high16 v1, 0x40200000    # 2.5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boostPower:F

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->extraBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->shieldConsumeBySecInPourc:F

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
