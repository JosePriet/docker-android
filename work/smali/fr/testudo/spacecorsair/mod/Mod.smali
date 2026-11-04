.class public Lfr/testudo/spacecorsair/mod/Mod;
.super Ljava/lang/Object;
.source "Mod.java"


# static fields
.field public static final DRONE_ENGAGE_RANGE:F = 1800.0f

.field public static final DRONE_LIFETIME:I = 0x4e20

.field private static final SKILL:Ljava/lang/String;

.field private static antiMissileTimer:I

.field private static final baseBeam:[F

.field private static final baseBullet:[F

.field private static final beamEnd:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static beamFlash:I

.field private static cacheFrame:J

.field private static final calc:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static croisette:Lfr/testudo/spacecorsair/display/Drawable;

.field private static doubleCanon:Lfr/testudo/spacecorsair/display/Drawable;

.field public static droneDefense:Z

.field private static final droneTimers:[I

.field private static final drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

.field private static final enemyCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field static frameCounter:J

.field private static guardianTurret:Lfr/testudo/spacecorsair/display/Drawable;

.field private static guardianTurretSrc:Lfr/testudo/spacecorsair/display/Texture;

.field private static hiveTier:I

.field private static final hud:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static ratFrames:[Lfr/testudo/spacecorsair/display/Drawable;

.field private static ratSrc:Lfr/testudo/spacecorsair/display/Texture;

.field private static final rockCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static rootTimer:I

.field private static shockTimer:I

.field private static final tmp:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static ufoFrames:[Lfr/testudo/spacecorsair/display/Drawable;

.field private static ufoSrc:Lfr/testudo/spacecorsair/display/Texture;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 38
    new-array v0, v3, [Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 39
    new-array v0, v3, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->droneTimers:[I

    .line 40
    sput v2, Lfr/testudo/spacecorsair/mod/Mod;->rootTimer:I

    .line 41
    sput v2, Lfr/testudo/spacecorsair/mod/Mod;->shockTimer:I

    .line 42
    sput v2, Lfr/testudo/spacecorsair/mod/Mod;->antiMissileTimer:I

    .line 43
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->calc:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->beamEnd:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 46
    sput v2, Lfr/testudo/spacecorsair/mod/Mod;->beamFlash:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->enemyCache:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->rockCache:Ljava/util/ArrayList;

    .line 95
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/Mod;->cacheFrame:J

    .line 96
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/Mod;->frameCounter:J

    .line 550
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    .line 551
    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->baseBullet:[F

    .line 552
    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->baseBeam:[F

    .line 553
    sput v2, Lfr/testudo/spacecorsair/mod/Mod;->hiveTier:I

    .line 658
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->hud:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 889
    const-string v0, "<br><br><font color=\'#d21aff\'><b>SPECIAL SKILL</b></font><br>"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->SKILL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBullet(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 9

    .prologue
    .line 266
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 268
    if-eqz v3, :cond_18

    :try_start_6
    instance-of v2, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-eqz v2, :cond_18

    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-object v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v2, v3, :cond_18

    .line 269
    invoke-static {v3, p1}, Lfr/testudo/spacecorsair/mod/ModTitan;->onBullet(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/Object;)V

    .line 270
    invoke-static {v3, p1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->onBullet(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_60

    .line 275
    :cond_18
    :goto_18
    instance-of v2, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-eqz v2, :cond_5b

    if-eqz v3, :cond_5b

    iget-object v2, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isBolt(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 276
    check-cast p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 277
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newAlienLaser()Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;

    move-result-object v2

    iget v4, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    iget v5, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletLifeTime:I

    iget-object v6, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v2, v4, v5, v3, v6}, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;

    move-result-object v2

    .line 278
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 279
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 280
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularInRad()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;->spin:F

    .line 281
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 283
    :goto_5a
    return v2

    :cond_5b
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5a

    .line 272
    :catch_60
    move-exception v2

    goto :goto_18
.end method

.method private static applyDroneDamage()V
    .registers 4

    .prologue
    .line 718
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->droneMult()F

    move-result v1

    .line 719
    const/4 v0, 0x0

    :goto_5
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2a

    .line 720
    sget-object v2, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v0

    .line 721
    if-eqz v2, :cond_12

    iget-boolean v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v3, :cond_15

    .line 719
    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 722
    :cond_15
    sget-object v3, Lfr/testudo/spacecorsair/mod/Mod;->baseBullet:[F

    aget v3, v3, v0

    mul-float/2addr v3, v1

    iput v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 723
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/Mod;->beamOf(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    move-result-object v2

    .line 724
    if-eqz v2, :cond_12

    .line 725
    sget-object v3, Lfr/testudo/spacecorsair/mod/Mod;->baseBeam:[F

    aget v3, v3, v0

    mul-float/2addr v3, v1

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    goto :goto_12

    .line 728
    :cond_2a
    return-void
.end method

.method public static applyShipBonuses(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 4

    .prologue
    .line 816
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV38;->syncTurrets(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 836
    :cond_6
    :goto_6
    return-void

    .line 818
    :cond_7
    :try_start_7
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->apply(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_64

    .line 822
    :goto_a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_24

    .line 823
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->physicSizeWithShield:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x96

    .line 824
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dockDistance:I

    if-ge v1, v0, :cond_24

    .line 825
    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dockDistance:I

    .line 828
    :cond_24
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_6

    .line 829
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    .line 830
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    .line 831
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    .line 832
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 833
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    goto :goto_6

    .line 819
    :catch_64
    move-exception v0

    goto :goto_a
.end method

.method private static attachToPilotLevel(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    .registers 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 703
    const/16 v1, 0x14

    if-le p1, v1, :cond_e

    add-int/lit8 v1, p1, -0x14

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 704
    :cond_e
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 706
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v1, v0

    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 707
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 708
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 709
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->baseBullet:[F

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v2, v0

    aput v2, v1, p2

    .line 710
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->beamOf(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    move-result-object v1

    .line 711
    if-eqz v1, :cond_48

    .line 712
    iput p1, v1, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->level:I

    .line 713
    sget-object v2, Lfr/testudo/spacecorsair/mod/Mod;->baseBeam:[F

    iget v1, v1, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    mul-float/2addr v0, v1

    aput v0, v2, p2

    .line 715
    :cond_48
    return-void
.end method

.method private static baseLabel(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 878
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->family(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    const-string v1, "alienBeamLaser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "Banshee Beam"

    .line 886
    :goto_12
    return-object v0

    .line 880
    :cond_13
    const-string v1, "regentBeamLaser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "Regent Venom Beam"

    goto :goto_12

    .line 881
    :cond_1e
    const-string v1, "arwingBoltLaser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, "Arwing Plasma Bolt"

    goto :goto_12

    .line 882
    :cond_29
    const-string v1, "megatronBattery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v0, "Megatron Heavy Battery"

    goto :goto_12

    .line 883
    :cond_34
    const-string v1, "megatronSalvo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v0, "Megatron Salvo Missile"

    goto :goto_12

    .line 884
    :cond_3f
    const-string v1, "regentHiveBay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v0, "Regent Hive Bay"

    goto :goto_12

    .line 885
    :cond_4a
    const-string v1, "megatronShip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "Megatron"

    goto :goto_12

    .line 886
    :cond_55
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static beamOf(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
    .registers 3

    .prologue
    .line 693
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "fakeProjectile"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 694
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 695
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 697
    :goto_14
    return-object v0

    .line 696
    :catch_15
    move-exception v0

    .line 697
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static beamShoot(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 187
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 188
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->busy()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 189
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamActive:Z

    .line 233
    :cond_c
    :goto_c
    return v1

    .line 192
    :cond_d
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isBeam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v0

    if-nez v0, :cond_15

    move v1, v2

    .line 193
    goto :goto_c

    .line 195
    :cond_15
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModSpecs;->beamRange(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)F

    move-result v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemyInFront(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v4

    .line 196
    iput-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 197
    if-eqz v4, :cond_c

    .line 200
    iget-wide v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    long-to-float v0, v6

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationReloadValue:F

    mul-float/2addr v0, v5

    float-to-long v6, v0

    .line 202
    iget-wide v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    long-to-float v0, v8

    long-to-float v5, v6

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v8

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_91

    move v0, v1

    .line 203
    :goto_35
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamActive:Z

    .line 204
    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamWasActive:Z

    if-nez v0, :cond_44

    .line 205
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienLaser()V

    .line 207
    :cond_44
    iget-wide v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-gtz v0, :cond_c

    .line 208
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    .line 209
    if-nez v0, :cond_57

    .line 210
    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;-><init>()V

    .line 211
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamProjectile:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    .line 213
    :cond_57
    iput-object p0, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 214
    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    iput v5, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->level:I

    .line 215
    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    iput v5, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 216
    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->destroyedOnImpact:Z

    .line 217
    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->ignoreImactDecalOnTarget:Z

    .line 218
    const/4 v2, 0x0

    iput v2, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->mass:F

    .line 219
    iget-object v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 220
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->resolveAlteration()V

    .line 221
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isRegentBeam(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 222
    invoke-static {v4, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 227
    :goto_78
    sget-object v2, Lfr/testudo/spacecorsair/mod/Mod;->beamEnd:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, v4, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 228
    const/16 v2, 0xb4

    sput v2, Lfr/testudo/spacecorsair/mod/Mod;->beamFlash:I

    .line 229
    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 230
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playElectricSpark()V

    .line 231
    iput-wide v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    goto/16 :goto_c

    :cond_91
    move v0, v2

    .line 202
    goto :goto_35

    .line 224
    :cond_93
    const/4 v2, 0x2

    invoke-static {v4, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 225
    invoke-static {v4, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    goto :goto_78
.end method

.method private static build([Lfr/testudo/spacecorsair/display/Drawable;IF)[Lfr/testudo/spacecorsair/display/Drawable;
    .registers 8

    .prologue
    .line 360
    new-array v1, p1, [Lfr/testudo/spacecorsair/display/Drawable;

    .line 361
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_18

    .line 362
    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3, p2, p2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    aget-object v4, p0, v0

    iget-object v4, v4, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v1, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 364
    :cond_18
    return-object v1
.end method

.method public static creditKiller(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;
    .registers 2

    .prologue
    .line 89
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object p0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    :cond_a
    return-object p0
.end method

.method public static desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 903
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    .line 904
    if-eqz v1, :cond_7

    .line 927
    :cond_6
    :goto_6
    return-object v1

    .line 905
    :cond_7
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    .line 906
    if-nez v1, :cond_6

    .line 907
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModDev;->desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    .line 908
    if-nez v1, :cond_6

    .line 911
    :try_start_13
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->classLine(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_3c

    move-result-object v0

    .line 915
    :goto_17
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->descBody(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    .line 916
    if-nez v0, :cond_44

    .line 917
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModQol;->source(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v2

    .line 918
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3f

    move-object v0, v1

    :goto_2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 912
    :catch_3c
    move-exception v0

    .line 913
    const/4 v0, 0x0

    goto :goto_17

    .line 921
    :cond_3f
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->original(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 923
    :cond_44
    if-nez v1, :cond_4c

    .line 924
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    .line 925
    if-eqz v1, :cond_66

    .line 927
    :cond_4c
    :goto_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModQol;->compare(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 925
    :cond_66
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->original(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4c
.end method

.method private static descBody(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 931
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->family(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    const-string v1, "alienRat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->original(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->SKILL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<b>Vortex decoy</b>: when a missile locks on, 33% chance to release a vortex that pulls the missile away."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 993
    :goto_31
    return-object v0

    .line 935
    :cond_32
    const-string v1, "alienUfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->original(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->SKILL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<b>Phase hull</b>: animated alien hull with enemy-grade handling (instant thrust, hard braking). Pair it with the Banshee Beam."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 938
    :cond_5c
    const-string v1, "alienBlatte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->original(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->SKILL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<b>Vortex decoy</b>: 80% chance to release a vortex when a missile locks on.<br><b>Root shot</b>: every 15 s, automatically fires an electric shot that pins the nearest enemy (within 2000) in place for 8 s.<br>Equip the <b>Regent Hive Bay</b> to launch Banshee and Arwing drones."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 943
    :cond_86
    const-string v1, "policeShip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->original(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->SKILL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<b>Twin swivel mounts</b>: two independent rotating cannons, bow and stern."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 946
    :cond_b0
    const-string v1, "hullBreaker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->original(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->SKILL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<b>Kinetic ram</b>: deals damage to anything it hits while its shield is up."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 949
    :cond_db
    const-string v1, "corvette"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->original(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->SKILL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<b>Twin missile tubes</b>: fires two missiles per launch."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 952
    :cond_106
    const-string v1, "alienBeamLaser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 953
    const-string v0, "Alien beam emitter salvaged from a Banshee UFO, the same weapon its pilots use against you.<br><br>It locks onto the closest enemy in front of your ship and fires short red beam pulses. Each pulse lands once per reload, never misses, but only reaches targets within short range (600).<br><br>Works on fixed-cannon and turret ships alike."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 958
    :cond_116
    const-string v1, "regentBeamLaser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 959
    const-string v0, "The purple venom beam of the Regent command ship.<br><br>Pulsed, auto-targeted and reaches twice as far as the Banshee Beam (1200). Each pulse can inject a long-lasting alien poison into the target.<br><br>Works on fixed-cannon and turret ships alike."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 964
    :cond_126
    const-string v1, "arwingBoltLaser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    .line 965
    const-string v0, "The green plasma cannon of the Arwing interceptor.<br><br>Fires fast alien plasma bolts at a high rate. Lower damage per bolt than human lasers, but very quick reload."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 968
    :cond_136
    const-string v1, "megatronBattery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_146

    .line 969
    const-string v0, "Heavy turret battery taken from a SPARTAN Guardian-class cruiser.<br><br>Slow, hard-hitting and very fast shells. Best mounted on the three turrets of the Megatron."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 972
    :cond_146
    const-string v1, "megatronSalvo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 973
    const-string v0, "<b>A missile modification defines the characteristics of the missile you fire.</b><br><br>Heavy homing missile carried by Guardian-class cruisers. Huge payload and blast radius, slow to manoeuvre. Ships with two launch tubes fire a salvo of two."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 977
    :cond_156
    const-string v1, "regentHiveBay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 978
    const-string v0, "<b>Replaces your missiles with alien drones.</b><br><br>Each launch uses one missile from your hold and releases 1 Banshee UFO and 1 Arwing (at most one of each out at a time). Drones are always built at your current pilot level and kills made by drones count as yours.<br><br><b>Stance</b>: while drones are out and the bay is reloading (or full), tap the missile button to switch:<br><b>Defense</b> (default): drones stay within 900 of your ship and deal +25% damage.<br><b>Attack</b>: drones hunt anything within 2500 but deal 15% less damage.<br><br>Higher tiers make stronger, longer-lived drones and reload faster."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 986
    :cond_166
    const-string v1, "megatronShip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPARTAN Guardian-class cruiser, the Megatron class of the Spartan HQ patrols. Three heavy rotating turrets and twin missile tubes. Acceleration is glacial. Armor is not a concern."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->SKILL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<b>Spartan Aegis</b>: SPARTAN shield technology. Any equipped shield gets +50% capacity, twice the regeneration rate and half the recovery delay.<br><b>Point defence</b>: automatically shoots down a missile locked on you (every 2.5 s).<br><b>Repulsion wave</b>: every 1.5 s, pushes away any enemy within 350 of the hull."

    .line 989
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 993
    :cond_193
    const/4 v0, 0x0

    goto/16 :goto_31
.end method

.method public static dockRange(Lfr/testudo/spacecorsair/business/world/station/DockPoint;)I
    .registers 4

    .prologue
    .line 804
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->applyForceMiniDistance:I

    .line 805
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 806
    if-eqz v1, :cond_19

    .line 807
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 808
    const/16 v2, 0x3c

    if-le v1, v2, :cond_19

    .line 809
    add-int/lit8 v1, v1, -0x3c

    add-int/2addr v0, v1

    .line 812
    :cond_19
    return v0
.end method

.method public static drawBeam(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 15

    .prologue
    const/4 v3, 0x0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_e

    .line 261
    :cond_d
    return-void

    .line 241
    :cond_e
    :try_start_e
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->drawDroneHud(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 242
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 243
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 244
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->drawUnder(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_63

    .line 248
    :goto_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 250
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamActive:Z

    if-eqz v1, :cond_5b

    if-eqz v0, :cond_5b

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_5b

    .line 251
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v8, v0

    :goto_29
    move v9, v3

    .line 257
    :goto_2a
    const/4 v0, 0x3

    if-ge v9, v0, :cond_d

    .line 258
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v12

    sub-double/2addr v4, v10

    double-to-float v1, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v12

    sub-double/2addr v4, v10

    double-to-float v2, v4

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 259
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletR:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletG:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletB:F

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 257
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2a

    .line 252
    :cond_5b
    sget v0, Lfr/testudo/spacecorsair/mod/Mod;->beamFlash:I

    if-lez v0, :cond_d

    .line 253
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->beamEnd:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v8, v0

    goto :goto_29

    .line 245
    :catch_63
    move-exception v0

    goto :goto_1a
.end method

.method private static drawDroneHud(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 13

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 661
    .line 663
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v0, :cond_2a

    const v5, 0x3ecccccd    # 0.4f

    :goto_a
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v0, :cond_2c

    const v6, 0x3f4ccccd    # 0.8f

    :goto_11
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v0, :cond_30

    move v7, v8

    :goto_16
    move v11, v3

    move v0, v3

    move v1, v3

    .line 664
    :goto_19
    const/4 v2, 0x2

    if-ge v11, v2, :cond_4e

    .line 665
    sget-object v2, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v11

    .line 666
    if-eqz v2, :cond_26

    iget-boolean v4, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v4, :cond_34

    .line 664
    :cond_26
    :goto_26
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_19

    :cond_2a
    move v5, v8

    .line 663
    goto :goto_a

    :cond_2c
    const v6, 0x3f0ccccd    # 0.55f

    goto :goto_11

    :cond_30
    const v7, 0x3e4ccccd    # 0.2f

    goto :goto_16

    .line 667
    :cond_34
    const/4 v10, 0x1

    .line 668
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->droneTimers:[I

    aget v1, v1, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 670
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v4, 0x3eb33333    # 0.35f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    move v0, v9

    move v1, v10

    goto :goto_26

    .line 672
    :cond_4e
    if-nez v1, :cond_51

    .line 677
    :goto_50
    return-void

    .line 673
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v1, :cond_a6

    const-string v1, "DRONES: DEFENSE "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit16 v0, v0, 0x3e7

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 674
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSizeOfShield:I

    :goto_7e
    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    add-float/2addr v0, v1

    .line 675
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->hud:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v2, v9

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 676
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v2, Lfr/testudo/spacecorsair/mod/Mod;->hud:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v1 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto :goto_50

    .line 673
    :cond_a6
    const-string v1, "DRONES: ATTACK "

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_60

    .line 674
    :cond_ad
    const/16 v0, 0xc8

    goto :goto_7e
.end method

.method private static droneMult()F
    .registers 3

    .prologue
    .line 556
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 557
    if-eqz v0, :cond_20

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->isCarrier(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x3fa66666    # 1.3f

    .line 558
    :goto_11
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE_DMG:[F

    sget v2, Lfr/testudo/spacecorsair/mod/Mod;->hiveTier:I

    aget v2, v1, v2

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v1, :cond_23

    const/high16 v1, 0x3fa00000    # 1.25f

    :goto_1d
    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0

    .line 557
    :cond_20
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_11

    .line 558
    :cond_23
    const v1, 0x3f59999a    # 0.85f

    goto :goto_1d
.end method

.method private static dropDrone(IZ)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 731
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v0, v0, p0

    .line 732
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aput-object v2, v1, p0

    .line 733
    if-nez v0, :cond_c

    .line 743
    :cond_b
    :goto_b
    return-void

    .line 736
    :cond_c
    iput-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 737
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_b

    .line 738
    if-eqz p1, :cond_18

    .line 739
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addLightBlue(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 741
    :cond_18
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    goto :goto_b
.end method

.method public static enemiesInto(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->refreshCache()V

    .line 126
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 127
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->enemyCache:Ljava/util/ArrayList;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    return-void
.end method

.method private static engageRange()F
    .registers 1

    .prologue
    .line 562
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x44610000    # 900.0f

    :goto_6
    return v0

    :cond_7
    const v0, 0x451c4000    # 2500.0f

    goto :goto_6
.end method

.method private static family(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 869
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSpecs;->FAMILY_NAMES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_2c

    aget-object v0, v2, v1

    .line 870
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_2d

    :cond_2b
    move-object p0, v0

    .line 874
    :cond_2c
    return-object p0

    .line 869
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method public static findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;
    .registers 9

    .prologue
    .line 131
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->refreshCache()V

    .line 132
    const/4 v3, 0x0

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->enemyCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 135
    const/4 v0, 0x0

    move v4, v0

    move v1, p1

    :goto_d
    if-ge v4, v5, :cond_2d

    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->enemyCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 137
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_21

    move-object v0, v3

    .line 135
    :goto_1c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v0

    goto :goto_d

    .line 140
    :cond_21
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 141
    cmpg-float v6, v2, v1

    if-gez v6, :cond_2e

    move v1, v2

    .line 143
    goto :goto_1c

    .line 146
    :cond_2d
    return-object v3

    :cond_2e
    move-object v0, v3

    goto :goto_1c
.end method

.method public static findEnemyInFront(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)Lfr/testudo/spacecorsair/business/Element;
    .registers 15

    .prologue
    const/4 v6, 0x0

    const/high16 v12, 0x43b40000    # 360.0f

    .line 151
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->refreshCache()V

    .line 152
    const/4 v3, 0x0

    .line 153
    const v1, 0x4b189680    # 1.0E7f

    move v5, v6

    .line 154
    :goto_b
    const/4 v0, 0x2

    if-ge v5, v0, :cond_6c

    .line 155
    if-nez v5, :cond_2a

    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->enemyCache:Ljava/util/ArrayList;

    move-object v4, v0

    .line 156
    :goto_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v6

    .line 157
    :goto_18
    if-ge v7, v8, :cond_6a

    .line 158
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 159
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_2e

    move-object v0, v3

    .line 157
    :goto_25
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move-object v3, v0

    goto :goto_18

    .line 155
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->rockCache:Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_13

    .line 162
    :cond_2e
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v9, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v9

    .line 163
    cmpl-float v2, v9, p1

    if-ltz v2, :cond_3c

    move-object v0, v3

    .line 164
    goto :goto_25

    .line 166
    :cond_3c
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v10, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v10}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v2, v10

    rem-float/2addr v2, v12

    const/high16 v10, 0x42b40000    # 90.0f

    add-float/2addr v2, v10

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v2

    .line 167
    iget v10, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sub-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 168
    const/high16 v10, 0x43340000    # 180.0f

    cmpl-float v10, v2, v10

    if-lez v10, :cond_60

    .line 169
    sub-float v2, v12, v2

    .line 171
    :cond_60
    const/high16 v10, 0x42200000    # 40.0f

    div-float/2addr v9, v10

    add-float/2addr v2, v9

    .line 172
    cmpg-float v9, v2, v1

    if-gez v9, :cond_71

    move v1, v2

    .line 174
    goto :goto_25

    .line 177
    :cond_6a
    if-eqz v3, :cond_6d

    .line 181
    :cond_6c
    return-object v3

    .line 154
    :cond_6d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_b

    :cond_71
    move-object v0, v3

    goto :goto_25
.end method

.method public static fixTextures()V
    .registers 7

    .prologue
    const/high16 v6, 0x42800000    # 64.0f

    .line 313
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->values()[Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    .line 314
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MOD_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 315
    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    iput-object v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 313
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 318
    :cond_21
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_35

    .line 319
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shipTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->shieldTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 322
    :cond_35
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_55

    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->guardianTurretSrc:Lfr/testudo/spacecorsair/display/Texture;

    if-eq v0, v1, :cond_55

    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->guardianTurretSrc:Lfr/testudo/spacecorsair/display/Texture;

    .line 324
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v6, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v2, Lfr/testudo/spacecorsair/mod/Mod;->guardianTurretSrc:Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->guardianTurret:Lfr/testudo/spacecorsair/display/Drawable;

    .line 326
    :cond_55
    return-void
.end method

.method public static floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V
    .registers 7

    .prologue
    .line 681
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newXpMessage()Lfr/testudo/spacecorsair/display/text/XpTextMessage;

    move-result-object v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/XpTextMessage;

    move-result-object v0

    .line 682
    iput p2, v0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->r:F

    .line 683
    iput p3, v0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->g:F

    .line 684
    iput p4, v0, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->b:F

    .line 685
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 689
    :goto_1d
    return-void

    .line 686
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public static frame(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 8

    .prologue
    const/16 v6, 0x16

    const/16 v5, 0xf

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 329
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v1, :cond_b

    .line 356
    :cond_a
    :goto_a
    return-object v0

    .line 332
    :cond_b
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    .line 333
    sget-object v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 334
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_UFO:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v1, v3, :cond_58

    .line 335
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 336
    if-eqz v1, :cond_a

    array-length v3, v1

    if-lt v3, v5, :cond_a

    const/16 v3, 0xe

    aget-object v3, v1, v3

    if-eqz v3, :cond_a

    .line 339
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ufoFrames:[Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_3c

    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ufoSrc:Lfr/testudo/spacecorsair/display/Texture;

    aget-object v3, v1, v4

    iget-object v3, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-ne v0, v3, :cond_3c

    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ufoFrames:[Lfr/testudo/spacecorsair/display/Drawable;

    aget-object v0, v0, v4

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_48

    .line 340
    :cond_3c
    invoke-static {v1, v5, v2}, Lfr/testudo/spacecorsair/mod/Mod;->build([Lfr/testudo/spacecorsair/display/Drawable;IF)[Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ufoFrames:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 341
    aget-object v0, v1, v4

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ufoSrc:Lfr/testudo/spacecorsair/display/Texture;

    .line 343
    :cond_48
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ufoFrames:[Lfr/testudo/spacecorsair/display/Drawable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2ee

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x32

    div-long/2addr v2, v4

    long-to-int v1, v2

    aget-object v0, v0, v1

    goto :goto_a

    .line 345
    :cond_58
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v1, v3, :cond_9e

    .line 346
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;->drawable:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 347
    if-eqz v1, :cond_a

    array-length v3, v1

    if-lt v3, v6, :cond_a

    const/16 v3, 0x15

    aget-object v3, v1, v3

    if-eqz v3, :cond_a

    .line 350
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ratFrames:[Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_81

    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ratSrc:Lfr/testudo/spacecorsair/display/Texture;

    aget-object v3, v1, v4

    iget-object v3, v3, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-ne v0, v3, :cond_81

    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ratFrames:[Lfr/testudo/spacecorsair/display/Drawable;

    aget-object v0, v0, v4

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8d

    .line 351
    :cond_81
    invoke-static {v1, v6, v2}, Lfr/testudo/spacecorsair/mod/Mod;->build([Lfr/testudo/spacecorsair/display/Drawable;IF)[Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ratFrames:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 352
    aget-object v0, v1, v4

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ratSrc:Lfr/testudo/spacecorsair/display/Texture;

    .line 354
    :cond_8d
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->ratFrames:[Lfr/testudo/spacecorsair/display/Drawable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x370

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x28

    div-long/2addr v2, v4

    long-to-int v1, v2

    aget-object v0, v0, v1

    goto/16 :goto_a

    .line 356
    :cond_9e
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->playerArt(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    goto/16 :goto_a
.end method

.method public static ignoreCollision(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->ignore(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 84
    :cond_8
    :goto_8
    return v0

    .line 82
    :cond_9
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    .line 83
    if-nez v2, :cond_17

    if-nez v3, :cond_17

    move v0, v1

    goto :goto_8

    .line 84
    :cond_17
    if-eqz v2, :cond_1f

    iget-boolean v2, p1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v2, :cond_8

    if-nez v3, :cond_8

    :cond_1f
    if-eqz v3, :cond_25

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v2, :cond_8

    :cond_25
    move v0, v1

    goto :goto_8
.end method

.method public static isDrone(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-eqz p0, :cond_11

    sget-object v2, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v1

    if-eq p0, v2, :cond_10

    sget-object v2, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v2, v0

    if-ne p0, v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public static label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 841
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    .line 842
    if-eqz v0, :cond_b

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/Mod;->withLevel(Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    .line 855
    :cond_a
    :goto_a
    return-object v0

    .line 843
    :cond_b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModRep;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    .line 844
    if-eqz v0, :cond_16

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/Mod;->withLevel(Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 845
    :cond_16
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModDev;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_21

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/Mod;->withLevel(Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 847
    :cond_21
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    .line 848
    if-nez v0, :cond_a

    .line 851
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->baseLabel(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;

    move-result-object v0

    .line 852
    if-eqz v0, :cond_a

    const-string v1, "megatronShip"

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702bd

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static launchDrones(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 16

    .prologue
    const/4 v14, 0x2

    const v5, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 567
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->blocksMissiles()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 655
    :cond_e
    :goto_e
    return v1

    .line 570
    :cond_f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isHive(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;)Z

    move-result v0

    if-nez v0, :cond_19

    move v1, v3

    .line 571
    goto :goto_e

    .line 573
    :cond_19
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_e

    move v2, v3

    move v0, v3

    .line 577
    :goto_1f
    if-ge v2, v14, :cond_33

    .line 578
    sget-object v6, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v6, v6, v2

    if-eqz v6, :cond_2f

    sget-object v6, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v6, v6, v2

    iget-boolean v6, v6, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v6, :cond_30

    :cond_2f
    move v0, v1

    .line 577
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_33
    move v6, v3

    move v2, v3

    .line 581
    :goto_35
    if-ge v6, v14, :cond_49

    .line 582
    sget-object v7, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v7, v7, v6

    if-eqz v7, :cond_46

    sget-object v7, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v7, v7, v6

    iget-boolean v7, v7, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v7, :cond_46

    move v2, v1

    .line 581
    :cond_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 585
    :cond_49
    if-eqz v2, :cond_cd

    if-eqz v0, :cond_59

    iget-wide v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_59

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileCount:I

    if-gtz v0, :cond_cd

    .line 586
    :cond_59
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-nez v0, :cond_8d

    move v0, v1

    :goto_5e
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    .line 587
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->applyDroneDamage()V

    .line 588
    :goto_63
    if-ge v3, v14, :cond_96

    .line 589
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v0, v0, v3

    if-eqz v0, :cond_8a

    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v0, :cond_8a

    .line 590
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v2, v0, v3

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v0, :cond_8f

    const-string v0, "DEF DRONE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_81
    iput-object v0, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 591
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v0, v0, v3

    const/4 v2, -0x1

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 588
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_8d
    move v0, v3

    .line 586
    goto :goto_5e

    .line 590
    :cond_8f
    const-string v0, "ATK DRONE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 594
    :cond_96
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playSonarbeep()V

    .line 595
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v0, :cond_be

    const-string v0, "DRONES: DEFENSE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a7
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v2, :cond_c5

    const v2, 0x3ecccccd    # 0.4f

    :goto_ae
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v3, :cond_c7

    const v3, 0x3f4ccccd    # 0.8f

    :goto_b5
    sget-boolean v6, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v6, :cond_cb

    :goto_b9
    invoke-static {p0, v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_e

    :cond_be
    const-string v0, "DRONES: ATTACK"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a7

    :cond_c5
    move v2, v4

    goto :goto_ae

    :cond_c7
    const v3, 0x3ecccccd    # 0.4f

    goto :goto_b5

    :cond_cb
    move v4, v5

    goto :goto_b9

    .line 598
    :cond_cd
    iget-wide v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_e

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileCount:I

    if-lez v0, :cond_e

    .line 601
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x44e10000    # 1800.0f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->engageRange()F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v7

    .line 602
    if-nez v7, :cond_f9

    .line 603
    const-string v0, "NO TARGET IN RANGE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    invoke-static {p0, v0, v4, v2, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_e

    .line 606
    :cond_f9
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->tierOf(Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/Mod;->hiveTier:I

    .line 607
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 608
    if-gez v0, :cond_110

    move v0, v3

    :cond_110
    move v6, v3

    move v2, v3

    .line 612
    :goto_112
    if-ge v6, v14, :cond_1ba

    .line 613
    sget-object v8, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v8, v8, v6

    if-eqz v8, :cond_125

    sget-object v8, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v8, v8, v6

    iget-boolean v8, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v8, :cond_125

    .line 612
    :goto_122
    add-int/lit8 v6, v6, 0x1

    goto :goto_112

    .line 616
    :cond_125
    if-nez v6, :cond_1ac

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->UFO_ALIEN:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    .line 617
    :goto_129
    invoke-static {v2, v0, v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newEnnemis(Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;II)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v8

    .line 618
    sget-object v2, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aput-object v8, v2, v6

    .line 619
    sget-object v2, Lfr/testudo/spacecorsair/mod/Mod;->droneTimers:[I

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModSpecs;->HIVE_LIFE:[I

    sget v10, Lfr/testudo/spacecorsair/mod/Mod;->hiveTier:I

    aget v9, v9, v10

    aput v9, v2, v6

    .line 620
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/high16 v9, 0x43340000    # 180.0f

    add-float/2addr v9, v2

    if-nez v6, :cond_1b0

    const/high16 v2, -0x3e600000    # -20.0f

    :goto_144
    add-float/2addr v2, v9

    iput v2, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 621
    iget v2, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    const/high16 v9, 0x42b40000    # 90.0f

    sub-float/2addr v2, v9

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 622
    iget-object v2, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v9, v12

    const/high16 v12, 0x41600000    # 14.0f

    mul-float/2addr v9, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x41600000    # 14.0f

    mul-float/2addr v10, v11

    invoke-virtual {v2, v9, v10}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 623
    iget-object v2, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v9, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 624
    iget-object v2, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v9, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 625
    invoke-virtual {v8}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 626
    invoke-static {v8, v0, v6}, Lfr/testudo/spacecorsair/mod/Mod;->attachToPilotLevel(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V

    .line 627
    const/high16 v2, 0x457a0000    # 4000.0f

    iput v2, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 628
    iput v3, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 629
    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorR:F

    .line 630
    iput v4, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorG:F

    .line 631
    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorB:F

    .line 632
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v2, :cond_1b3

    const-string v2, "DEF DRONE"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_196
    iput-object v2, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 633
    const/4 v2, -0x1

    iput v2, v8, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 634
    invoke-virtual {v8, v7}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 635
    invoke-virtual {v8}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 636
    const/4 v2, 0x6

    invoke-static {v8, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addGreen(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 637
    const/4 v2, 0x4

    invoke-static {v8, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addLightBlue(Lfr/testudo/spacecorsair/business/Element;I)V

    move v2, v1

    .line 638
    goto/16 :goto_122

    .line 616
    :cond_1ac
    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/ennemis/EnnemisType;

    goto/16 :goto_129

    .line 620
    :cond_1b0
    const/high16 v2, 0x41a00000    # 20.0f

    goto :goto_144

    .line 632
    :cond_1b3
    const-string v2, "ATK DRONE"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_196

    .line 640
    :cond_1ba
    if-eqz v2, :cond_e

    .line 641
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->applyDroneDamage()V

    .line 642
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeOne(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 643
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateRemainingMissiles()V

    .line 644
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    long-to-float v0, v2

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationReloadValue:F

    mul-float/2addr v0, v2

    float-to-long v2, v0

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    .line 645
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissileStart()V

    .line 646
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 647
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42700000    # 60.0f

    const/high16 v6, 0x442f0000    # 700.0f

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-virtual {v0, v2, v3, v6, v7}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 648
    iput v5, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 649
    iput v4, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 650
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 651
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    const-string v0, "DRONES LAUNCHED"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {p0, v0, v5, v4, v2}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 653
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->onBayLaunch(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto/16 :goto_e
.end method

.method private static megatronShockwave(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 475
    sget v1, Lfr/testudo/spacecorsair/mod/Mod;->shockTimer:I

    int-to-long v2, v1

    sub-long/2addr v2, p1

    long-to-int v1, v2

    sput v1, Lfr/testudo/spacecorsair/mod/Mod;->shockTimer:I

    .line 476
    sget v1, Lfr/testudo/spacecorsair/mod/Mod;->shockTimer:I

    if-lez v1, :cond_d

    .line 506
    :goto_c
    return-void

    .line 480
    :cond_d
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->refreshCache()V

    .line 481
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->enemyCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 482
    :goto_18
    if-ge v2, v3, :cond_75

    .line 483
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->enemyCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 484
    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v4, :cond_2b

    move v0, v1

    .line 482
    :goto_27
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_18

    .line 487
    :cond_2b
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v5

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x43af0000    # 350.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b4

    .line 488
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v1, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v1, v4

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v1

    .line 489
    sget-object v4, Lfr/testudo/spacecorsair/mod/Mod;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v5, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 490
    sget-object v4, Lfr/testudo/spacecorsair/mod/Mod;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 491
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 492
    const/4 v0, 0x1

    goto :goto_27

    .line 495
    :cond_75
    if-eqz v1, :cond_ae

    .line 496
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x43960000    # 300.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v4, 0x44480000    # 800.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 497
    const v1, 0x3edadadb

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 498
    const v1, 0x3f20a0a1

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 499
    const v1, 0x3f3cbcbd

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 500
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 502
    const/16 v0, 0x5dc

    sput v0, Lfr/testudo/spacecorsair/mod/Mod;->shockTimer:I

    goto/16 :goto_c

    .line 504
    :cond_ae
    const/16 v0, 0xc8

    sput v0, Lfr/testudo/spacecorsair/mod/Mod;->shockTimer:I

    goto/16 :goto_c

    :cond_b4
    move v0, v1

    goto/16 :goto_27
.end method

.method public static onMissileLock(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 6

    .prologue
    .line 511
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_a

    if-nez p1, :cond_b

    .line 529
    :cond_a
    :goto_a
    return-void

    .line 514
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    .line 515
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_RAT:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v0, v1, :cond_24

    .line 516
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 517
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/Mod;->vortex(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    goto :goto_a

    .line 519
    :cond_24
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v0, v1, :cond_39

    .line 520
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 521
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/Mod;->vortex(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    goto :goto_a

    .line 523
    :cond_39
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v0, v1, :cond_a

    .line 524
    sget v0, Lfr/testudo/spacecorsair/mod/Mod;->antiMissileTimer:I

    if-gtz v0, :cond_a

    .line 525
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootAntiMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 526
    const/16 v0, 0x9c4

    sput v0, Lfr/testudo/spacecorsair/mod/Mod;->antiMissileTimer:I

    goto :goto_a
.end method

.method private static original(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 893
    :try_start_0
    const-class v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const-string v1, "descId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 894
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 895
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 896
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    .line 898
    :goto_1a
    return-object v0

    .line 897
    :catch_1b
    move-exception v0

    .line 898
    const-string v0, ""

    goto :goto_1a
.end method

.method public static playLaserSound()V
    .registers 6

    .prologue
    const v5, 0x3f866666    # 1.05f

    const v4, 0x3f733333    # 0.95f

    .line 287
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 288
    if-eqz v0, :cond_13

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTitan;->ownsLaserSound(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 308
    :cond_12
    :goto_12
    return-void

    .line 291
    :cond_13
    if-eqz v0, :cond_1b

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->playFire(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 295
    :cond_1b
    if-eqz v0, :cond_47

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isBolt(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 296
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_59

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_37

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_59

    .line 298
    :cond_37
    const-string v1, "gun_heavy"

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    const-wide/16 v4, 0x82

    invoke-static {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    move-result v1

    if-nez v1, :cond_12

    .line 303
    :cond_47
    if-eqz v0, :cond_77

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModSpecs;->isBolt(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 304
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    goto :goto_12

    .line 299
    :cond_59
    if-eqz v1, :cond_47

    iget v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_65

    iget v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_47

    .line 300
    :cond_65
    const-string v1, "gun_medium"

    const v2, 0x3f333333    # 0.7f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    const-wide/16 v4, 0x6e

    invoke-static {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_12

    .line 306
    :cond_77
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playPlayerLaser()V

    goto :goto_12
.end method

.method private static refreshCache()V
    .registers 5

    .prologue
    .line 99
    sget-wide v0, Lfr/testudo/spacecorsair/mod/Mod;->cacheFrame:J

    sget-wide v2, Lfr/testudo/spacecorsair/mod/Mod;->frameCounter:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 121
    :cond_8
    return-void

    .line 102
    :cond_9
    sget-wide v0, Lfr/testudo/spacecorsair/mod/Mod;->frameCounter:J

    sput-wide v0, Lfr/testudo/spacecorsair/mod/Mod;->cacheFrame:J

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->enemyCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->rockCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 107
    const/4 v0, 0x0

    move v2, v0

    :goto_25
    if-ge v2, v4, :cond_8

    .line 108
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 109
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v1, :cond_35

    .line 107
    :cond_31
    :goto_31
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 112
    :cond_35
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v1, :cond_5b

    .line 113
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 114
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    if-eqz v1, :cond_4a

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    if-nez v1, :cond_31

    .line 115
    :cond_4a
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    if-eqz v1, :cond_55

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->hidden:Z

    if-nez v1, :cond_31

    .line 116
    :cond_55
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->enemyCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 117
    :cond_5b
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-eqz v1, :cond_31

    .line 118
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->rockCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31
.end method

.method private static regentRootShot(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 10

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 452
    sget v0, Lfr/testudo/spacecorsair/mod/Mod;->rootTimer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/Mod;->rootTimer:I

    .line 453
    sget v0, Lfr/testudo/spacecorsair/mod/Mod;->rootTimer:I

    if-lez v0, :cond_10

    .line 471
    :goto_f
    return-void

    .line 456
    :cond_10
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x44fa0000    # 2000.0f

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_28

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2d

    .line 458
    :cond_28
    const/16 v0, 0x1f4

    sput v0, Lfr/testudo/spacecorsair/mod/Mod;->rootTimer:I

    goto :goto_f

    .line 461
    :cond_2d
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->calc:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v0, v4

    div-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 462
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->calc:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, v2

    .line 463
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newElectricBullet()Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;

    move-result-object v2

    const/high16 v3, 0x43160000    # 150.0f

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletLifeTime:I

    mul-int/lit8 v4, v4, 0x2

    sget-object v5, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->root100_8sec:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v2, v3, v4, p0, v5}, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-result-object v2

    .line 464
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 465
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v5, -0x3ed00000    # -11.0f

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 466
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 467
    double-to-float v0, v0

    iput v0, v2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    .line 468
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 470
    const/16 v0, 0x3a98

    sput v0, Lfr/testudo/spacecorsair/mod/Mod;->rootTimer:I

    goto/16 :goto_f
.end method

.method public static sideCheck(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)I
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->side(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    .line 66
    if-eqz v0, :cond_a

    move v1, v0

    .line 76
    :cond_9
    :goto_9
    return v1

    .line 67
    :cond_a
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v4

    .line 68
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v5

    .line 69
    if-nez v4, :cond_16

    if-eqz v5, :cond_9

    .line 72
    :cond_16
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_1c

    if-eqz v4, :cond_3c

    :cond_1c
    move v0, v2

    .line 73
    :goto_1d
    iget-boolean v3, p1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v3, :cond_23

    if-eqz v5, :cond_3e

    :cond_23
    move v3, v2

    .line 74
    :goto_24
    instance-of v6, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v6, :cond_40

    if-nez v4, :cond_40

    move v4, v2

    .line 75
    :goto_2b
    instance-of v6, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v6, :cond_32

    if-nez v5, :cond_32

    move v1, v2

    .line 76
    :cond_32
    if-eqz v0, :cond_36

    if-nez v3, :cond_3a

    :cond_36
    if-eqz v4, :cond_42

    if-eqz v1, :cond_42

    :cond_3a
    :goto_3a
    move v1, v2

    goto :goto_9

    :cond_3c
    move v0, v1

    .line 72
    goto :goto_1d

    :cond_3e
    move v3, v1

    .line 73
    goto :goto_24

    :cond_40
    move v4, v1

    .line 74
    goto :goto_2b

    .line 76
    :cond_42
    const/4 v2, 0x2

    goto :goto_3a
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 14

    .prologue
    .line 370
    sget-wide v0, Lfr/testudo/spacecorsair/mod/Mod;->frameCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/Mod;->frameCounter:J

    .line 371
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModBoss;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 373
    :try_start_a
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModFleet;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_fd

    .line 378
    :goto_d
    :try_start_d
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModShips;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_100

    .line 383
    :goto_10
    :try_start_10
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModFx;->update(J)V

    .line 384
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModCaps;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 385
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModTitan;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 386
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModAnchor;->tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_103

    .line 390
    :goto_1c
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v0, :cond_21

    .line 448
    :goto_20
    return-void

    .line 393
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    .line 397
    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE_TRIPLE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 398
    sget-object v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->ROTATIVE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    .line 399
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_3f

    iget-object v0, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->guardianTurret:Lfr/testudo/spacecorsair/display/Drawable;

    if-eq v0, v1, :cond_3f

    iget-object v0, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->isModTurret(Lfr/testudo/spacecorsair/display/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 400
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->croisette:Lfr/testudo/spacecorsair/display/Drawable;

    .line 402
    :cond_3f
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_4f

    iget-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->isModTurret(Lfr/testudo/spacecorsair/display/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 403
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    sput-object v0, Lfr/testudo/spacecorsair/mod/Mod;->doubleCanon:Lfr/testudo/spacecorsair/display/Drawable;

    .line 405
    :cond_4f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->turretArt(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Ljava/lang/String;

    move-result-object v0

    .line 406
    if-nez v0, :cond_d3

    const/4 v0, 0x0

    .line 408
    :goto_58
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v6

    .line 409
    if-ltz v6, :cond_87

    .line 410
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v7

    .line 411
    if-eqz v7, :cond_d8

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x42600000    # 56.0f

    iget v8, v7, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v8, v8

    const v9, 0x3e23d70a    # 0.16f

    mul-float/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move v2, v1

    .line 412
    :goto_7c
    if-eqz v7, :cond_dc

    iget v1, v7, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    :goto_80
    invoke-static {v6, v1, v2}, Lfr/testudo/spacecorsair/mod/ModArt;->familyTurret(IIF)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_87

    move-object v0, v1

    .line 415
    :cond_87
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v3, v1, :cond_de

    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->guardianTurret:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v1, :cond_de

    .line 416
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->guardianTurret:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v1, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 422
    :cond_93
    :goto_93
    if-eqz v0, :cond_ec

    .line 423
    iput-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 427
    :cond_97
    :goto_97
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->ownsTurrets(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 429
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v0, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 433
    :cond_a5
    sget v0, Lfr/testudo/spacecorsair/mod/Mod;->beamFlash:I

    if-lez v0, :cond_b0

    .line 434
    sget v0, Lfr/testudo/spacecorsair/mod/Mod;->beamFlash:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/Mod;->beamFlash:I

    .line 436
    :cond_b0
    sget v0, Lfr/testudo/spacecorsair/mod/Mod;->antiMissileTimer:I

    if-lez v0, :cond_bb

    .line 437
    sget v0, Lfr/testudo/spacecorsair/mod/Mod;->antiMissileTimer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/Mod;->antiMissileTimer:I

    .line 440
    :cond_bb
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_ce

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_ce

    .line 441
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->ALIEN_BLATTE:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v3, v0, :cond_f5

    .line 442
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/Mod;->regentRootShot(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 447
    :cond_ce
    :goto_ce
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/Mod;->upkeepDrones(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto/16 :goto_20

    .line 406
    :cond_d3
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->turret(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    goto :goto_58

    .line 411
    :cond_d8
    const/high16 v1, 0x42800000    # 64.0f

    move v2, v1

    goto :goto_7c

    .line 412
    :cond_dc
    const/4 v1, -0x1

    goto :goto_80

    .line 417
    :cond_de
    if-eqz v0, :cond_e3

    .line 418
    iput-object v0, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_93

    .line 419
    :cond_e3
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->croisette:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v1, :cond_93

    .line 420
    sget-object v1, Lfr/testudo/spacecorsair/mod/Mod;->croisette:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v1, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_93

    .line 424
    :cond_ec
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->doubleCanon:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_97

    .line 425
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->doubleCanon:Lfr/testudo/spacecorsair/display/Drawable;

    iput-object v0, v5, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->tourelleDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_97

    .line 443
    :cond_f5
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;->TEST:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;

    if-ne v3, v0, :cond_ce

    .line 444
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/Mod;->megatronShockwave(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto :goto_ce

    .line 374
    :catch_fd
    move-exception v0

    goto/16 :goto_d

    .line 379
    :catch_100
    move-exception v0

    goto/16 :goto_10

    .line 387
    :catch_103
    move-exception v0

    goto/16 :goto_1c
.end method

.method private static upkeepDrones(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 746
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->engageRange()F

    move-result v4

    move v3, v2

    .line 747
    :goto_8
    const/4 v0, 0x2

    if-ge v3, v0, :cond_c4

    .line 748
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aget-object v5, v0, v3

    .line 749
    if-nez v5, :cond_15

    .line 747
    :cond_11
    :goto_11
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    .line 752
    :cond_15
    iget-boolean v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v0, :cond_20

    .line 753
    iput-object v10, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 754
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->drones:[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    aput-object v10, v0, v3

    goto :goto_11

    .line 757
    :cond_20
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->droneTimers:[I

    sget-object v6, Lfr/testudo/spacecorsair/mod/Mod;->droneTimers:[I

    aget v6, v6, v3

    int-to-long v6, v6

    sub-long/2addr v6, p1

    long-to-int v6, v6

    aput v6, v0, v3

    .line 758
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    .line 759
    sget-object v0, Lfr/testudo/spacecorsair/mod/Mod;->droneTimers:[I

    aget v0, v0, v3

    if-lez v0, :cond_44

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_44

    const v0, 0x459c4000    # 5000.0f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_48

    .line 760
    :cond_44
    invoke-static {v3, v1}, Lfr/testudo/spacecorsair/mod/Mod;->dropDrone(IZ)V

    goto :goto_11

    .line 763
    :cond_48
    iget-object v7, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 764
    if-eqz v7, :cond_5e

    iget-boolean v0, v7, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_5e

    iget-boolean v0, v7, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_5e

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_5e

    instance-of v0, v7, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_83

    :cond_5e
    move v0, v1

    .line 766
    :goto_5f
    if-nez v0, :cond_75

    sget-boolean v8, Lfr/testudo/spacecorsair/mod/Mod;->droneDefense:Z

    if-eqz v8, :cond_75

    iget-object v7, v7, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v7

    const/high16 v8, 0x43480000    # 200.0f

    add-float/2addr v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_75

    move v0, v1

    .line 769
    :cond_75
    if-eqz v0, :cond_11

    .line 770
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_85

    .line 772
    invoke-virtual {v5, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_11

    :cond_83
    move v0, v2

    .line 764
    goto :goto_5f

    .line 774
    :cond_85
    iput-object v10, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 776
    const/high16 v0, 0x43af0000    # 350.0f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_11

    .line 777
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v0, v6

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v0, v6

    const/high16 v6, 0x42b40000    # 90.0f

    add-float/2addr v0, v6

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    .line 778
    iput v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 779
    sget-object v6, Lfr/testudo/spacecorsair/mod/Mod;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v7, 0x0

    const v8, -0x425c28f6    # -0.08f

    long-to-float v9, p1

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 780
    sget-object v6, Lfr/testudo/spacecorsair/mod/Mod;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 781
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/Mod;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_11

    .line 786
    :cond_c4
    return-void
.end method

.method private static vortex(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 532
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v4

    if-lez v0, :cond_67

    const/4 v0, 0x1

    :goto_f
    mul-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 533
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newVortexProjectile()Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;

    move-result-object v2

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletDamage:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->bulletLifeTime:I

    sget-object v5, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v2, v3, v4, p0, v5}, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;

    move-result-object v2

    .line 534
    iput v6, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->r:F

    .line 535
    iput v6, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->g:F

    .line 536
    iput v6, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->b:F

    .line 537
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 538
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v5, -0x3f400000    # -6.0f

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 539
    const-wide/16 v4, 0x1f40

    iput-wide v4, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->lifeTimeInMilli:J

    .line 540
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 541
    iget-object v0, v2, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 542
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playAlienRatLaser()V

    .line 544
    iput-object v2, p1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 545
    return-void

    .line 532
    :cond_67
    const/4 v0, -0x1

    goto :goto_f
.end method

.method static withLevel(Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 861
    :try_start_0
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->isEquipable()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->dontDisplayLevel:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    if-nez v0, :cond_11

    .line 864
    :cond_10
    :goto_10
    return-object p0

    .line 862
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702bd

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_42

    move-result-object p0

    goto :goto_10

    .line 863
    :catch_42
    move-exception v0

    goto :goto_10
.end method

.method public static zoomBonus()F
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 792
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 793
    if-eqz v1, :cond_b

    iget-object v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v2, :cond_c

    .line 797
    :cond_b
    :goto_b
    return v0

    .line 796
    :cond_c
    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    .line 797
    const/16 v2, 0x118

    if-le v1, v2, :cond_b

    add-int/lit16 v0, v1, -0x118

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    goto :goto_b
.end method
