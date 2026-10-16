.class public abstract Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;,
        Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;
    }
.end annotation


# static fields
.field public static final GATHER_DISTANCE:I = 0x258

.field public static final GATHER_DPS:F = 30.0f

.field public static final PRECISIONTOTARGET:I = 0x96

.field public static final SCAN_DISTANCE:I = 0x1f4


# instance fields
.field public accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field public actWaitTime:I

.field protected activity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field protected activitySize:I

.field public allowPlayerDamage:Z

.field public amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

.field public antiMissileCount:I

.field public beeingScanned:Z

.field public bulletDamage:F

.field public bulletLifeTime:I

.field public bulletSpeed:F

.field public chasseTarget:Lfr/testudo/spacecorsair/business/Element;

.field public curActivityIndex:I

.field public curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

.field public currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public currentMissileReload:J

.field public damageRecievedByEnnemis:I

.field public damageRecievedByPlayer:I

.field public defenseStatus:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

.field public distanceShoot:F

.field escapePoint:Lfr/testudo/spacecorsair/engine/Vector2;

.field gathering:Z

.field public isPousee:Z

.field public levelStr:Ljava/lang/String;

.field lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

.field public lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public maxPouseeForce:F

.field public maxTurnFactor:F

.field public milleSecBetweenShots:J

.field public miniDistanceForMissile:J

.field public missileCount:I

.field public missileReloadTimeInMilli:J

.field public missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public neverEscapeWhenInjured:Z

.field public nextShootAlowed:J

.field public originalName:Ljava/lang/String;

.field public pourLifeToEscape:I

.field public pouseeForce:F

.field public scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

.field public scanTimeConfig:I

.field public scanTimeRemaining:I

.field public scanable:Z

.field public shootPrecision:F

.field targetAngle:F

.field public xp:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxTurnFactor:F

    .line 43
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->bulletDamage:F

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->bulletLifeTime:I

    .line 45
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->distanceShoot:F

    .line 46
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->milleSecBetweenShots:J

    .line 47
    iput-wide v6, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->nextShootAlowed:J

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 49
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    .line 50
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->pouseeForce:F

    .line 51
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxPouseeForce:F

    .line 52
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->shootPrecision:F

    .line 53
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->bulletSpeed:F

    .line 54
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missileCount:I

    .line 55
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missileReloadTimeInMilli:J

    .line 56
    iput-wide v6, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentMissileReload:J

    .line 57
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->miniDistanceForMissile:J

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->levelStr:Ljava/lang/String;

    .line 62
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByPlayer:I

    .line 63
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByEnnemis:I

    .line 64
    const/16 v0, 0x19

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->pourLifeToEscape:I

    .line 67
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activitySize:I

    .line 68
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curActivityIndex:I

    .line 69
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->actWaitTime:I

    .line 70
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->neverEscapeWhenInjured:Z

    .line 71
    const/16 v0, 0xf

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

    .line 73
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->peacefull:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->defenseStatus:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    .line 80
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->escapePoint:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 85
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanable:Z

    .line 86
    iput-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->originalName:Ljava/lang/String;

    .line 90
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->antiMissileCount:I

    .line 415
    iput-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    .line 416
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->gathering:Z

    .line 438
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->beeingScanned:Z

    .line 440
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeConfig:I

    return-void
.end method

.method private fetchEscapePoint()V
    .registers 3

    .prologue
    .line 553
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_13

    .line 555
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 557
    :cond_13
    return-void
.end method

.method public static getCivilByType(Lfr/testudo/spacecorsair/business/world/civil/CivilType;II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 5

    .prologue
    .line 704
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilType:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 715
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 707
    :pswitch_d
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTurtuleCivil(II)Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;

    move-result-object v0

    goto :goto_c

    .line 709
    :pswitch_12
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newSquidCivil(II)Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;

    move-result-object v0

    goto :goto_c

    .line 711
    :pswitch_17
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(II)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    goto :goto_c

    .line 713
    :pswitch_1c
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newGuardianCivilShip(II)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    goto :goto_c

    .line 704
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method private initEscape()V
    .registers 3

    .prologue
    .line 567
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxPouseeForce:F

    const v1, 0x3fcccccd    # 1.6f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxPouseeForce:F

    .line 568
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxTurnFactor:F

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxTurnFactor:F

    .line 569
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 570
    const-string v0, "JDE"

    const-string v1, "Set escape"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void
.end method

.method private initNewActivity()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 355
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->gathering:Z

    .line 357
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    array-length v0, v0

    if-nez v0, :cond_f

    .line 402
    :cond_e
    :goto_e
    :pswitch_e
    return-void

    .line 361
    :cond_f
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curActivityIndex:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activitySize:I

    if-le v0, v1, :cond_17

    .line 362
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curActivityIndex:I

    .line 365
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curActivityIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 367
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->kind:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a4

    goto :goto_e

    .line 373
    :pswitch_2f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posX:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posY:F

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_e

    .line 370
    :pswitch_47
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posX:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posY:F

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_e

    .line 382
    :pswitch_55
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->initNewGatherAsteroid(Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto :goto_e

    .line 386
    :pswitch_5b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    neg-int v1, v1

    int-to-double v2, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    int-to-double v6, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    neg-int v2, v2

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v6, v6, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 387
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posX:F

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 388
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posY:F

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto/16 :goto_e

    .line 394
    :pswitch_9e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->initGotoPortal()V

    goto/16 :goto_e

    .line 367
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_47
        :pswitch_5b
        :pswitch_9e
        :pswitch_e
        :pswitch_e
        :pswitch_55
        :pswitch_e
    .end packed-switch
.end method

.method private initNewGatherAsteroid(Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V
    .registers 6

    .prologue
    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->gathering:Z

    .line 421
    iget v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posX:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b

    .line 422
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestAsteroidInRange(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    .line 427
    :goto_1a
    return-void

    .line 424
    :cond_1b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget v1, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posX:F

    iget v2, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posY:F

    iget v3, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestAsteroidInRange(FFI)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    goto :goto_1a
.end method


# virtual methods
.method protected alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z
    .registers 4

    .prologue
    .line 656
    const/16 v0, 0x96

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;IZ)Z

    move-result v0

    return v0
.end method

.method protected alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;I)Z
    .registers 4

    .prologue
    .line 660
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;IZ)Z

    move-result v0

    return v0
.end method

.method protected alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;IZ)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    .line 665
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    rem-float/2addr v2, v5

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->targetAngle:F

    .line 667
    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->targetAngle:F

    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 668
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 670
    const/4 v3, 0x4

    if-ge v2, v3, :cond_47

    .line 671
    const/4 v3, 0x0

    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spinSpeed:F

    .line 691
    :goto_2b
    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxPouseeForce:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->pouseeForce:F

    .line 693
    if-eqz p3, :cond_73

    .line 694
    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->distanceToPlayer:F

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_71

    .line 697
    :cond_46
    :goto_46
    return v0

    .line 674
    :cond_47
    const/16 v3, 0xb4

    if-gt v2, v3, :cond_5e

    .line 676
    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->targetAngle:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_59

    .line 677
    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxTurnFactor:F

    neg-float v3, v3

    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spinSpeed:F

    goto :goto_2b

    .line 679
    :cond_59
    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxTurnFactor:F

    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spinSpeed:F

    goto :goto_2b

    .line 683
    :cond_5e
    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->targetAngle:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6c

    .line 684
    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxTurnFactor:F

    neg-float v3, v3

    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spinSpeed:F

    goto :goto_2b

    .line 686
    :cond_6c
    iget v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxTurnFactor:F

    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spinSpeed:F

    goto :goto_2b

    :cond_71
    move v0, v1

    .line 694
    goto :goto_46

    .line 697
    :cond_73
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    int-to-float v3, p2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_46

    move v0, v1

    goto :goto_46
.end method

.method public applyAcceleration(J)V
    .registers 8

    .prologue
    .line 610
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    if-eqz v0, :cond_2d

    .line 612
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->pouseeForce:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alterationSnareValue:F

    mul-float/2addr v1, v2

    long-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 613
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 614
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 615
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 618
    :cond_2d
    return-void
.end method

.method public applyAsteroidCollision(F)V
    .registers 4

    .prologue
    .line 623
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;->CHASING:Lfr/testudo/spacecorsair/business/ennemis/EnnemisState;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 624
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/Element;->applyAsteroidCollision(F)V

    .line 627
    :cond_11
    return-void
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 8

    .prologue
    .line 504
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 505
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 506
    if-nez p2, :cond_d

    .line 550
    :cond_c
    :goto_c
    return-void

    .line 509
    :cond_d
    iget-boolean v0, p2, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_52

    .line 510
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByPlayer:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByPlayer:I

    .line 511
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->disableIa:Z

    if-nez v0, :cond_52

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByPlayer:I

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_52

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->allowPlayerDamage:Z

    if-nez v0, :cond_52

    .line 513
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v0, v1, :cond_52

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v0, v1, :cond_52

    .line 514
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setAtackPlayerMode()V

    .line 515
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->checkFirstCivilAttacked()V

    .line 516
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_52

    .line 517
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    .line 525
    :cond_52
    instance-of v0, p2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_9b

    .line 526
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByEnnemis:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByEnnemis:I

    .line 527
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->allowEscorteDefense:Z

    if-eqz v0, :cond_78

    const/4 v0, 0x1

    .line 529
    :goto_68
    if-eqz v0, :cond_7a

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->defenseStatus:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->peacefull:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 530
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->engageSelfDefenseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_c

    .line 527
    :cond_78
    const/4 v0, 0x0

    goto :goto_68

    .line 534
    :cond_7a
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->disableIa:Z

    if-nez v1, :cond_9b

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByEnnemis:I

    int-to-float v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->maxLife:F

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9b

    if-nez v0, :cond_9b

    .line 536
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v0, v1, :cond_9b

    .line 537
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setAtackEnnemisMode(Lfr/testudo/spacecorsair/business/Element;)V

    .line 544
    :cond_9b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->disableIa:Z

    if-nez v0, :cond_c

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeInPourc:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->pourLifeToEscape:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 545
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v0, v1, :cond_c

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->neverEscapeWhenInjured:Z

    if-nez v0, :cond_c

    .line 546
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->fetchEscapePoint()V

    .line 547
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->initEscape()V

    goto/16 :goto_c
.end method

.method public attackPlayerIfItNotTheCaseAlready()V
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-ne v0, v1, :cond_7

    .line 579
    :goto_6
    return-void

    .line 578
    :cond_7
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setAtackPlayerMode()V

    goto :goto_6
.end method

.method public doActivity(J)V
    .registers 6

    .prologue
    .line 193
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    if-nez v0, :cond_10

    .line 194
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->initNewActivity()V

    .line 195
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    if-nez v0, :cond_10

    .line 197
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 238
    :cond_f
    :goto_f
    return-void

    .line 203
    :cond_10
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilActivity$Kind:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->kind:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 234
    :goto_1f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->allowEscorteDefense:Z

    if-eqz v0, :cond_f

    .line 235
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doSelfDefense(J)V

    goto :goto_f

    .line 206
    :pswitch_29
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doMooveToPLayer()V

    goto :goto_1f

    .line 211
    :pswitch_2d
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doMoove()V

    goto :goto_1f

    .line 214
    :pswitch_31
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {p0, v0, p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doWait(Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;J)V

    goto :goto_1f

    .line 217
    :pswitch_37
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doDiseapear()V

    goto :goto_1f

    .line 220
    :pswitch_3b
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doGatherAstroid(J)V

    goto :goto_1f

    .line 224
    :pswitch_3f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doWaitUntilPlayerclose(Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto :goto_1f

    .line 229
    :pswitch_45
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->showMobileSellerStationMenu()V

    .line 230
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNextActivity()V

    goto :goto_1f

    .line 203
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_31
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_45
    .end packed-switch
.end method

.method public abstract doChasse(JZ)V
.end method

.method public doDiseapear()V
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    if-eqz v0, :cond_d

    .line 336
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->completedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, p0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;->onActivityCompleted(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 338
    :cond_d
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->remove()V

    .line 339
    return-void
.end method

.method public doEscape(J)V
    .registers 4

    .prologue
    .line 169
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->escapePoint:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 170
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doDiseapear()V

    .line 172
    :cond_b
    return-void
.end method

.method public doGatherAstroid(J)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 265
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-nez v0, :cond_b

    .line 266
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNextActivity()V

    .line 289
    :goto_a
    return-void

    .line 270
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/Asteroid;->removed:Z

    if-eqz v0, :cond_17

    .line 271
    iput-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    .line 272
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNextActivity()V

    goto :goto_a

    .line 276
    :cond_17
    const/high16 v0, 0x44160000    # 600.0f

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/world/Asteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_58

    move v0, v1

    :goto_28
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->gathering:Z

    .line 278
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->gathering:Z

    if-eqz v0, :cond_5a

    .line 279
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    long-to-float v3, p1

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3, p0, v5}, Lfr/testudo/spacecorsair/business/world/Asteroid;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 280
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_52

    .line 281
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 282
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    invoke-static {v0, v1, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;IZ)V

    .line 284
    :cond_52
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spinSpeed:F

    goto :goto_a

    :cond_58
    move v0, v2

    .line 276
    goto :goto_28

    .line 287
    :cond_5a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Asteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_a
.end method

.method public doIa(J)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_29

    :cond_b
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->distanceToPlayer:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_19
    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->distanceToTarget:F

    .line 139
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilState:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    .line 165
    :goto_28
    return-void

    .line 138
    :cond_29
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    goto :goto_19

    .line 141
    :pswitch_34
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    goto :goto_28

    .line 144
    :pswitch_37
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doActivity(J)V

    goto :goto_28

    .line 147
    :pswitch_3b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_4d

    .line 148
    :cond_45
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onChaseStop()V

    .line 149
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ACTIVITY:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    goto :goto_28

    .line 153
    :cond_4d
    invoke-virtual {p0, p1, p2, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doChasse(JZ)V

    goto :goto_28

    .line 156
    :pswitch_51
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_64

    .line 158
    :cond_5b
    const-string v0, "Chasse taget null on escape"

    invoke-static {v0}, Lfr/testudo/spacecorsair/utils/Logs;->d(Ljava/lang/String;)V

    .line 162
    :goto_60
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doEscape(J)V

    goto :goto_28

    .line 160
    :cond_64
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doChasse(JZ)V

    goto :goto_60

    .line 139
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_37
        :pswitch_3b
        :pswitch_51
    .end packed-switch
.end method

.method public doMoove()V
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 323
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNextActivity()V

    .line 325
    :cond_b
    return-void
.end method

.method public doMooveToPLayer()V
    .registers 4

    .prologue
    .line 328
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posX:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v2, v2, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->posY:F

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 329
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;IZ)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 330
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNextActivity()V

    .line 332
    :cond_27
    return-void
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x43fa0000    # 500.0f

    .line 471
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 472
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doIa(J)V

    .line 473
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanable:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    if-eqz v0, :cond_3a

    .line 475
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->distanceToPlayer:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_23

    .line 476
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->beeingScanned:Z

    if-nez v0, :cond_23

    .line 477
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->beeingScanned:Z

    .line 478
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    invoke-interface {v0, p0}, Lfr/testudo/spacecorsair/business/world/civil/ScanListener;->onScanStart(Lfr/testudo/spacecorsair/business/Element;)V

    .line 483
    :cond_23
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->beeingScanned:Z

    if-eqz v0, :cond_3a

    .line 485
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->distanceToPlayer:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3b

    .line 486
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->beeingScanned:Z

    .line 487
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    invoke-interface {v0, p0}, Lfr/testudo/spacecorsair/business/world/civil/ScanListener;->onScanInterrupted(Lfr/testudo/spacecorsair/business/Element;)V

    .line 488
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->beeingScanned:Z

    .line 489
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeConfig:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeRemaining:I

    .line 499
    :cond_3a
    :goto_3a
    return-void

    .line 491
    :cond_3b
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeRemaining:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeRemaining:I

    .line 492
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeRemaining:I

    if-gtz v0, :cond_3a

    .line 493
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    invoke-interface {v0, p0}, Lfr/testudo/spacecorsair/business/world/civil/ScanListener;->onScanFinished(Lfr/testudo/spacecorsair/business/Element;)V

    .line 494
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->beeingScanned:Z

    goto :goto_3a
.end method

.method public doSelfDefense(J)V
    .registers 6

    .prologue
    .line 244
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$civil$CivilShip$SelfDefenseStatus:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->defenseStatus:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 259
    :goto_d
    :pswitch_d
    return-void

    .line 250
    :pswitch_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_1d

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->distanceToTarget:F

    const v1, 0x451c4000    # 2500.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_25

    .line 251
    :cond_1d
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->peacefull:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->defenseStatus:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    .line 252
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onChaseStop()V

    goto :goto_d

    .line 255
    :cond_25
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doChasse(JZ)V

    goto :goto_d

    .line 244
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public doWait(Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;J)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 293
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spinSpeed:F

    .line 295
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->actWaitTime:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->actWaitTime:I

    .line 296
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->actWaitTime:I

    iget v1, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    if-lt v0, v1, :cond_18

    .line 297
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->actWaitTime:I

    .line 298
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNextActivity()V

    .line 301
    :cond_18
    return-void
.end method

.method public doWaitUntilPlayerclose(Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    .line 305
    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spinSpeed:F

    .line 306
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->distanceToPlayer:F

    iget v1, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->waitTime:I

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_21

    .line 307
    iget v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->pouseeForce:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_22

    .line 308
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNextActivity()V

    .line 318
    :cond_21
    :goto_21
    return-void

    .line 310
    :cond_22
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    iget v1, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->pouseeForce:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_21

    .line 311
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setNextActivity()V

    goto :goto_21
.end method

.method protected engageSelfDefenseTarget(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 560
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 561
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->target_engaged:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->defenseStatus:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    .line 562
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onChaseStart()V

    .line 563
    return-void
.end method

.method public getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    return-object v0
.end method

.method public init(I)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 94
    iput p1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->level:I

    .line 95
    iput-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 96
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->levelStr:Ljava/lang/String;

    .line 98
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Faction;->CIVIL:Lfr/testudo/spacecorsair/business/world/Faction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->faction:Lfr/testudo/spacecorsair/business/world/Faction;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->hasSpeedDeperdition:Z

    .line 101
    iput-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curActivityIndex:I

    .line 103
    iput-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 104
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByPlayer:I

    .line 105
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByEnnemis:I

    .line 106
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->actWaitTime:I

    .line 107
    const/16 v0, 0x19

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->pourLifeToEscape:I

    .line 109
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v7, v6, v7, v6}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValueColor(FFFF)V

    .line 110
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanable:Z

    .line 111
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->beeingScanned:Z

    .line 112
    iput-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    .line 113
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeConfig:I

    .line 114
    iput-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->originalName:Ljava/lang/String;

    .line 115
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->isPousee:Z

    .line 116
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    .line 117
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->neverEscapeWhenInjured:Z

    .line 118
    const/16 v0, 0xf

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

    .line 119
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->disableIa:Z

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->peacefull:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->defenseStatus:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    .line 121
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->allowPlayerDamage:Z

    .line 123
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->initDifficultyColor()V

    .line 124
    return-object p0
.end method

.method public initGotoPortal()V
    .registers 3

    .prologue
    .line 405
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_16

    .line 407
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 412
    :goto_15
    return-void

    .line 409
    :cond_16
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activityGotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_15
.end method

.method public abstract onChaseStart()V
.end method

.method public abstract onChaseStop()V
.end method

.method public onDestroyed(Z)V
    .registers 6

    .prologue
    .line 632
    if-eqz p1, :cond_54

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->disableIa:Z

    if-nez v0, :cond_54

    .line 633
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->getLevel()I

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->xp:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->getMitigedXp(II)F

    move-result v0

    float-to-int v0, v0

    .line 634
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->addXp(I)V

    .line 638
    invoke-static {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 639
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newXpMessage()Lfr/testudo/spacecorsair/display/text/XpTextMessage;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " xp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/XpTextMessage;

    move-result-object v0

    .line 644
    :goto_41
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->getLevel()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->canLootFromEnnemisWithLevel(I)Z

    move-result p1

    .line 649
    :cond_54
    if-eqz p1, :cond_85

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->disableIa:Z

    if-nez v0, :cond_85

    const/4 v0, 0x1

    :goto_5b
    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/Element;->onDestroyed(Z)V

    .line 650
    return-void

    .line 641
    :cond_5f
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newXpMessage()Lfr/testudo/spacecorsair/display/text/XpTextMessage;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " xp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/display/text/XpTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/XpTextMessage;

    move-result-object v0

    goto :goto_41

    .line 649
    :cond_85
    const/4 v0, 0x0

    goto :goto_5b
.end method

.method public onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 2

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->shootAntiMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 767
    return-void
.end method

.method public abstract restoreDefaultPouseeForce()V
.end method

.method public setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V
    .registers 3

    .prologue
    .line 183
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 184
    array-length v0, p1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activitySize:I

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curActivityIndex:I

    .line 186
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ACTIVITY:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 187
    return-void
.end method

.method public setAtackEnnemisMode(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 583
    const-string v0, "JDE"

    const-string v1, "civil set attaque ennemis mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 585
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->gathering:Z

    .line 587
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onChaseStart()V

    .line 588
    return-void
.end method

.method public setAtackPlayerMode()V
    .registers 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 591
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 592
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 593
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->radarColorR:F

    .line 594
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->radarColorG:F

    .line 595
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->radarColorB:F

    .line 596
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v2, v2, v1, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValueColor(FFFF)V

    .line 597
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missileReloadTimeInMilli:J

    long-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40bb580000000000L    # 7000.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missileReloadTimeInMilli:J

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->gathering:Z

    .line 599
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onChaseStart()V

    .line 601
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    .line 604
    return-void
.end method

.method public setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->escapePoint:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 178
    return-void
.end method

.method public setIaDisabled()V
    .registers 2

    .prologue
    .line 727
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/Element;->setIaDisabled()V

    .line 728
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 730
    return-void
.end method

.method public setNamePrefix(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 459
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->originalName:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 464
    :goto_4
    return-void

    .line 462
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->originalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificNameDecalX:I

    goto :goto_4
.end method

.method public setNewLife(F)V
    .registers 4

    .prologue
    .line 130
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->setNewLife(F)V

    .line 131
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 132
    return-void
.end method

.method public setNextActivity()V
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->completedListener:Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, p0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivityCompletedListener;->onActivityCompleted(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 346
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curActivityIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curActivityIndex:I

    .line 347
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curActivityIndex:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->activitySize:I

    if-lt v0, v1, :cond_18

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curActivityIndex:I

    .line 350
    :cond_18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->initNewActivity()V

    .line 351
    return-void
.end method

.method public setNotScannable()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 444
    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeConfig:I

    .line 445
    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeRemaining:I

    .line 446
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanable:Z

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    .line 448
    return-void
.end method

.method public setScanable(Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V
    .registers 3

    .prologue
    .line 451
    iget v0, p1, Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;->scanTimeInSec:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeConfig:I

    .line 452
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeConfig:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanTimeRemaining:I

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanable:Z

    .line 454
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;->scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->scanListener:Lfr/testudo/spacecorsair/business/world/civil/ScanListener;

    .line 455
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->specificName:Ljava/lang/String;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->originalName:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public shootAntiMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 12

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x0

    .line 734
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->antiMissileCount:I

    if-gtz v0, :cond_b

    .line 762
    :goto_a
    return-void

    .line 741
    :cond_b
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->level:I

    const/high16 v2, 0x437a0000    # 250.0f

    const/16 v3, 0x19

    sget-object v6, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->init(IFILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 742
    iput v7, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    .line 743
    iput v8, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->b:F

    .line 744
    iput v9, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->r:F

    .line 745
    iput v8, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->g:F

    .line 746
    iput v9, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 747
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v7, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 748
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 749
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 750
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 751
    const v1, 0x40e9999a    # 7.3f

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->pouseeForce:F

    .line 752
    const v1, 0x3f933333    # 1.15f

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speedDeperditionFactorPostAlumed:F

    .line 753
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 754
    const/16 v1, 0x190

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 755
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, -0x404ccccd    # -1.4f

    invoke-virtual {v1, v7, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 756
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 757
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 758
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->spin:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 759
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->antiMissileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->antiMissileCount:I

    goto :goto_a
.end method
