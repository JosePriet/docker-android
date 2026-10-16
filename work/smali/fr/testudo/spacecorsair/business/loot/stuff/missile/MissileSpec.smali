.class public Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;
    }
.end annotation


# instance fields
.field public agility:I

.field public alteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field public damage:F

.field public image:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

.field public life:F

.field public lifeTime:I

.field public maxCountInventory:I

.field public maxTurnFactor:F

.field public neverCutGaz:Z

.field public pousseeForce:F

.field public radiusAfflection:Z

.field public radiusDamage:F

.field public reloadSpeedInMilli:J

.field public sendAndForget:Z

.field public speedDeperdition:F

.field public timeAllume:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;-><init>()V

    .line 15
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->pousseeForce:F

    .line 16
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxTurnFactor:F

    .line 17
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->speedDeperdition:F

    .line 18
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    .line 19
    iput v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    .line 20
    const/16 v0, 0x258

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->timeAllume:I

    .line 21
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    .line 22
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->neverCutGaz:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusAfflection:Z

    .line 25
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    .line 26
    iput v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    .line 27
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->sendAndForget:Z

    .line 28
    iput v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->alteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->normal:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 35
    return-void
.end method


# virtual methods
.method public compareTo(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;
    .registers 5

    .prologue
    .line 47
    if-nez p1, :cond_4

    .line 48
    const/4 v0, 0x0

    .line 60
    :goto_3
    return-object v0

    .line 50
    :cond_4
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;-><init>()V

    .line 51
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    .line 52
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    .line 53
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    .line 54
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxTurnFactor:F

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxTurnFactor:F

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxTurnFactor:F

    .line 55
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->pousseeForce:F

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->pousseeForce:F

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->pousseeForce:F

    .line 56
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    .line 57
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    sub-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    .line 58
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    .line 59
    iget v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    sub-int/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    goto :goto_3
.end method
