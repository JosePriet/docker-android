.class public Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static basicHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

.field public static extraHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

.field public static nopHyperdriveEngineSpec:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->nopHyperdriveEngineSpec:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    .line 20
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->nopHyperdriveEngineSpec:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->enabled:Z

    .line 21
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->nopHyperdriveEngineSpec:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->HYPERDRIVE_ENGINE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 22
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->nopHyperdriveEngineSpec:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->level:I

    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->basicHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->basicHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->enabled:Z

    .line 29
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->basicHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->HYPERDRIVE_ENGINE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->basicHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->level:I

    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->basicHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->energyCellsPerUnit:F

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->extraHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->extraHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->enabled:Z

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->extraHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->HYPERDRIVE_ENGINE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->extraHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->level:I

    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpecBuilder;->extraHyperdriveEngine:Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->energyCellsPerUnit:F

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
