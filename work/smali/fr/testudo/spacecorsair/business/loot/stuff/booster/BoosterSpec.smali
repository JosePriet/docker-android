.class public Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
.source "SourceFile"


# instance fields
.field public boostPower:F

.field public boosterEnabled:Z

.field public shieldConsumeBySecInPourc:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->shieldConsumeBySecInPourc:F

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boostPower:F

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boosterEnabled:Z

    return-void
.end method
