.class public Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpecBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlienBlatte()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 8

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/4 v1, 0x3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const v1, 0x3f80e560    # 1.007f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    const/16 v1, 0x190

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    const/16 v1, 0x258

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    const/16 v1, 0x79e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    const v1, 0x3e3851ec    # 0.18f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    const/16 v1, 0x202

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    const v1, 0x3ecccccd    # 0.4f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    const/16 v1, 0x91

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazBehindImage:Z

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->VERY_LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->damageOnImpact:F

    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->doesDamageOnImpact:Z

    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->attractionFactor:F

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->simpleGaz:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v6

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v5

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3de00000    # -40.0f

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v7

    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    const/4 v1, 0x3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    new-array v1, v7, [Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v6

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3d380000    # -100.0f

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v5

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    const/16 v1, 0xbe

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerNameDecalY:I

    const v1, -0x41

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalY:I

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalX:I

    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarWidth:I

    const/4 v1, 0x7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarHeight:I

    return-object v0
.end method

.method public static getAlienRat()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 3

    .prologue
    .line 210
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/4 v1, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const v1, 0x3f82cccd

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    const/16 v1, 0x46

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    const/16 v1, 0x82

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    const/16 v1, 0xb4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    const v1, 0x3f400000    # 0.75f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    const/16 v1, 0x32

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    const/16 v1, 0x69

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    const/16 v1, 0x32

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->SMALL:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    const/16 v1, 0x28

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->standard:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    const/16 v1, 0x58

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerNameDecalY:I

    const v1, -0x41

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalY:I

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalX:I

    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarWidth:I

    const/4 v1, 0x7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarHeight:I

    return-object v0
.end method

.method public static getAlienUfo()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 3

    .prologue
    .line 220
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_UFO:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/4 v1, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->FIXED:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const v1, 0x3f843958    # 1.033f (enemy UFO drag)

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    const/16 v1, 0xb4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    const/16 v1, 0x15e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    const v1, 0x3fbe147b    # 1.485f (same top speed, enemy-like snap)

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    const/16 v1, 0x46

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    const/16 v1, 0x96

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    const/16 v1, 0x3c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->MIDDLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    const/16 v1, 0x3c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->standard:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    const/16 v1, 0x58

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerNameDecalY:I

    const v1, -0x41

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalY:I

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalX:I

    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarWidth:I

    const/4 v1, 0x7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarHeight:I

    return-object v0
.end method

.method public static getCondor()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 7

    .prologue
    const/16 v6, 0x46

    const/4 v5, 0x0

    .line 60
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;-><init>()V

    .line 62
    const/4 v1, 0x5

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    .line 63
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->CONDOR:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    .line 64
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 65
    const/4 v1, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    .line 66
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 67
    const v1, 0x3f80e560    # 1.007f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    .line 68
    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    .line 69
    const/16 v1, 0xb4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    .line 70
    const/16 v1, 0xfa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    .line 71
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    .line 72
    const v1, 0x3e8f5c29    # 0.28f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    .line 73
    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    .line 74
    const/16 v1, 0xa0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    .line 75
    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    .line 76
    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    .line 77
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/high16 v4, 0x41700000    # 15.0f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v5

    .line 78
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    .line 79
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    .line 80
    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    .line 81
    const/16 v1, 0x32

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    .line 82
    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    .line 83
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->MIDDLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    .line 84
    const/16 v1, 0x39

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    .line 85
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->standard:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    .line 86
    iget v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    .line 88
    return-object v0
.end method

.method public static getCorvette()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 8

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 132
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;-><init>()V

    .line 134
    const/16 v1, 0xc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    .line 135
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->CORVETTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    .line 136
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 137
    const/4 v1, 0x3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    .line 138
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 139
    const v1, 0x3f80e560    # 1.007f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    .line 140
    const/16 v1, 0x190

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    .line 141
    const/16 v1, 0x258

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    .line 142
    const/16 v1, 0x79e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    .line 143
    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    .line 144
    const v1, 0x3e3851ec    # 0.18f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    .line 145
    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    .line 146
    const/16 v1, 0x202

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    .line 147
    const v1, 0x3ecccccd    # 0.4f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    .line 149
    const/16 v1, 0x91

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    .line 150
    const/16 v1, 0x1a4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    .line 151
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazBehindImage:Z

    .line 153
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    .line 154
    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    .line 156
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    .line 158
    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->damageOnImpact:F

    .line 159
    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->doesDamageOnImpact:Z

    .line 160
    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->attractionFactor:F

    .line 161
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->simpleGaz:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    .line 162
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v6

    .line 163
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v5

    .line 164
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3de00000    # -40.0f

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v7

    .line 167
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    .line 168
    iput-boolean v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    .line 169
    const/4 v1, 0x3

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    .line 171
    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    .line 172
    new-array v1, v7, [Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v6

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3d380000    # -100.0f

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aput-object v2, v1, v5

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    .line 177
    const/16 v1, 0x19

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    .line 178
    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    .line 179
    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    .line 182
    return-object v0
.end method

.method public static getDefaultPlayerShip()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 4

    .prologue
    const/16 v3, 0x32

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;-><init>()V

    .line 21
    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    .line 22
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    .line 23
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 24
    const/4 v1, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    .line 25
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->FIXED:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 26
    const v1, 0x3f81eb85    # 1.015f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    .line 27
    const/16 v1, 0x40

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    .line 28
    const/16 v1, 0x78

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    .line 29
    const/16 v1, 0xfa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    .line 31
    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    .line 32
    const/16 v1, 0x30

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    .line 33
    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    .line 34
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    .line 35
    const/16 v1, 0x14

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    .line 36
    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    .line 38
    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    .line 39
    const/16 v1, 0x50

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    .line 40
    const/16 v1, 0x55

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    .line 41
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->SMALL:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    .line 42
    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    .line 43
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->standard:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    .line 44
    iget v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    .line 45
    const/16 v1, 0x58

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerNameDecalY:I

    .line 46
    const/16 v1, -0x41

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalY:I

    .line 47
    iput v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalX:I

    .line 48
    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarWidth:I

    .line 49
    const/4 v1, 0x7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarHeight:I

    .line 52
    return-object v0
.end method

.method public static getHullBreaker()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 4

    .prologue
    const/16 v3, 0xb4

    const/4 v2, 0x1

    .line 95
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;-><init>()V

    .line 97
    const/16 v1, 0x8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->level:I

    .line 98
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->HULLBREAKER:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    .line 99
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 100
    const/4 v1, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    .line 101
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->FIXED:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 102
    const v1, 0x3f808312    # 1.004f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    .line 103
    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    .line 104
    const/16 v1, 0x12c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    .line 105
    const/16 v1, 0x226

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    .line 106
    const/high16 v1, 0x3fa00000    # 1.25f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    .line 107
    const v1, 0x3eb851ec    # 0.36f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    .line 108
    const/16 v1, 0x78

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    .line 109
    const/16 v1, 0xfa

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    .line 110
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    .line 111
    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    .line 112
    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    .line 113
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    .line 114
    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    .line 115
    const/16 v1, 0x41

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    .line 116
    const/16 v1, 0x5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    .line 117
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->MIDDLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    .line 118
    const/16 v1, 0x3c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    .line 119
    const/high16 v1, 0x41700000    # 15.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->damageOnImpact:F

    .line 120
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->doesDamageOnImpact:Z

    .line 121
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->attractionFactor:F

    .line 122
    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->simpleGaz:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    .line 123
    iget v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    .line 126
    return-object v0
.end method

.method public static getPolice()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;
    .registers 5

    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->POLICE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->EXCEPTIONAL:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    const/4 v1, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserCount:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    const v1, 0x3f80e560    # 1.007f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    const/16 v1, 0x118

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    const/16 v1, 0x17c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    const/16 v1, 0x258

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    const/16 v1, 0xa0

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    # two rotating turrets, bow and stern (same layout as the NPC police ship)
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;
    const/4 v3, 0x0
    const/high16 v4, -0x3de00000    # -40.0f
    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V
    const/4 v3, 0x0
    aput-object v2, v1, v3
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;
    const/high16 v4, 0x42200000    # 40.0f
    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V
    const/4 v3, 0x1
    aput-object v2, v1, v3
    const/4 v3, 0x2
    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->agilityInformational:I

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxSpeedInformational:I

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;->LARGE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->sizeInformational:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Size;

    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->armorInformational:I

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->simpleGaz:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iget v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    const/16 v1, 0x96

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerNameDecalY:I

    const v1, -0x41

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarDecalY:I

    const/16 v1, 0x78

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarWidth:I

    const/4 v1, 0x7

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->playerLifeBarHeight:I

    return-object v0

    nop
.end method
