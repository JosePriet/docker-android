.class public Lfr/testudo/spacecorsair/business/player/PlayerShip;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/player/PlayerShip$1;
    }
.end annotation


# static fields
.field public static BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static CUR_GAZ_TEXTURE:I = 0x0

.field public static final GAZ_TEXTURE_COUNT:I = 0x5

.field public static final SHIELD_FLASH_TIME:I = 0x190

.field public static SHIELD_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field private static gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final hyperdriveJumpLoad:I = 0x1388

.field public static lastloadedImage:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static physicDimensionWithShield:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;


# instance fields
.field public accelDirty:Z

.field accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field public attractionFactor:F

.field public boosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

.field public bulletA:F

.field public bulletB:F

.field public bulletDamage:F

.field public bulletG:F

.field public bulletLifeTime:I

.field public bulletR:F

.field public curPouseeForce:F

.field public curPouseePourcentage:F

.field public damageOnImpact:F

.field public dock:Lfr/testudo/spacecorsair/business/world/station/DockPoint;

.field public dockDistance:I

.field hasHit:Z

.field public hyperDriveJumpRequested:Z

.field public hyperdriveLoadingTextReload:I

.field public isBoosterEnabled:Z

.field public isPousee:Z

.field public isShooting:Z

.field public jumpBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

.field public laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public maxPouseeForce:F

.field public maxTurnFactor:F

.field public milleSecBetweenMissileShots:J

.field public milleSecBetweenShots:J

.field public missileCount:I

.field public missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public nbrEnnemisOnMe:I

.field public nbrMissileOnMe:I

.field public nextShootAlowed:J

.field public nextShootMissileAlowed:J

.field private olMassBeforeDock:F

.field public playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

.field public radarPortee:I

.field remainingHyperDriveTime:I

.field public shield:Lfr/testudo/spacecorsair/business/player/Shield;

.field public shieldFlash:I

.field public shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

.field public shootPrecision:F

.field public shootSpeed:F

.field public targetAngle:F

.field targetJumpLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;


# mod fields
.field public static ufoFrames:[Lfr/testudo/spacecorsair/display/Drawable;
.field public static ufoFramesSrc:Lfr/testudo/spacecorsair/display/Texture;
.field public beamActive:Z
.field public beamWasActive:Z
.field public beamTarget:Lfr/testudo/spacecorsair/business/Element;
.field public beamProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/high16 v5, 0x42f00000    # 120.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x42400000    # 48.0f

    const/high16 v2, 0x42800000    # 64.0f

    const/4 v1, 0x0

    .line 48
    sput-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 50
    sput-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->SHIELD_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 51
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 52
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 53
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 54
    sput-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 57
    sput-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 59
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 60
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->physicDimensionWithShield:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 61
    sput-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 92
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->CUR_GAZ_TEXTURE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 125
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;-><init>(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)V
    .registers 12

    .prologue
    const/high16 v9, 0x43340000    # 180.0f

    const/4 v4, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 128
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperdriveLoadingTextReload:I

    .line 71
    iput v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseePourcentage:F

    .line 74
    iput v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletA:F

    .line 75
    iput v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletR:F

    .line 76
    iput v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletG:F

    .line 77
    iput v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletB:F

    .line 79
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hasHit:Z

    .line 80
    iput v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    .line 81
    iput v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    .line 83
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v7, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 84
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletLifeTime:I

    .line 86
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    .line 88
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    .line 94
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    .line 98
    const/high16 v0, 0x42c40000    # 98.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootPrecision:F

    .line 99
    const/high16 v0, -0x3f000000    # -8.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootSpeed:F

    .line 100
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 101
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    .line 102
    const/16 v0, 0xbb8

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->radarPortee:I

    .line 103
    iput v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileCount:I

    .line 104
    iput v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->olMassBeforeDock:F

    .line 106
    iput v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    .line 107
    iput v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nbrMissileOnMe:I

    .line 108
    new-instance v0, Lfr/testudo/spacecorsair/business/player/Shield;

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x42a00000    # 80.0f

    const v3, 0x453b8000    # 3000.0f

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/player/Shield;-><init>(FFFZLfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 110
    iput v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nbrEnnemisOnMe:I

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpecBuilder;->nopBoosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->boosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    .line 113
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    .line 115
    iput v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->attractionFactor:F

    .line 116
    iput v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->damageOnImpact:F

    .line 121
    const/16 v0, 0x28

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dockDistance:I

    .line 687
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->accelDirty:Z

    .line 1039
    iput v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->remainingHyperDriveTime:I

    .line 1116
    iput v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    .line 129
    if-nez p1, :cond_86

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Player initialised with null specs"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_86
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v7, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v2, 0x3fd9999a    # 1.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newBlue(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->jumpBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 134
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hasSpeedDeperdition:Z

    .line 135
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iput-object p0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 136
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Faction;->PLAYER:Lfr/testudo/spacecorsair/business/world/Faction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->faction:Lfr/testudo/spacecorsair/business/world/Faction;

    .line 138
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPlayer:Z

    .line 139
    iput v9, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    .line 140
    iput v9, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dock:Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 142
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 145
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 146
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initLife()V

    .line 147
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 148
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    .line 149
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    .line 150
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ensureImageLoaded()V

    .line 151
    return-void
.end method

.method private applySoloGear()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 205
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->mass:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->mass:F

    .line 206
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    move v0, v2

    .line 208
    :goto_13
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonCount:I

    if-ge v0, v1, :cond_2b

    .line 209
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    new-instance v3, Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonPos:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v4, v4, v0

    invoke-direct {v3, v4, p0}, Lfr/testudo/spacecorsair/business/player/PlayerCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    aput-object v3, v1, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 213
    :cond_2b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    .line 214
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    int-to-float v1, v1

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfGaz:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 215
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->deperditionFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speedDeperditionfactor:F

    .line 216
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dockDistance:I

    .line 217
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxPouseeForce:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    .line 218
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    .line 219
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->damageOnImpact:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->damageOnImpact:F

    .line 220
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->attractionFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->attractionFactor:F

    .line 221
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerMaxLife:I

    int-to-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lifeBooster:F

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    .line 222
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_90

    .line 223
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 226
    :cond_90
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    .line 230
    iget-object v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerGear;->booster:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->boosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    .line 233
    iget-object v0, v3, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 234
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    int-to-float v4, v4

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    .line 235
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iput-object v0, v1, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 236
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    int-to-float v4, v4

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    .line 237
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    int-to-float v4, v4

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    .line 238
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/Shield;->r:F

    .line 239
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/Shield;->g:F

    .line 240
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/Shield;->b:F

    .line 244
    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 245
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    int-to-float v1, v1

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    .line 246
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    iget v5, v5, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->reduceInPourc:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v1, v4

    int-to-long v4, v1

    iput-wide v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    .line 247
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    rsub-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootPrecision:F

    .line 248
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootSpeed:F

    .line 249
    iput v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletA:F

    .line 250
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletR:F

    .line 251
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletG:F

    .line 252
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletB:F

    .line 255
    :goto_121
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v1, v1

    if-ge v2, v1, :cond_1ae

    .line 257
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->canonSpeed:F

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    .line 258
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    rsub-int/lit8 v4, v4, 0x64

    div-int/lit8 v4, v4, 0x2

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootPrecision:I

    .line 259
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F

    .line 260
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletLifeTime:I

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootLifeTime:I

    .line 261
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v5, v5, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    iget v6, v6, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->reduceInPourc:I

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x64

    sub-int/2addr v4, v5

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    .line 262
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootDamage:I

    .line 263
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iput v7, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletA:F

    .line 264
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletR:F

    .line 265
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletG:F

    .line 266
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    iput v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->bulletB:F

    .line 267
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 268
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v2

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->tirGroupe:Z

    iput-boolean v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->tirGroupe:Z

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_121

    .line 276
    :cond_1ae
    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerGear;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 277
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-wide v2, v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->reloadSpeedInMilli:J

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-wide v4, v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->reloadSpeedInMilli:J

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x64

    div-long/2addr v0, v4

    sub-long v0, v2, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    .line 278
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->ensureMissileCountInferiorTo(I)V

    .line 279
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateRemainingMissiles()V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hasSpeedDeperdition:Z

    .line 285
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->applyShipBonuses(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    return-void
.end method

.method private doOnDestroySinglePlayer(Z)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    .line 771
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_13

    .line 772
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onPlayerDeath()V

    .line 774
    :cond_13
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onPlayerDeath()V

    .line 776
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->onPlayerDead()V

    .line 777
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->getDeathMoneyPenality()I

    move-result v0

    .line 778
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newXpMessage()Lfr/testudo/spacecorsair/display/text/XpTextMessage;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Credit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/XpTextMessage;

    move-result-object v1

    .line 779
    iget-object v2, v1, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, -0x42333333    # -0.1f

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 780
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->r:F

    .line 781
    iput v5, v1, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->g:F

    .line 782
    iput v5, v1, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->b:F

    .line 783
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerDead(I)V

    .line 787
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->checkFirstTimeDied()V

    .line 789
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playPlayerDie()V

    .line 790
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    .line 792
    invoke-super {p0, v6}, Lfr/testudo/spacecorsair/business/Element;->onDestroyed(Z)V

    .line 795
    return-void
.end method

.method public static exists()Z
    .registers 1

    .prologue
    .line 316
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static fetchEnnemisTarget(Lfr/testudo/spacecorsair/business/Element;J)Lfr/testudo/spacecorsair/business/Element;
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 395
    const v3, 0x4b189680    # 1.0E7f

    .line 396
    const/4 v2, 0x0

    .line 399
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 400
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    .line 401
    :goto_12
    if-ge v5, v7, :cond_9d

    .line 402
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 403
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v1, :cond_47

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v8, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v1, v8}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v8, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v1, v8}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    :cond_38
    const/4 v1, 0x1

    .line 404
    :goto_39
    instance-of v8, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v8, :cond_49

    if-nez v1, :cond_49

    move-object v0, v2

    move v1, v3

    .line 401
    :cond_41
    :goto_41
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    move-object v2, v0

    goto :goto_12

    :cond_47
    move v1, v4

    .line 403
    goto :goto_39

    .line 408
    :cond_49
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    if-eqz v1, :cond_57

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    if-eqz v1, :cond_57

    move-object v0, v2

    move v1, v3

    .line 409
    goto :goto_41

    .line 412
    :cond_57
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    if-eqz v1, :cond_65

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->hidden:Z

    if-eqz v1, :cond_65

    move-object v0, v2

    move v1, v3

    .line 413
    goto :goto_41

    .line 417
    :cond_65
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 418
    long-to-float v8, p1

    cmpg-float v8, v1, v8

    if-gez v8, :cond_9a

    .line 420
    iget-object v8, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v9, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x43b40000    # 360.0f

    rem-float/2addr v8, v9

    const/high16 v9, 0x42b40000    # 90.0f

    add-float/2addr v8, v9

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v8

    .line 424
    iget v9, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 427
    const/high16 v9, 0x42200000    # 40.0f

    div-float/2addr v1, v9

    int-to-float v8, v8

    add-float/2addr v1, v8

    .line 429
    cmpg-float v8, v1, v3

    if-ltz v8, :cond_41

    :cond_9a
    move-object v0, v2

    move v1, v3

    goto :goto_41

    .line 439
    :cond_9d
    return-object v2
.end method

.method public static final instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;
    .registers 1

    .prologue
    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    return-object v0
.end method

.method private processHyperdriveJump()V
    .registers 6

    .prologue
    .line 1067
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetJumpLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->jumpLength(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    .line 1068
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetJumpLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->jumpCost(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v1

    .line 1069
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    if-gt v1, v2, :cond_45

    .line 1070
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    new-instance v3, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct {v3, v4, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 1071
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 1072
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetJumpLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetJumpLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->jumpPortalName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onHyperDriveJump(I)V

    .line 1075
    :cond_45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    .line 1076
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->jumpBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 1079
    return-void
.end method

.method private removeOneMissileAndUpdate()V
    .registers 3

    .prologue
    .line 298
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeOne(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 299
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateRemainingMissiles()V

    .line 300
    return-void
.end method

.method public static setBasicTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 324
    sput-object p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 325
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->BASIC_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 327
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_16:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 330
    return-void
.end method

.method public static setShieldTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 350
    sput-object p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->SHIELD_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 351
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 352
    return-void
.end method

.method private shootEnergyBullet(FFF)V
    .registers 16

    .prologue
    .line 364
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iput p1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 365
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iput p2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 366
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootPrecision:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootPrecision:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 369
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v0

    .line 370
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletLifeTime:I

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletA:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletR:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletG:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletB:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v8, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 373
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->enabled()Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_66

    .line 375
    iget v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->damageIncreasePourc:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 378
    :cond_66
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 380
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 381
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/high16 v3, -0x3f000000    # -8.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 382
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 383
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 384
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/Mod;->addBullet(Ljava/util/List;Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method private shootMissile(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 477
    .line 479
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$stuff$missile$MissileSpec$Image:[I

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec$Image;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_cc

    move-object v0, v1

    .line 492
    :goto_11
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->enabled()Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_41

    .line 494
    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    iget v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->damageIncreasePourc:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    .line 497
    :cond_41
    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 498
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->sendAndForget:Z

    if-nez v1, :cond_51

    .line 500
    const-wide/16 v2, 0xbb8

    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->fetchEnnemisTarget(Lfr/testudo/spacecorsair/business/Element;J)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 504
    :cond_51
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileExitPoint:[Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 505
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 506
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 507
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 508
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const v3, -0x4019999a    # -1.8f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 509
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 510
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 511
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 513
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_a2

    .line 514
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/Element;->onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 518
    :cond_a2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTitan;->onMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removeOneMissileAndUpdate()V

    .line 522
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerMissileShoot()V

    .line 523
    return-void

    .line 481
    :pswitch_b4
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-virtual {v0, v2, p0, v1}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    goto/16 :goto_11

    .line 484
    :pswitch_c0
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLittleMissile()Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-virtual {v0, v2, p0, v1}, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    goto/16 :goto_11

    .line 479
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_c0
    .end packed-switch
.end method


# virtual methods
.method public addLife(F)V
    .registers 4

    .prologue
    .line 751
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    .line 760
    :goto_8
    return-void

    .line 755
    :cond_9
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    add-float/2addr v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 756
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    .line 757
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 759
    :cond_1a
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    goto :goto_8
.end method

.method public alignToTargetAngle()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v6, 0x0

    .line 1003
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sub-float/2addr v0, v3

    .line 1004
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1006
    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    .line 1008
    cmpg-float v4, v0, v7

    if-gtz v4, :cond_50

    .line 1011
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4b

    .line 1012
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    neg-float v4, v4

    iput v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    .line 1025
    :goto_21
    cmpl-float v4, v0, v7

    if-lez v4, :cond_29

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float v0, v4, v0

    .line 1026
    :cond_29
    cmpl-float v4, v0, v6

    if-eqz v4, :cond_44

    cmpl-float v4, v3, v6

    if-eqz v4, :cond_4a

    const/high16 v4, 0x41700000    # 15.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4a

    cmpg-float v0, v3, v6

    if-gez v0, :cond_63

    move v0, v1

    :goto_3c
    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_65

    :goto_42
    if-eq v0, v1, :cond_4a

    .line 1028
    :cond_44
    iput v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    .line 1029
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    .line 1035
    :cond_4a
    return-void

    .line 1014
    :cond_4b
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    iput v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    goto :goto_21

    .line 1018
    :cond_50
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5e

    .line 1019
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    neg-float v4, v4

    iput v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    goto :goto_21

    .line 1021
    :cond_5e
    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    iput v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    goto :goto_21

    :cond_63
    move v0, v2

    .line 1026
    goto :goto_3c

    :cond_65
    move v1, v2

    goto :goto_42
.end method

.method public applyAcceleration(J)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    .line 578
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    if-eqz v0, :cond_8

    .line 629
    :cond_7
    :goto_7
    return-void

    .line 589
    :cond_8
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    if-eqz v0, :cond_7

    .line 590
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v0, :cond_13

    .line 592
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->unDock()V

    .line 603
    :cond_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    mul-float/2addr v1, v2

    long-to-float v2, p1

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 604
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->boosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->shieldConsumeBySecInPourc:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    .line 605
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->consumeReductionPourcent:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    .line 606
    long-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 607
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->boosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boosterEnabled:Z

    if-eqz v1, :cond_6c

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-eqz v1, :cond_6c

    .line 608
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_88

    .line 609
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->boosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boostPower:F

    mul-float/2addr v2, v3

    long-to-float v3, p1

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 610
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/business/player/Shield;->applyDamage(FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    .line 611
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onBoosterConsumeShield(I)V

    .line 621
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 622
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 626
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_7

    .line 613
    :cond_88
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 614
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/GameThread;->gazEventIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6c

    .line 616
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    goto :goto_6c
.end method

.method public applyAsteroidCollision(F)V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 562
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->applyAsteroidCollision(F)V

    .line 563
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Shield;->isUp()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 564
    invoke-static {p0, v2, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addLightBlue(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 568
    :goto_10
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playImpacAstero()V

    .line 569
    invoke-static {p1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onAsteroidImpact(F)V

    .line 570
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_21

    .line 571
    invoke-static {p1}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onKilledByAsteroid(F)V

    .line 573
    :cond_21
    return-void

    .line 566
    :cond_22
    invoke-static {p0, v2, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;IZ)V

    goto :goto_10
.end method

.method public applyChangeShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    .line 156
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 158
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ensureImageLoaded()V

    .line 159
    return-void
.end method

.method public applyColide(Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 4

    .prologue
    .line 661
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->applyColide(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hasHit:Z

    .line 663
    return-void
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 824
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v1, :cond_6

    .line 847
    :goto_5
    return-void

    .line 829
    :cond_6
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    .line 830
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1d

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    .line 831
    :cond_1d
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v1, p1, p3}, Lfr/testudo/spacecorsair/business/player/Shield;->applyDamage(FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v1

    invoke-super {p0, v1, p2, p3}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 832
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v1, :cond_32

    .line 834
    invoke-static {p2}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerKilledBy(Lfr/testudo/spacecorsair/business/Element;)V

    .line 835
    if-eqz v0, :cond_32

    .line 836
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerOneShoot()V

    .line 840
    :cond_32
    const-wide/16 v0, 0x14

    .line 841
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3f

    .line 842
    const-wide/16 v0, 0x96

    .line 845
    :cond_3f
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->vibrate(Ljava/lang/Long;)V

    goto :goto_5
.end method

.method public applyGear()V
    .registers 1

    .prologue
    .line 293
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applySoloGear()V

    .line 295
    return-void
.end method

.method public applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 633
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 634
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eq v0, p0, :cond_14

    .line 635
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Shield;->isUp()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 636
    invoke-static {p0, v2, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addLightBlue(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 642
    :cond_14
    :goto_14
    return-void

    .line 638
    :cond_15
    invoke-static {p0, v2, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;IZ)V

    goto :goto_14
.end method

.method public calcSpinTurnFactorWithAccel()V
    .registers 4

    .prologue
    .line 667
    const v0, 0x3e99999a    # 0.3f

    sget v1, Lfr/testudo/spacecorsair/engine/GameThread;->curAccelY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 669
    sget v1, Lfr/testudo/spacecorsair/engine/GameThread;->curAccelY:F

    mul-float/2addr v0, v1

    .line 671
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1d

    .line 672
    const/4 v1, 0x0

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    .line 675
    :cond_1d
    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    .line 677
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2c

    .line 678
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    .line 681
    :cond_2c
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3a

    .line 682
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    .line 684
    :cond_3a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->accelDirty:Z

    .line 685
    return-void
.end method

.method public doPhysic(J)V
    .registers 10

    .prologue
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamPreFrame()V
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/Mod;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 695
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    if-lez v0, :cond_e

    .line 696
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    int-to-long v2, v0

    sub-long/2addr v2, p1

    long-to-int v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    .line 700
    :cond_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->useJoystick:Z

    if-eqz v0, :cond_26

    move v0, v1

    .line 701
    :goto_17
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v2, v2

    if-ge v0, v2, :cond_26

    .line 702
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->doPhysic(J)V

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 706
    :cond_26
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    if-eqz v0, :cond_3a

    .line 707
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 708
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->remainingHyperDriveTime:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->remainingHyperDriveTime:I

    .line 710
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->remainingHyperDriveTime:I

    if-gtz v0, :cond_63

    .line 712
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->processHyperdriveJump()V

    .line 719
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alignToTargetAngle()V

    .line 726
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 729
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    if-eqz v0, :cond_47

    .line 730
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shoot()V

    .line 734
    :cond_47
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/player/Shield;->doPhysic(J)V

    .line 737
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_57

    .line 738
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    .line 742
    :cond_57
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_62

    .line 743
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    .line 747
    :cond_62
    return-void

    .line 715
    :cond_63
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->jumpBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->remainingHyperDriveTime:I

    mul-int/lit8 v1, v1, 0x64

    div-int/lit16 v1, v1, 0x1388

    rsub-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    goto :goto_3a
.end method

.method public ensureImageLoaded()V
    .registers 4

    .prologue
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->fixTextures()V

    .line 163
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lastloadedImage:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v0, v1, :cond_e

    .line 164
    const-string v0, "Player image already up to date"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    .line 186
    :goto_d
    return-void

    .line 169
    :cond_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v0, :cond_70

    .line 171
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 172
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    int-to-float v1, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    int-to-float v1, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithoutShield:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 174
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->physicDimensionWithShield:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    int-to-float v1, v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 177
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->setBasicTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 178
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->setShieldTexture(Lfr/testudo/spacecorsair/display/Texture;)V

    .line 179
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lastloadedImage:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    .line 180
    const-string v0, "Player image updated"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    goto :goto_d

    .line 182
    :cond_70
    const-string v0, "Player texture not avail yet"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->frame(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/display/Drawable;
    move-result-object v0
    if-eqz v0, :plain
    return-object v0
    :plain
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;
    return-object v0
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 357
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    return v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 311
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Shield;->isUp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 652
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->physicDimensionWithShield:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 654
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_a
.end method

.method public initGazTextures()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 335
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->gazDrawables:[Lfr/testudo/spacecorsair/display/Texture;

    if-nez v0, :cond_e

    .line 347
    :goto_d
    return-void

    .line 338
    :cond_e
    const/4 v0, 0x5

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->gazDrawables:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v1, v0, v4

    new-instance v1, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->gazDrawables:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v3, v3, v5

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v1, v0, v5

    new-instance v1, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->gazDrawables:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v3, v3, v6

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v1, v0, v6

    new-instance v1, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->gazDrawables:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v3, v3, v7

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v1, v0, v7

    new-instance v1, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDrawable:Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerGazDrawable;->gazDrawables:[Lfr/testudo/spacecorsair/display/Texture;

    aget-object v3, v3, v8

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v1, v0, v8

    sput-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_d
.end method

.method public initHyperdriveJumpRequest(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 7

    .prologue
    const v4, 0x3e99999a    # 0.3f

    .line 1045
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_16

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->canHyperdriveJump()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1063
    :goto_15
    return-void

    .line 1049
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    .line 1050
    const/16 v0, 0x1388

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->remainingHyperDriveTime:I

    .line 1051
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetJumpLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 1052
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetJumpLevel:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->jumpCost(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    .line 1054
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLootMessage()Lfr/testudo/spacecorsair/display/text/LootTextMessage;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    neg-int v0, v0

    invoke-direct {v2, v3, v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->beforeMapModePlayerPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->init(Lfr/testudo/spacecorsair/business/loot/SpaceObject;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/display/text/LootTextMessage;

    move-result-object v0

    .line 1056
    iget v1, v0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->curLifetime:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->curLifetime:I

    .line 1057
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->r:F

    .line 1058
    iput v4, v0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->g:F

    .line 1059
    iput v4, v0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->b:F

    .line 1060
    iget-object v1, v0, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->divide(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 1061
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method public initLife()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 189
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-wide v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curlife:J

    long-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 190
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    .line 191
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 194
    :cond_19
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_21

    .line 195
    iput v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 197
    :cond_21
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 198
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_36

    .line 199
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 201
    :cond_36
    return-void
.end method

.method public onContactWithElement(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 7

    .prologue
    .line 1095
    iget-boolean v1, p1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 1098
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_5c

    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x1

    .line 1100
    :goto_21
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->doesDamageOnImpact:Z

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5b

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_5b

    if-nez v0, :cond_5b

    .line 1103
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playElectricSpark()V

    .line 1104
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->damageOnImpact:F

    mul-float/2addr v0, p2

    .line 1105
    const/4 v2, 0x0

    invoke-virtual {p1, v0, p0, v2}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 1106
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 1108
    const/16 v0, 0x190

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    .line 1109
    if-nez v1, :cond_5b

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_5b

    instance-of v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_5b

    .line 1110
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onHullRaiserKillEnnemy()V

    .line 1114
    :cond_5b
    return-void

    .line 1098
    :cond_5c
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public onDestroyed(Z)V
    .registers 9

    .prologue
    const v6, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    .line 800
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_71

    .line 802
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/display/AnimatedDrawable;

    move-result-object v0

    .line 803
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    const/16 v0, 0xa

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 805
    const/16 v0, 0x14

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 806
    const/4 v0, 0x5

    invoke-static {p0, v0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 808
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x442f0000    # 700.0f

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevelDrawOnly(Lfr/testudo/spacecorsair/business/Element;)V

    .line 809
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v5, 0x43960000    # 300.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v6, v6}, Lfr/testudo/spacecorsair/display/ShockWave;->withColor(FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevelDrawOnly(Lfr/testudo/spacecorsair/business/Element;)V

    .line 812
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSpaceMan()Lfr/testudo/spacecorsair/business/SpaceMan;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/SpaceMan;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/SpaceMan;

    move-result-object v0

    .line 813
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 815
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->doOnDestroySinglePlayer(Z)V

    .line 820
    :cond_71
    return-void
.end method

.method public onDock(Lfr/testudo/spacecorsair/business/world/station/DockPoint;)V
    .registers 3

    .prologue
    .line 972
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dock:Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    .line 974
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->mass:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->olMassBeforeDock:F

    .line 975
    const v0, 0x51ba43b7    # 1.0E11f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->mass:F

    .line 976
    return-void
.end method

.method public recycleToPool()V
    .registers 1

    .prologue
    .line 967
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 11

    .prologue
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawBeam()V
    .line 851
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_46

    .line 853
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->beforeMapModePlayerPos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;F)V

    .line 858
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->beforeMapModePlayerPos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v5, v5, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v6, v6, Lfr/testudo/spacecorsair/business/player/Shield;->r:F

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v7, v7, Lfr/testudo/spacecorsair/business/player/Shield;->g:F

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v8, v8, Lfr/testudo/spacecorsair/business/player/Shield;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 962
    :cond_45
    :goto_45
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->drawOver(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    return-void

    .line 875
    :cond_46
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazBehindImage:Z

    if-nez v0, :cond_5c

    .line 876
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;F)V

    .line 882
    :cond_5c
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    if-eqz v0, :cond_c4

    .line 884
    sget v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->CUR_GAZ_TEXTURE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->CUR_GAZ_TEXTURE:I

    .line 885
    sget v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->CUR_GAZ_TEXTURE:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6e

    .line 886
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->CUR_GAZ_TEXTURE:I

    .line 889
    :cond_6e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazDecal:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 892
    const/high16 v7, 0x3f800000    # 1.0f

    .line 893
    const/high16 v8, 0x3f800000    # 1.0f

    .line 894
    const/high16 v9, 0x3f800000    # 1.0f

    .line 895
    const v0, 0x3dcccccd    # 0.1f

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseePourcentage:F

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float v6, v0, v1

    .line 896
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    if-eqz v0, :cond_aa

    .line 897
    const/high16 v6, 0x3f800000    # 1.0f

    .line 898
    const v8, 0x3f19999a    # 0.6f

    .line 899
    const v9, 0x3f19999a    # 0.6f

    .line 902
    :cond_aa
    sget-object v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    if-nez v0, :cond_b1

    .line 903
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->initGazTextures()V

    .line 905
    :cond_b1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    sget v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->CUR_GAZ_TEXTURE:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 911
    :cond_c4
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->gazBehindImage:Z

    if-eqz v0, :cond_da

    .line 912
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;F)V

    .line 918
    :cond_da
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->useJoystick:Z

    if-eqz v0, :cond_12d

    .line 920
    const/4 v0, 0x0

    move v9, v0

    :goto_e4
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v0, v0

    if-ge v9, v0, :cond_12d

    .line 922
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v9

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 923
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 924
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 926
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->cameraRelative:Z

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v5, v5, v9

    iget v5, v5, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 920
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_e4

    .line 934
    :cond_12d
    const/4 v0, 0x0

    .line 935
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    if-lez v1, :cond_1d7

    .line 937
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldFlash:I

    int-to-float v0, v0

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    move v5, v0

    .line 942
    :goto_139
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v6, v6, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v6, v6, Lfr/testudo/spacecorsair/business/player/Shield;->r:F

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v7, v7, Lfr/testudo/spacecorsair/business/player/Shield;->g:F

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v8, v8, Lfr/testudo/spacecorsair/business/player/Shield;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 948
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperDriveJumpRequested:Z

    if-eqz v0, :cond_45

    .line 949
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 950
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41700000    # 15.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 951
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->jumpBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 953
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperdriveLoadingTextReload:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19a

    .line 954
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->PLAYER_HYPERDRIVE_LOADING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperdriveLoadingTextReload:I

    .line 956
    :cond_19a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->hyperdriveLoadingTextReload:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 957
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 958
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/UniverseName;->PLAYER_HYPERDRIVE_LOADING:Ljava/lang/String;

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3f333333    # 0.7f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_45

    :cond_1d7
    move v5, v0

    goto/16 :goto_139
.end method

.method public requestMissileShoot()V
    .registers 5

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->launchDrones(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    move-result v0
    if-eqz v0, :mod_normal_missile
    return-void
    :mod_normal_missile

    .line 528
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_14

    .line 530
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    if-eqz v0, :cond_14

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileCount:I

    if-gtz v0, :cond_15

    .line 540
    :cond_14
    :goto_14
    return-void

    .line 533
    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->missileCount:I

    if-ge v0, v1, :cond_26

    .line 534
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileCount:I

    if-lez v1, :cond_23

    .line 535
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootMissile(I)V

    .line 533
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 538
    :cond_26
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    goto :goto_14
.end method

.method public setFullLifeAndShieldUp()V
    .registers 2

    .prologue
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModShield;->onRepair()V

    .line 763
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 764
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    .line 765
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Shield;->instantFullRegen()V

    .line 766
    return-void
.end method

.method public setShootingFalse()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1083
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 1084
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v0, :cond_16

    move v0, v1

    .line 1085
    :goto_8
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 1086
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->alreadyFireForThisFinger:Z

    .line 1085
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1089
    :cond_16
    return-void
.end method

.method public setTargetAngle(F)V
    .registers 3

    .prologue
    .line 997
    invoke-static {p1}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    .line 998
    return-void
.end method

.method public shoot()V
    .registers 7

    .prologue
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamShoot()Z
    move-result v0
    if-eqz v0, :mod_no_beam
    return-void
    :mod_no_beam
    const/high16 v5, 0x40e00000    # 7.0f

    const/4 v4, 0x0

    .line 544
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->useJoystick:Z

    if-eqz v0, :cond_1b

    .line 545
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    .line 546
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->requestShoot()V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 550
    :cond_1b
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3d

    .line 551
    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, v0, v5, v4}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootEnergyBullet(FFF)V

    .line 552
    const/high16 v0, -0x3e800000    # -16.0f

    invoke-direct {p0, v0, v5, v4}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootEnergyBullet(FFF)V

    .line 554
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    .line 555
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->playLaserSound()V

    .line 558
    :cond_3d
    return-void
.end method

.method public shootAntiMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 11

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 445
    .line 447
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    const/high16 v2, 0x44480000    # 800.0f

    const/16 v3, 0x19

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->init(IFILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 448
    iput v7, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->b:F

    .line 449
    iput v7, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->r:F

    .line 450
    iput v8, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->g:F

    .line 452
    iput v8, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 454
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3e380000    # -25.0f

    invoke-virtual {v1, v7, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 456
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 457
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 459
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 462
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->pouseeForce:F

    .line 463
    const v1, 0x3f91eb85    # 1.14f

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speedDeperditionFactorPostAlumed:F

    .line 464
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 466
    const/16 v1, 0x190

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 468
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, -0x404ccccd    # -1.4f

    invoke-virtual {v1, v7, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 469
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 470
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 471
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 472
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    return-void
.end method

.method public unDock()V
    .registers 2

    .prologue
    .line 982
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v0, :cond_20

    .line 983
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dock:Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    if-eqz v0, :cond_21

    .line 984
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dock:Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->undock()V

    .line 985
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->olMassBeforeDock:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->mass:F

    .line 989
    :goto_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_20

    .line 990
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onPlayerUndock()V

    .line 993
    :cond_20
    return-void

    .line 987
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    goto :goto_11
.end method

.method public updateRemainingMissiles()V
    .registers 2

    .prologue
    .line 303
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getMissileCount()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileCount:I

    .line 304
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileCount:I

    if-lez v0, :cond_17

    .line 305
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->checkFirstGotMissile()V

    .line 307
    :cond_17
    return-void
.end method

# ---- mod: animated Banshee (alien UFO) frames, borrowed from the enemy UfoAlienShip ----
.method public static getUfoAnimFrame()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 9
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;
    if-nez v0, :src_ok
    const/4 v0, 0x0
    return-object v0
    :src_ok
    array-length v1, v0
    const/16 v2, 0xf
    if-ge v1, v2, :len_ok
    const/4 v0, 0x0
    return-object v0
    :len_ok
    add-int/lit8 v2, v2, -0x1
    aget-object v3, v0, v2
    if-nez v3, :frames_loaded
    const/4 v0, 0x0
    return-object v0
    :frames_loaded
    const/4 v2, 0x0
    aget-object v3, v0, v2
    iget-object v3, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;
    sget-object v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ufoFrames:[Lfr/testudo/spacecorsair/display/Drawable;
    if-eqz v4, :rebuild
    sget-object v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ufoFramesSrc:Lfr/testudo/spacecorsair/display/Texture;
    if-ne v5, v3, :rebuild
    aget-object v5, v4, v2
    iget-object v5, v5, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;
    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F
    sget-object v6, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;
    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F
    cmpl-float v5, v5, v6
    if-eqz v5, :pick
    :rebuild
    const/16 v1, 0xf
    new-array v4, v1, [Lfr/testudo/spacecorsair/display/Drawable;
    const/4 v2, 0x0
    :loop
    if-ge v2, v1, :built
    aget-object v5, v0, v2
    iget-object v5, v5, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;
    new-instance v6, Lfr/testudo/spacecorsair/display/Drawable;
    new-instance v7, Lfr/testudo/spacecorsair/engine/Vector2;
    sget-object v8, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-direct {v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V
    invoke-virtual {v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    invoke-direct {v6, v7, v5}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V
    aput-object v6, v4, v2
    add-int/lit8 v2, v2, 0x1
    goto :loop
    :built
    sput-object v4, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ufoFrames:[Lfr/testudo/spacecorsair/display/Drawable;
    sput-object v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->ufoFramesSrc:Lfr/testudo/spacecorsair/display/Texture;
    :pick
    # same timing as the enemy: 15 frames x 50ms = 750ms loop
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v5
    const-wide/16 v7, 0x2ee
    rem-long/2addr v5, v7
    const-wide/16 v7, 0x32
    div-long/2addr v5, v7
    long-to-int v5, v5
    aget-object v0, v4, v5
    return-object v0
.end method

# ---- mod: alien beam laser support ----
.method private beamPreFrame()V
    .registers 2
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamActive:Z
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamWasActive:Z
    const/4 v0, 0x0
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamActive:Z
    return-void
.end method

.method private beamShoot()Z
    .registers 2
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->beamShoot(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    move-result v0
    return v0
.end method

.method private drawBeam()V
    .registers 1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->drawBeam(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    return-void
.end method

.method public onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 2
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/Mod;->onMissileLock(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    return-void
.end method
