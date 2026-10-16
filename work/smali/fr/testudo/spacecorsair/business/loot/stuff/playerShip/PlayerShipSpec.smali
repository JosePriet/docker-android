.class public Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
.super Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;,
        Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;,
        Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;
    }
.end annotation


# instance fields
.field public agilityInformational:I

.field public armorInformational:I

.field public attractionFactor:F

.field public canonCount:I

.field public canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

.field public canonSpeed:F

.field public damageOnImpact:F

.field public deperditionFactor:F

.field public doesDamageOnImpact:Z

.field public drawableSize:I

.field public drawableSizeOfGaz:I

.field public drawableSizeOfShield:I

.field public gazBehindImage:Z

.field public gazDecal:I

.field public gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

.field public image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

.field public laserCount:I

.field public laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

.field public lifeBooster:F

.field public lootDistance:I

.field public mass:I

.field public maxPouseeForce:F

.field public maxSpeedInformational:I

.field public maxTurnFactor:F

.field public missileCount:I

.field public missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

.field public physicSizeWithShield:I

.field public physicSizeWithoutShield:I

.field public playerLifeBarDecalX:I

.field public playerLifeBarDecalY:I

.field public playerLifeBarHeight:I

.field public playerLifeBarWidth:I

.field public playerNameDecalY:I

.field public sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

.field public tirGroupe:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;-><init>()V

    .line 95
    iput v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->FIXED:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 107
    iput v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    .line 110
    const/16 v0, 0xa

    new-array v0, v0, [Lfr/testudo/spacecorsair/engine/Vector2;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 111
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    .line 112
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    .line 114
    iput v4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->damageOnImpact:F

    .line 115
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->doesDamageOnImpact:Z

    .line 116
    iput v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->attractionFactor:F

    .line 117
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazBehindImage:Z

    .line 118
    iput v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    .line 119
    new-array v0, v1, [Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3e380000    # -25.0f

    invoke-direct {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v1, v0, v3

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 120
    iput v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerNameDecalY:I

    .line 121
    iput v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalY:I

    .line 122
    iput v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalX:I

    .line 123
    iput v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarWidth:I

    .line 124
    iput v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarHeight:I

    .line 25
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->SHIP:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    .line 26
    return-void
.end method
