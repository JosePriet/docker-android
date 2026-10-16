.class public Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;
.super Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
.source "SourceFile"


# static fields
.field public static final ATTACK_TARGET_CENTER_DISTANCE:I = 0x96

.field public static final GAZ_TEXTURE_COUNT:I = 0x3

.field public static final RECALC_TARGET_POS_FREUENCY_IN_MILLI:I = 0xc8

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static final drawableDimShield:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable; = null

.field private static gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final maxDistanceToTarget:I = 0x384

.field public static final minDistanceToTarget:I = 0x383

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final physicalDim_withShield:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field private static final tourellePoupe:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final tourelleProue:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public cur_gaz_texture:I

.field escaping:Z

.field lastShieldPourc:F

.field public nextTimeRecalcPos:I

.field public relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

.field public shield:Lfr/testudo/spacecorsair/business/player/Shield;

.field shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

.field public targetFollowAngle:I

.field public targetFollowDistanceRandom:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v4, 0x433e0000    # 190.0f

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/high16 v1, 0x438c0000    # 280.0f

    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->physicalDim_withShield:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableDimShield:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {v0, v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tourelleProue:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3de00000    # -40.0f

    invoke-direct {v0, v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tourellePoupe:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;-><init>()V

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tourelleProue:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tourellePoupe:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 40
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->targetFollowAngle:I

    .line 41
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->targetFollowDistanceRandom:I

    .line 44
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->nextTimeRecalcPos:I

    .line 47
    new-instance v0, Lfr/testudo/spacecorsair/business/player/Shield;

    move v2, v1

    move v3, v1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/player/Shield;-><init>(FFFZLfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 178
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->escaping:Z

    .line 305
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->cur_gaz_texture:I

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lastShieldPourc:F

    .line 104
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v1, v1

    div-float/2addr v1, v8

    const/high16 v2, 0x420c0000    # 35.0f

    sub-float/2addr v1, v2

    invoke-direct {v0, v7, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newGreen(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 105
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v6, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 106
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v6, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v6, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 108
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v1, v1

    div-float/2addr v1, v8

    sub-float/2addr v1, v7

    invoke-direct {v0, v7, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newBlue(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 110
    return-void
.end method

.method private hackRecheckagression(FLfr/testudo/spacecorsair/business/Element;)V
    .registers 7

    .prologue
    .line 448
    iget-boolean v0, p2, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_45

    .line 449
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->damageRecievedByPlayer:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->damageRecievedByPlayer:I

    .line 450
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->disableIa:Z

    if-nez v0, :cond_45

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->damageRecievedByPlayer:I

    int-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->amountOfDamageAllowedInRatioByPlayerBeforeRebelion:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_45

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->allowPlayerDamage:Z

    if-nez v0, :cond_45

    .line 452
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v0, v1, :cond_45

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v0, v1, :cond_45

    .line 453
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setAtackPlayerMode()V

    .line 454
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->checkFirstCivilAttacked()V

    .line 455
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_45

    .line 456
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    .line 464
    :cond_45
    instance-of v0, p2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_6a

    .line 465
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->damageRecievedByEnnemis:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->damageRecievedByEnnemis:I

    .line 466
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->allowEscorteDefense:Z

    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    .line 468
    :goto_5b
    if-eqz v0, :cond_6d

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->defenseStatus:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->peacefull:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 469
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->engageSelfDefenseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 482
    :cond_6a
    :goto_6a
    return-void

    .line 466
    :cond_6b
    const/4 v0, 0x0

    goto :goto_5b

    .line 473
    :cond_6d
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->disableIa:Z

    if-nez v1, :cond_6a

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->damageRecievedByEnnemis:I

    int-to-float v1, v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6a

    if-nez v0, :cond_6a

    .line 475
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v0, v1, :cond_6a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-eq v0, v1, :cond_6a

    .line 476
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setAtackEnnemisMode(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_6a
.end method

.method private requestMissileShot()V
    .registers 5

    .prologue
    .line 221
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_13

    .line 230
    :goto_12
    return-void

    .line 226
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shootMissile(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_12

    .line 227
    :catch_18
    move-exception v0

    .line 228
    const-string v1, "Error while shooting missile"

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/utils/Logs;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public static setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 81
    return-void
.end method

.method public static setShieldTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 67
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableDimShield:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 68
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 60
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 61
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    .line 63
    return-void
.end method

.method private shootMissile(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 234
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->missileCount:I

    if-gtz v0, :cond_6

    .line 254
    :goto_5
    return-void

    .line 238
    :cond_6
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1, p0, v2}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3db80000    # -50.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 241
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 242
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 243
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 244
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 245
    const/16 v1, 0x4b0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 247
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->spin:F

    int-to-float v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 248
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 249
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->spin:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 251
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->currentMissileReload:J

    .line 253
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->missileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->missileCount:I

    goto :goto_5
.end method


# virtual methods
.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 10

    .prologue
    .line 433
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0, p1, p3}, Lfr/testudo/spacecorsair/business/player/Shield;->applyDamage(FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v0

    .line 434
    float-to-double v2, v0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1b

    .line 435
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->hackRecheckagression(FLfr/testudo/spacecorsair/business/Element;)V

    .line 441
    :goto_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 442
    return-void

    .line 438
    :cond_1b
    invoke-super {p0, v0, p2, p3}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_13
.end method

.method public doChasse(JZ)V
    .registers 9

    .prologue
    .line 187
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 188
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 190
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 191
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 193
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    .line 194
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->currentMissileReload:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->currentMissileReload:J

    .line 198
    :cond_21
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->distanceToTarget:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->distanceShoot:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_33

    .line 199
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 200
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 204
    :cond_33
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->distanceToTarget:F

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->miniDistanceForMissile:J

    long-to-float v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3f

    .line 205
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->requestMissileShot()V

    .line 209
    :cond_3f
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->nextTimeRecalcPos:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->nextTimeRecalcPos:I

    .line 210
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->nextTimeRecalcPos:I

    if-gtz v0, :cond_4f

    .line 211
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->updateRelativePosTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 214
    :cond_4f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;I)Z

    move-result v0

    if-nez v0, :cond_5d

    const/4 v0, 0x1

    :goto_5a
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->isPousee:Z

    .line 217
    return-void

    .line 214
    :cond_5d
    const/4 v0, 0x0

    goto :goto_5a
.end method

.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doPhysic(J)V

    .line 291
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/player/Shield;->doPhysic(J)V

    .line 292
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lastShieldPourc:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_21

    .line 293
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 294
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lastShieldPourc:F

    .line 296
    :cond_21
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 85
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Shield;->isUp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->physicalDim_withShield:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 93
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_a
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;
    .registers 11

    .prologue
    const v5, 0x3f99999a    # 1.2f

    const v4, 0x3f4ccccd    # 0.8f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v6, 0x3

    const/4 v2, 0x1

    .line 114
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->init(I)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 116
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxLife:F

    .line 117
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->life:F

    .line 118
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->xp:I

    .line 119
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->milleSecBetweenShots:J

    .line 120
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->bulletDamage:F

    .line 121
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->missileCount:I

    .line 122
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->missileReloadTimeInMilli:J

    .line 123
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->currentMissileReload:J

    .line 124
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->miniDistanceForMissile:J

    .line 125
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 126
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxTurnFactor:F

    .line 127
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 128
    const v0, 0x45bb8000    # 6000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->distanceShoot:F

    .line 129
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->mass:F

    .line 130
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxPouseeForce:F

    .line 131
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->pouseeForce:F

    .line 133
    const v0, 0x3f828f5c    # 1.02f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->speedDeperditionfactor:F

    .line 134
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 135
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 136
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shootPrecision:F

    .line 138
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 140
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawOnRadar:Z

    .line 141
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->radarPointSize:F

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->radarColorG:F

    .line 143
    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->radarColorR:F

    .line 144
    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->radarColorB:F

    .line 145
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->distanceToPlayer:F

    .line 147
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->isPousee:Z

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->escaping:Z

    .line 150
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 151
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 153
    const-string v0, "POLICE"

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificName:Ljava/lang/String;

    .line 155
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->antiMissileCount:I

    .line 157
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->neverEscapeWhenInjured:Z

    .line 159
    const/4 v7, 0x2

    .line 160
    const/16 v0, 0x8

    if-le p2, v0, :cond_9d

    move v7, v6

    .line 163
    :cond_9d
    const/16 v0, 0xd

    if-le p2, v0, :cond_a3

    .line 164
    add-int/lit8 v7, v7, 0x1

    .line 167
    :cond_a3
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    const/4 v3, 0x5

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 168
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    const/4 v3, 0x5

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 171
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shieldSpec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Shield;->applySpec(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V

    .line 174
    return-object p0
.end method

.method public onChaseStart()V
    .registers 7

    .prologue
    .line 277
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 278
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 280
    const-wide v0, -0x3f6d400000000000L    # -1200.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->targetFollowAngle:I

    .line 281
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->targetFollowDistanceRandom:I

    .line 283
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->updateRelativePosTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 285
    return-void
.end method

.method public onChaseStop()V
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 301
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 302
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 8

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 259
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 260
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x44098000    # 550.0f

    const v4, 0x44228000    # 650.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 263
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 264
    iput v5, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 265
    iput v5, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 266
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 269
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 270
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addLightBlue(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 271
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onDestroyed(Z)V

    .line 272
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 13

    .prologue
    .line 312
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->registerYourselfToDrawQueue()V

    .line 315
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 318
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 319
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 320
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 322
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 327
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 328
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 329
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 331
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 336
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->isPousee:Z

    if-eqz v0, :cond_b0

    .line 338
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->cur_gaz_texture:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->cur_gaz_texture:I

    .line 339
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->cur_gaz_texture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7e

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->cur_gaz_texture:I

    .line 343
    :cond_7e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 346
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->pouseeForce:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxPouseeForce:F

    div-float v5, v0, v1

    .line 348
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->spin:F

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 355
    :cond_b0
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 356
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41b80000    # 23.0f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41700000    # 15.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 357
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->levelColorB:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 360
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 361
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 362
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 363
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 367
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v5, v5, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ecccccd    # 0.4f

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 372
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_1ab

    .line 374
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->BLUE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    .line 375
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->BLUE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    .line 376
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->BLUE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    .line 377
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 379
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-wide v0, v0, Lfr/testudo/spacecorsair/engine/GameThread;->curUpTime:J

    const-wide/16 v2, 0x7d0

    rem-long/2addr v0, v2

    .line 380
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16d

    .line 381
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    .line 382
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    .line 383
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->RED:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    .line 388
    :cond_16d
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_180

    .line 389
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificNameDecalX:I

    .line 391
    :cond_180
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42700000    # 60.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 392
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->specificName:Ljava/lang/String;

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 396
    :cond_1ab
    return-void
.end method

.method public restoreDefaultPouseeForce()V
    .registers 2

    .prologue
    .line 401
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->maxPouseeForce:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->pouseeForce:F

    .line 402
    return-void
.end method

.method public updateRelativePosTarget(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 10

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    iget-boolean v1, p1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_12

    .line 408
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->targetFollowDistanceRandom:I

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 410
    :cond_12
    add-int/lit16 v1, v0, 0x96

    .line 413
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    const v2, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_59

    .line 414
    iget v0, p1, Lfr/testudo/spacecorsair/business/Element;->spin:F

    .line 420
    :goto_23
    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v0, v2

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->targetFollowAngle:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    .line 421
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 423
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 424
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-double v4, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    int-to-double v6, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-float v1, v2

    invoke-virtual {v0, v4, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 425
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->relativePosTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 426
    const/16 v0, 0xc8

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->nextTimeRecalcPos:I

    .line 427
    return-void

    .line 416
    :cond_59
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularInRad()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_23
.end method
