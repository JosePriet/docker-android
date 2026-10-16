.class public Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
.source "SourceFile"


# instance fields
.field public enabled:Z

.field public energyCellsPerUnit:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;-><init>()V

    .line 15
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->energyCellsPerUnit:F

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/Hyperdrive/HyperdriveEngineSpec;->enabled:Z

    return-void
.end method
