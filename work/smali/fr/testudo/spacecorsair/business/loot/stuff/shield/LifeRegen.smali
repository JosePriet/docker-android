.class public Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;
.super Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonus;
.source "SourceFile"


# instance fields
.field public lifePerSecond:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonus;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 16
    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonus;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 19
    iput p1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 20
    return-void
.end method


# virtual methods
.method public enabled()Z
    .registers 3

    .prologue
    .line 24
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
