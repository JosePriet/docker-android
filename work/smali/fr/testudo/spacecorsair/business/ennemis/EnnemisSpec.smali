.class public Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public antiMissileCount:I

.field public desengagementDistance:I

.field public life:I

.field public lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public maxTurnFactor:F

.field public missileCount:I

.field public missileDamage:I

.field public missileLife:I

.field public missileLifeTime:I

.field public missileMinDistance:I

.field public missileReloadTime:I

.field public missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public shieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public shootDamage:I

.field public shootReload:I

.field public xp:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    .line 17
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    .line 18
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    .line 19
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    .line 20
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    .line 21
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileDamage:I

    .line 22
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileLifeTime:I

    .line 23
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileLife:I

    .line 24
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    .line 25
    const/16 v0, 0x2710

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    .line 27
    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    .line 28
    const/16 v0, 0x7d0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->desengagementDistance:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    return-void
.end method
