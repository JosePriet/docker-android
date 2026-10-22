.class public abstract Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/ennemis/Ennemis$1;
    }
.end annotation


# static fields
.field public static ELITE_MARK_SIZE_BIG:Lfr/testudo/spacecorsair/display/Drawable;

.field public static ELITE_MARK_SIZE_NORMAL:Lfr/testudo/spacecorsair/display/Drawable;


# instance fields
.field public accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

.field public activityCounter:I

.field protected activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

.field public attackTarget:Lfr/testudo/spacecorsair/business/Element;

.field public bulletDamage:F

.field public bulletLifeTime:I

.field public bulletSpeed:F

.field public curActivityIndex:I

.field public currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

.field public desengagementDistance:F

.field private detectionDistance:F

.field public distanceShoot:F

.field public elite:Z

.field public gotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field public isPousee:Z

.field public levelStr:Ljava/lang/String;

.field public lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public maxTurnFactor:F

.field public milleSecBetweenShots:J

.field public nextShootAlowed:J

.field public pouseeForce:F

.field public precisionToTarget:I

.field public shootPrecision:F

.field public specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field public specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field public xp:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 31
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->detectionDistance:F

    .line 32
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    .line 33
    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    .line 34
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletLifeTime:I

    .line 36
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    .line 37
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->nextShootAlowed:J

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 40
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z

    .line 41
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    .line 42
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->shootPrecision:F

    .line 43
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletSpeed:F

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 47
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    .line 54
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->precisionToTarget:I

    .line 55
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->gotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 65
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->hasSpeedDeperdition:Z

    .line 66
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->drawOnRadar:Z

    .line 67
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorB:F

    .line 68
    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorR:F

    .line 69
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->radarColorG:F

    .line 70
    return-void
.end method

.method private checkIfPlayerDetected()V
    .registers 3

    .prologue
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z
    move-result v0
    if-eqz v0, :mod_not_drone
    return-void
    :mod_not_drone

    .line 292
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isDetectionPlayerEnabled:Z

    if-eqz v0, :cond_1d

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->detectionDistance:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceToPlayer:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_1d

    .line 293
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 295
    :cond_1d
    return-void
.end method

.method private doAttackTarget(J)V
    .registers 6

    .prologue
    .line 311
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_1d

    .line 312
    :cond_a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onAttackTargetStop()V

    .line 313
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    if-ne v0, v1, :cond_19

    .line 314
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initActivity()V

    .line 332
    :goto_18
    return-void

    .line 316
    :cond_19
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->fetchNextActivity()V

    goto :goto_18

    .line 322
    :cond_1d
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_4b

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceToPlayer:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_31
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceToTarget:F

    .line 323
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceToTarget:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_44

    .line 325
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onFightDesengage()V

    .line 326
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initActivity()V

    .line 327
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onAttackTargetStop()V

    .line 331
    :cond_44
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceToTarget:F

    float-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doAttackIa(JJ)V

    goto :goto_18

    .line 322
    :cond_4b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    goto :goto_31
.end method

.method private doDiseapear()V
    .registers 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->remove()V

    .line 386
    return-void
.end method

.method private doGotoPoint()V
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->gotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 380
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->fetchNextActivity()V

    .line 382
    :cond_b
    return-void
.end method

.method private doIdleDuring(J)V
    .registers 6

    .prologue
    .line 367
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activityCounter:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activityCounter:I

    .line 368
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->timeInMilli:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activityCounter:I

    if-gt v0, v1, :cond_12

    .line 369
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->fetchNextActivity()V

    .line 371
    :cond_12
    return-void
.end method

.method private doJumpToActivity(I)V
    .registers 4

    .prologue
    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activityCounter:I

    .line 340
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    if-nez v0, :cond_f

    .line 341
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->DEFAULT_IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 342
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initNewActivity()V

    .line 357
    :goto_e
    return-void

    .line 347
    :cond_f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activities:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    aget-object v0, v0, p1

    if-nez v0, :cond_1b

    .line 348
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->fetchNextActivity()V

    goto :goto_e

    .line 352
    :cond_1b
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    .line 353
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activities:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 354
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initNewActivity()V

    goto :goto_e
.end method

.method private fetchNextActivity()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 442
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activityCounter:I

    .line 444
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    if-nez v0, :cond_14

    .line 445
    :cond_c
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->DEFAULT_IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 446
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initNewActivity()V

    .line 457
    :goto_13
    return-void

    .line 450
    :cond_14
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    .line 451
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activityCount:I

    if-lt v0, v1, :cond_24

    .line 452
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    .line 455
    :cond_24
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activities:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 456
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initNewActivity()V

    goto :goto_13
.end method

.method private static findCivilNearMe(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/Element;
    .registers 7

    .prologue
    .line 500
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 502
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_36

    .line 503
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 505
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v3, :cond_32

    .line 506
    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v3, :cond_32

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    int-to-float v4, p1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_32

    .line 515
    :goto_31
    return-object v0

    .line 502
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 515
    :cond_36
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private getNewRandomGotoPoint(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)V
    .registers 12

    .prologue
    .line 539
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 540
    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 541
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 542
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 543
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->gotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->posX:F

    iget v6, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->posY:F

    invoke-virtual {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 544
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->gotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v6, v5

    iget v5, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->range:I

    int-to-double v8, v5

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 545
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->gotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v4, v3

    iget v3, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->range:I

    int-to-double v6, v3

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 547
    return-void
.end method

.method private initActivity()V
    .registers 3

    .prologue
    .line 422
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activityCounter:I

    .line 424
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    if-nez v0, :cond_14

    .line 425
    :cond_c
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->DEFAULT_IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 426
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initNewActivity()V

    .line 438
    :goto_13
    return-void

    .line 430
    :cond_14
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activities:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_26

    .line 431
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->DEFAULT_IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 432
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initNewActivity()V

    goto :goto_13

    .line 436
    :cond_26
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activities:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 437
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initNewActivity()V

    goto :goto_13
.end method

.method private initNewActivity()V
    .registers 3

    .prologue
    .line 463
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis$1;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisActivity$type:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 490
    :goto_f
    :pswitch_f
    return-void

    .line 468
    :pswitch_10
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onIdle()V

    goto :goto_f

    .line 471
    :pswitch_14
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->posX:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->posY:F

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onGotoAction(FF)V

    goto :goto_f

    .line 474
    :pswitch_20
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getNewRandomGotoPoint(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;)V

    goto :goto_f

    .line 477
    :pswitch_26
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onAttackTargetStart()V

    goto :goto_f

    .line 485
    :pswitch_2a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->range:I

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->startNewRandomCivilAttack(I)V

    goto :goto_f

    .line 463
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_20
        :pswitch_14
        :pswitch_26
        :pswitch_2a
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private onGotoAction(FF)V
    .registers 4

    .prologue
    .line 375
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->gotoPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 376
    return-void
.end method

.method private onIdle()V
    .registers 2

    .prologue
    .line 494
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spinSpeed:F

    .line 495
    return-void
.end method

.method private startNewRandomCivilAttack(I)V
    .registers 3

    .prologue
    .line 524
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->findCivilNearMe(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_e

    .line 526
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 527
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onAttackTargetStart()V

    .line 534
    :goto_d
    return-void

    .line 530
    :cond_e
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->fetchNextActivity()V

    goto :goto_d
.end method


# virtual methods
.method public addToCurrentLevel()V
    .registers 2

    .prologue
    .line 555
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 560
    :cond_1c
    :goto_1c
    return-void

    .line 559
    :cond_1d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_1c
.end method

.method protected alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z
    .registers 5

    .prologue
    .line 391
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    .line 393
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    .line 394
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 396
    const/4 v2, 0x4

    if-ge v1, v2, :cond_33

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spinSpeed:F

    .line 417
    :goto_24
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->precisionToTarget:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_59

    const/4 v0, 0x1

    :goto_32
    return v0

    .line 399
    :cond_33
    const/16 v2, 0xb4

    if-gt v1, v2, :cond_48

    .line 401
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_43

    .line 402
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spinSpeed:F

    goto :goto_24

    .line 404
    :cond_43
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spinSpeed:F

    goto :goto_24

    .line 408
    :cond_48
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_54

    .line 409
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    neg-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spinSpeed:F

    goto :goto_24

    .line 411
    :cond_54
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spinSpeed:F

    goto :goto_24

    .line 417
    :cond_59
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public applyAcceleration(J)V
    .registers 8

    .prologue
    .line 203
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z

    if-eqz v0, :cond_2d

    .line 205
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    mul-float/2addr v1, v2

    long-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 206
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 207
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 208
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->accelVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 211
    :cond_2d
    return-void
.end method

.method public applyAsteroidCollision(F)V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isAsteroidDamagable:Z

    if-nez v0, :cond_7

    .line 220
    :goto_6
    return-void

    .line 219
    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/Element;->applyAsteroidCollision(F)V

    goto :goto_6
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 8

    .prologue
    .line 577
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 579
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->disableIa:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    instance-of v0, p2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_21

    .line 581
    iget-boolean v0, p2, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->isDetectionPlayerEnabled:Z

    if-nez v0, :cond_22

    .line 597
    :cond_21
    :goto_21
    return-void

    .line 585
    :cond_22
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->RANDOM_CIVIL_ATTACK:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_21

    .line 587
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChase(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_21
.end method

.method protected abstract doAttackIa(JJ)V
.end method

.method public doIa(J)V
    .registers 6

    .prologue
    .line 257
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->disableIa:Z

    if-eqz v0, :cond_8

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z

    .line 288
    :goto_7
    :pswitch_7
    return-void

    .line 261
    :cond_8
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->checkIfPlayerDetected()V

    .line 262
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->gazPousee:Z

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z

    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis$1;->$SwitchMap$fr$testudo$spacecorsair$business$ennemis$EnnemisActivity$type:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    goto :goto_7

    .line 270
    :pswitch_21
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doIdleDuring(J)V

    goto :goto_7

    .line 274
    :pswitch_25
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doGotoPoint()V

    goto :goto_7

    .line 278
    :pswitch_29
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doAttackTarget(J)V

    goto :goto_7

    .line 281
    :pswitch_2d
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doDiseapear()V

    goto :goto_7

    .line 284
    :pswitch_31
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->range:I

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doJumpToActivity(I)V

    goto :goto_7

    .line 264
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_21
        :pswitch_25
        :pswitch_25
        :pswitch_29
        :pswitch_29
        :pswitch_2d
        :pswitch_31
    .end packed-switch
.end method

.method public doPhysic(J)V
    .registers 4

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 191
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doIa(J)V

    .line 192
    return-void
.end method

.method public getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    return-object v0
.end method

.method protected init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 73
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 74
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z

    .line 75
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Faction;->ENNEMIS:Lfr/testudo/spacecorsair/business/world/Faction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->faction:Lfr/testudo/spacecorsair/business/world/Faction;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    .line 81
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    .line 82
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->disableIa:Z

    .line 83
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 86
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initDifficultyColor()V

    .line 87
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initActivity()V

    .line 88
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lootDispersion:I

    .line 89
    return-object p0
.end method

.method protected init(ILfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 94
    iput p1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 95
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->isPousee:Z

    .line 96
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

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

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 98
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->spin:F

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Faction;->ENNEMIS:Lfr/testudo/spacecorsair/business/world/Faction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->faction:Lfr/testudo/spacecorsair/business/world/Faction;

    .line 100
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 101
    iput v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    .line 102
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    .line 103
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->disableIa:Z

    .line 104
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    .line 105
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initDifficultyColor()V

    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 109
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initActivity()V

    .line 110
    return-object p0
.end method

.method public final initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    const/high16 v1, 0x43480000    # 200.0f

    .line 299
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 300
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->ATTACK_MODE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 301
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceToTarget:F

    .line 302
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_18

    .line 303
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->desengagementDistance:F

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceToPlayer:F

    .line 305
    :cond_18
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initNewActivity()V

    .line 307
    return-void
.end method

.method public initChase(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    .line 564
    if-eqz p1, :cond_6

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_7

    .line 570
    :cond_6
    :goto_6
    return-object p0

    .line 567
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->ATTACK_MODE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 568
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 569
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initNewActivity()V

    goto :goto_6
.end method

.method public initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 2

    .prologue
    .line 551
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChase(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method public initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iput p1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 138
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iput p2, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 139
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 140
    return-object p0
.end method

.method public initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 4

    .prologue
    .line 161
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method public initPositionWithRandom(FFF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 14

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 131
    neg-float v0, p3

    float-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, p3

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    add-double/2addr v0, v2

    double-to-float v0, v0

    add-float/2addr v0, p1

    .line 132
    neg-float v1, p3

    float-to-double v2, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    float-to-double v6, p3

    mul-double/2addr v4, v6

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v1, p2

    .line 133
    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initPosition(FF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method public initPositionWithRandom(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 5

    .prologue
    .line 127
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initPositionWithRandom(FFF)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onAttackTargetStart()V
.end method

.method protected abstract onAttackTargetStop()V
.end method

.method public onDestroyed(Z)V
    .registers 6

    .prologue
    if-eqz p1, :mod_no_drop
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLoot;->onEnemyKilled(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    :mod_no_drop

    .line 234
    if-eqz p1, :cond_52

    .line 236
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->getMitigedXp(II)F

    move-result v0

    float-to-int v0, v0

    .line 237
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->addXp(I)V

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModQol;->bounty(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;I)V

    .line 241
    if-lez v0, :cond_4a

    .line 242
    invoke-static {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 243
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

    .line 247
    :goto_3f
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_4a
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->canLootFromEnnemisWithLevel(I)Z

    move-result p1

    .line 252
    :cond_52
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->onDestroyed(Z)V

    .line 253
    return-void

    .line 245
    :cond_56
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

    goto :goto_3f
.end method

.method public onFightDesengage()V
    .registers 1

    .prologue
    .line 229
    return-void
.end method

.method public onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 4

    .prologue
    .line 601
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V

    .line 602
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->disableIa:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->kind:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->RANDOM_CIVIL_ATTACK:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity$type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 604
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChase(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 608
    :cond_24
    return-void
.end method

.method public setActivitySequence(Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    .line 179
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    .line 181
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initActivity()V

    .line 182
    return-object p0
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    return-object v0
.end method

.method public setElite(Z)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 145
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    .line 146
    if-nez p1, :cond_11

    .line 147
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070360

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    .line 149
    :cond_11
    invoke-virtual {p0, v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initDifficultyColor(Z)V

    .line 150
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->elite(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    return-object p0
.end method

.method public setIaDisabled()V
    .registers 2

    .prologue
    .line 612
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/Element;->setIaDisabled()V

    .line 613
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;->DEFAULT_IDLE:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->currentActivity:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivity;

    .line 614
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initNewActivity()V

    .line 615
    return-void
.end method

.method public setMitigedDistance(I)V
    .registers 8

    .prologue
    const/high16 v0, 0x437a0000    # 250.0f

    .line 622
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 623
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1b

    .line 624
    float-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 628
    :cond_1b
    int-to-float v2, p1

    int-to-float v3, p1

    mul-float/2addr v1, v3

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 630
    cmpg-float v2, v1, v0

    if-gtz v2, :cond_29

    .line 634
    :goto_26
    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->detectionDistance:F

    .line 636
    return-void

    :cond_29
    move v0, v1

    goto :goto_26
.end method

.method public shuffleActivityIndex()V
    .registers 5

    .prologue
    .line 169
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    if-nez v0, :cond_5

    .line 175
    :goto_4
    return-void

    .line 173
    :cond_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->activitySequence:Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;

    iget v2, v2, Lfr/testudo/spacecorsair/business/ennemis/EnnemisActivitySequence;->activityCount:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->curActivityIndex:I

    .line 174
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initActivity()V

    goto :goto_4
.end method

.method public withLaserAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialLaserAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 117
    return-object p0
.end method

.method public withMissileAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 122
    return-object p0
.end method
