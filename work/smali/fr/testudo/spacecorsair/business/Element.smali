.class public abstract Lfr/testudo/spacecorsair/business/Element;
.super Lfr/testudo/spacecorsair/engine/PoolObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfr/testudo/spacecorsair/engine/PoolObject;",
        "Ljava/lang/Comparable",
        "<",
        "Lfr/testudo/spacecorsair/business/Element;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "Element"

.field static otherTemp:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public a:F

.field public alterationAgilityDuree:I

.field public alterationAgilityValue:F

.field public alterationPoisonDuree:I

.field public alterationPoisonTickDamage:I

.field public alterationPoisonTickFrequence:I

.field public alterationReloadDuree:I

.field public alterationReloadValue:F

.field public alterationSnareDuree:I

.field public alterationSnareValue:F

.field public b:F

.field public cameraRelative:Z

.field public collisionGraceEnd:J

.field public disableCollisionForBigShip:Z

.field public disableIa:Z

.field public distanceToPlayer:F

.field public distanceToTarget:F

.field public doNotRemoveWhenCleanDoors:Z

.field public doesColideWithOthers:Z

.field public drawDistanceOnMiniature:Z

.field public drawLifeBar:Z

.field public drawOnRadar:Z

.field public faction:Lfr/testudo/spacecorsair/business/world/Faction;

.field public g:F

.field public hasSpeedDeperdition:Z

.field hitFlag:Z

.field public ignoreLevelOnDamage:Z

.field public immobile:Z

.field public invincible:Z

.field public isDocked:Z

.field public isMiniaturefixed:Z

.field public isMissionObjective:Z

.field public isParticule:Z

.field public isPlayer:Z

.field public lastServerUpdate:J

.field public lastServerUpdateAtClientTime:J

.field public level:I

.field public levelColorB:F

.field public levelColorG:F

.field public levelColorR:F

.field public life:F

.field public lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

.field public lifeInPourc:F

.field public lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public lootDispersion:I

.field public mass:F

.field public maxLife:F

.field public maxX:I

.field public minX:I

.field public missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

.field public nextPoisonTick:I

.field public objectId:I

.field public objectName:Ljava/lang/String;

.field public poisonSource:Lfr/testudo/spacecorsair/business/Element;

.field public position:Lfr/testudo/spacecorsair/engine/Vector2;

.field public r:F

.field public radarColorB:F

.field public radarColorG:F

.field public radarColorR:F

.field public radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

.field public radarPointSize:F

.field public removed:Z

.field public specificName:Ljava/lang/String;

.field public specificNameDecalX:I

.field public speed:Lfr/testudo/spacecorsair/engine/Vector2;

.field public speedDeperditionfactor:F

.field public spin:F

.field public spinSpeed:F

.field public tag:Ljava/lang/Object;

.field public tempVector:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 499
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/Element;->otherTemp:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x43160000    # 150.0f

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/PoolObject;-><init>()V

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    .line 40
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareValue:F

    .line 42
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    .line 43
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityValue:F

    .line 45
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    .line 46
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadValue:F

    .line 48
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    .line 49
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickDamage:I

    .line 50
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickFrequence:I

    .line 51
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->nextPoisonTick:I

    .line 53
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->disableCollisionForBigShip:Z

    .line 59
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    .line 60
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->ignoreLevelOnDamage:Z

    .line 68
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->doNotRemoveWhenCleanDoors:Z

    .line 70
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    .line 71
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->spinSpeed:F

    .line 72
    iput v4, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    .line 73
    iput v4, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    .line 74
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->lifeInPourc:F

    .line 75
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->immobile:Z

    .line 77
    const/16 v0, 0x32

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->lootDispersion:I

    .line 80
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->disableIa:Z

    .line 84
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->drawOnRadar:Z

    .line 88
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->radarPointSize:F

    .line 90
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->distanceToPlayer:F

    .line 92
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    .line 100
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->cameraRelative:Z

    .line 101
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isDocked:Z

    .line 103
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->mass:F

    .line 105
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->hasSpeedDeperdition:Z

    .line 106
    const v0, 0x3f808312    # 1.004f

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->speedDeperditionfactor:F

    .line 108
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    .line 110
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/business/Element;->isMiniaturefixed:Z

    .line 111
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->drawDistanceOnMiniature:Z

    .line 113
    iput-boolean v5, p0, Lfr/testudo/spacecorsair/business/Element;->doesColideWithOthers:Z

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/Element;->collisionGraceEnd:J

    .line 117
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 118
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isParticule:Z

    .line 119
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->drawLifeBar:Z

    .line 121
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->distanceToTarget:F

    .line 127
    sget-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->POINT:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 130
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->a:F

    .line 131
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->r:F

    .line 132
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->g:F

    .line 133
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->b:F

    .line 134
    const-string v0, "Element"

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->objectName:Ljava/lang/String;

    .line 136
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->WHITE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->specificNameDecalX:I

    .line 143
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Faction;->WORLD:Lfr/testudo/spacecorsair/business/world/Faction;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->faction:Lfr/testudo/spacecorsair/business/world/Faction;

    .line 730
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->hitFlag:Z

    return-void
.end method

.method private disableCollisionDuring(J)V
    .registers 6

    .prologue
    .line 564
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/Element;->collisionGraceEnd:J

    .line 565
    return-void
.end method

.method public static normalizeSpin(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 298
    rem-float v0, p0, v2

    .line 299
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_a

    .line 300
    add-float/2addr v0, v2

    .line 302
    :cond_a
    return v0
.end method


# virtual methods
.method public applyAcceleration(J)V
    .registers 3

    .prologue
    .line 326
    return-void
.end method

.method public applyAlterationDamage(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isCrit:Z

    if-eqz v0, :cond_22

    .line 579
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSimpleMessage()Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->initCrit(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    .line 580
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_22

    .line 582
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerMakeCriticalShoot()V

    .line 586
    :cond_22
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v0, p0, :cond_27

    .line 653
    :cond_26
    :goto_26
    return-void

    .line 592
    :cond_27
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_37

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-nez v0, :cond_37

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_ef

    .line 594
    :cond_37
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isReloadLonger:Z

    if-eqz v0, :cond_73

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-nez v0, :cond_73

    .line 595
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    if-lez v0, :cond_152

    move v0, v1

    .line 596
    :goto_44
    iget v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->duree:I

    if-ge v3, v4, :cond_73

    .line 597
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->reloadFactor:F

    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadValue:F

    .line 598
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->reload:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/ReloadAlterationSpec;->duree:I

    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    .line 599
    if-nez v0, :cond_73

    .line 600
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSimpleMessage()Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->initReload(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    .line 601
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_73
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isSnare:Z

    if-eqz v0, :cond_b7

    .line 607
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    if-lez v0, :cond_155

    move v0, v1

    .line 608
    :goto_7c
    iget v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->duree:I

    if-ge v3, v4, :cond_b7

    .line 609
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->snareRatio:F

    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareValue:F

    .line 610
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->duree:I

    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    .line 611
    if-nez v0, :cond_b7

    .line 612
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSimpleMessage()Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v3

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->snare:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/SnareAlterationSpec;->snareRatio:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_158

    move v0, v1

    :goto_a8
    invoke-virtual {v3, p0, v0}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->initSnare(Lfr/testudo/spacecorsair/business/Element;Z)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    .line 613
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_b7
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isAgilityTaker:Z

    if-eqz v0, :cond_ef

    .line 619
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    if-lez v0, :cond_15b

    move v0, v1

    .line 620
    :goto_c0
    iget v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->duree:I

    if-ge v3, v4, :cond_ef

    .line 621
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->agilityLossFactor:F

    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityValue:F

    .line 622
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->agility:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AgilityAlterationSpec;->duree:I

    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    .line 623
    if-nez v0, :cond_ef

    .line 624
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSimpleMessage()Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->initAgility(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    .line 625
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_ef
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->isPoisoned:Z

    if-eqz v0, :cond_26

    .line 634
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    if-lez v0, :cond_15e

    .line 635
    :goto_f7
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->duree:I

    if-ge v0, v2, :cond_26

    .line 637
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->damagePerTic:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickDamage:I

    .line 638
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->ignoreLevelOnDamage:Z

    if-nez v0, :cond_123

    .line 639
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->getLevel()I

    move-result v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getLevel()I

    move-result v2

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->damagePerTic:I

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->getMitigedDamage(IIF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickDamage:I

    .line 641
    :cond_123
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->tickFrequenceInMilli:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickFrequence:I

    .line 642
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->poison:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/PoisonAlterationSpec;->duree:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    .line 643
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickFrequence:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->nextPoisonTick:I

    .line 644
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->poisonSource:Lfr/testudo/spacecorsair/business/Element;

    .line 645
    if-nez v1, :cond_26

    .line 646
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSimpleMessage()Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->initPoison(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    .line 647
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :cond_152
    move v0, v2

    .line 595
    goto/16 :goto_44

    :cond_155
    move v0, v2

    .line 607
    goto/16 :goto_7c

    :cond_158
    move v0, v2

    .line 612
    goto/16 :goto_a8

    :cond_15b
    move v0, v2

    .line 619
    goto/16 :goto_c0

    :cond_15e
    move v1, v2

    .line 634
    goto :goto_f7
.end method

.method public applyAsteroidCollision(F)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 569
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0, v1, v1}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 572
    return-void
.end method

.method public applyColide(Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 5

    .prologue
    .line 443
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v0, :cond_18

    instance-of v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v0, :cond_18

    .line 444
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v0, :cond_12

    .line 445
    check-cast p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 491
    :cond_11
    :goto_11
    return-void

    .line 447
    :cond_12
    check-cast p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    invoke-virtual {p1, p0}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_11

    .line 452
    :cond_18
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v0, :cond_22

    .line 453
    check-cast p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    invoke-virtual {p1, p0}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_11

    .line 457
    :cond_22
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v0, :cond_2c

    .line 459
    check-cast p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_11

    .line 463
    :cond_2c
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->applyRebound(Lfr/testudo/spacecorsair/business/Element;I)F

    move-result v1

    .line 466
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-eqz v0, :cond_3d

    .line 467
    invoke-virtual {p1, v1}, Lfr/testudo/spacecorsair/business/Element;->applyAsteroidCollision(F)V

    move-object v0, p0

    .line 468
    check-cast v0, Lfr/testudo/spacecorsair/business/world/Asteroid;

    invoke-virtual {v0, v1, p1}, Lfr/testudo/spacecorsair/business/world/Asteroid;->onImpact(FLfr/testudo/spacecorsair/business/Element;)V

    .line 470
    :cond_3d
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-eqz v0, :cond_4a

    .line 471
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/business/Element;->applyAsteroidCollision(F)V

    move-object v0, p1

    .line 472
    check-cast v0, Lfr/testudo/spacecorsair/business/world/Asteroid;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/business/world/Asteroid;->onImpact(FLfr/testudo/spacecorsair/business/Element;)V

    .line 476
    :cond_4a
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/Mine;

    if-eqz v0, :cond_54

    move-object v0, p0

    .line 477
    check-cast v0, Lfr/testudo/spacecorsair/business/world/Mine;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/business/world/Mine;->onContactWithElement(Lfr/testudo/spacecorsair/business/Element;)V

    .line 479
    :cond_54
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/Mine;

    if-eqz v0, :cond_5e

    move-object v0, p1

    .line 480
    check-cast v0, Lfr/testudo/spacecorsair/business/world/Mine;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/world/Mine;->onContactWithElement(Lfr/testudo/spacecorsair/business/Element;)V

    .line 483
    :cond_5e
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_68

    move-object v0, p0

    .line 484
    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0, p1, v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->onContactWithElement(Lfr/testudo/spacecorsair/business/Element;F)V

    .line 486
    :cond_68
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_11

    .line 487
    check-cast p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {p1, p0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->onContactWithElement(Lfr/testudo/spacecorsair/business/Element;F)V

    goto :goto_11
.end method

.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 11

    .prologue
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/Mod;->creditKiller(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;
    move-result-object p2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 735
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_79

    move v0, v1

    .line 736
    :goto_a
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->hitFlag:Z

    .line 737
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v3, :cond_7b

    iget v3, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7b

    move v3, v1

    .line 738
    :goto_19
    iget-boolean v4, p0, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    if-nez v4, :cond_22

    .line 739
    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    sub-float/2addr v4, p1

    iput v4, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    .line 741
    :cond_22
    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2a

    .line 742
    iput v6, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    .line 744
    :cond_2a
    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    div-float/2addr v4, v5

    iput v4, p0, Lfr/testudo/spacecorsair/business/Element;->lifeInPourc:F

    .line 745
    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_78

    if-nez v0, :cond_78

    .line 746
    if-eqz p2, :cond_7d

    iget-boolean v0, p2, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_7d

    .line 747
    :goto_42
    if-eqz p2, :cond_75

    iget-boolean v0, p2, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_75

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_75

    .line 748
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V

    .line 749
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V

    .line 750
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_69

    .line 751
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V

    .line 753
    :cond_69
    if-eqz v3, :cond_75

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_75

    move-object v0, p0

    .line 754
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onEnnemisOneShotByPlayer(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 759
    :cond_75
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/business/Element;->onDestroyed(Z)V

    .line 763
    :cond_78
    return-void

    :cond_79
    move v0, v2

    .line 735
    goto :goto_a

    :cond_7b
    move v3, v2

    .line 737
    goto :goto_19

    :cond_7d
    move v1, v2

    .line 746
    goto :goto_42
.end method

.method public applyMovement(J)V
    .registers 8

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 306
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isDocked:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->immobile:Z

    if-eqz v0, :cond_b

    .line 322
    :goto_a
    return-void

    .line 309
    :cond_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    long-to-float v3, p1

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 310
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    long-to-float v3, p1

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 311
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spinSpeed:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityValue:F

    mul-float/2addr v1, v2

    long-to-float v2, p1

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    .line 313
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    .line 316
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->hasSpeedDeperdition:Z

    if-eqz v0, :cond_52

    .line 317
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->speedDeperditionfactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    long-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 318
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->speedDeperditionfactor:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->divide(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 321
    :cond_52
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    goto :goto_a
.end method

.method public applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;
    .registers 4

    .prologue
    .line 176
    iget-object v0, p1, Lfr/testudo/spacecorsair/engine/PopPoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/Element;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 177
    iget v0, p1, Lfr/testudo/spacecorsair/engine/PopPoint;->spin:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    .line 178
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/engine/PopPoint;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 179
    return-object p0
.end method

.method public applyPopPoint(Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;
    .registers 5

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 184
    iput p2, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    .line 185
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 186
    return-object p0
.end method

.method public applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 8

    .prologue
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;
    if-eqz v0, :mod_orig
    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/Mod;->sideCheck(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)I
    move-result v0
    if-eqz v0, :mod_orig
    const/4 v1, 0x1
    if-ne v0, v1, :mod_hit
    return-void
    :mod_hit
    const/4 v1, 0x1
    const/4 v2, 0x0
    goto :cond_11
    :mod_orig

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 670
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_c

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_10

    :cond_c
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-nez v0, :cond_11

    .line 728
    :cond_10
    :goto_10
    return-void

    .line 673
    :cond_11
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eq v0, p0, :cond_10

    .line 674
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->ignoreImactDecalOnTarget:Z

    if-nez v0, :cond_1c

    .line 675
    invoke-virtual {p1, p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->onImpactWithElement(Lfr/testudo/spacecorsair/business/Element;)V

    .line 677
    :cond_1c
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->destroyedOnImpact:Z

    if-eqz v0, :cond_23

    .line 678
    invoke-virtual {p1, v2}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->onDestroyed(Z)V

    .line 680
    :cond_23
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->ignoreImactDecalOnTarget:Z

    if-nez v0, :cond_2a

    .line 681
    invoke-virtual {p0, p1, v1}, Lfr/testudo/spacecorsair/business/Element;->applyRebound(Lfr/testudo/spacecorsair/business/Element;I)F

    .line 683
    :cond_2a
    iget v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    .line 685
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/Element;->ignoreLevelOnDamage:Z

    if-nez v3, :cond_3e

    .line 686
    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->getLevel()I

    move-result v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getLevel()I

    move-result v3

    iget v4, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    invoke-static {v0, v3, v4}, Lfr/testudo/spacecorsair/business/player/XpBuilder;->getMitigedDamage(IIF)F

    move-result v0

    .line 692
    :cond_3e
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->applyAlterationDamage(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 698
    iget-object v3, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v3, :cond_6a

    .line 700
    instance-of v3, p1, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v3, :cond_7b

    .line 701
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerMissileHitSomething()V

    .line 704
    :goto_4e
    float-to-int v3, v0

    invoke-static {v3}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->addDamageMadeByPlayer(I)V

    .line 712
    :goto_52
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 713
    iget-object v4, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {p0, v0, p1}, Lfr/testudo/spacecorsair/mod/ModLive;->hit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F

    move-result v0

    invoke-virtual {p0, v0, v4, p1}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 715
    if-nez v3, :cond_10

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_10

    .line 717
    if-eqz v1, :cond_64

    .line 719
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerMissileKillSomething(Lfr/testudo/spacecorsair/business/Element;)V

    .line 721
    :cond_64
    if-eqz v2, :cond_10

    .line 723
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerKilledByMissile()V

    goto :goto_10

    .line 706
    :cond_6a
    instance-of v3, p1, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v3, :cond_79

    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v3, :cond_79

    move v5, v1

    move v1, v2

    move v2, v5

    .line 708
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerHitByMissile()V

    goto :goto_52

    :cond_79
    move v1, v2

    goto :goto_52

    :cond_7b
    move v1, v2

    goto :goto_4e
.end method

.method protected applyRebound(Lfr/testudo/spacecorsair/business/Element;I)F
    .registers 11

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 504
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 505
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 507
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    .line 508
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_f5

    .line 509
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 513
    :goto_31
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->divide(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 514
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->dot(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    .line 515
    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->dot(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 522
    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->mass:F

    iget v3, p1, Lfr/testudo/spacecorsair/business/Element;->mass:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    iget v3, p1, Lfr/testudo/spacecorsair/business/Element;->mass:F

    mul-float/2addr v3, v6

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p1, Lfr/testudo/spacecorsair/business/Element;->mass:F

    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->mass:F

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    .line 523
    iget v3, p1, Lfr/testudo/spacecorsair/business/Element;->mass:F

    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->mass:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->mass:F

    mul-float/2addr v4, v6

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p1, Lfr/testudo/spacecorsair/business/Element;->mass:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/Element;->mass:F

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    .line 527
    iget-boolean v4, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_87

    .line 528
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v7, v2, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 529
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    iput v2, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 532
    :cond_87
    iget-boolean v2, p1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_a6

    .line 533
    iget-object v2, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v6, v3, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 534
    iget-object v2, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 538
    :cond_a6
    sget-object v2, Lfr/testudo/spacecorsair/business/Element;->otherTemp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 540
    sget-object v2, Lfr/testudo/spacecorsair/business/Element;->otherTemp:Lfr/testudo/spacecorsair/engine/Vector2;

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    .line 543
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_c2

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_c2

    if-nez p2, :cond_c4

    :cond_c2
    move v0, v1

    .line 559
    :goto_c3
    return v0

    .line 549
    :cond_c4
    const/4 v0, 0x1

    .line 550
    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->mass:F

    iget v3, p1, Lfr/testudo/spacecorsair/business/Element;->mass:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f3

    .line 552
    const/4 v0, -0x1

    .line 554
    :goto_ce
    iget-object v2, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    int-to-float v5, p2

    mul-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 555
    iget-object v2, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    int-to-float v5, p2

    mul-float/2addr v4, v5

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iput v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 558
    const-wide/16 v2, 0x1e

    invoke-direct {p0, v2, v3}, Lfr/testudo/spacecorsair/business/Element;->disableCollisionDuring(J)V

    move v0, v1

    .line 559
    goto :goto_c3

    :cond_f3
    move-object p1, p0

    goto :goto_ce

    :cond_f5
    move v0, v1

    goto/16 :goto_31
.end method

.method public compareTo(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 4

    .prologue
    .line 791
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->minX:I

    iget v1, p1, Lfr/testudo/spacecorsair/business/Element;->minX:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    .line 793
    :goto_7
    return v0

    .line 792
    :cond_8
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->minX:I

    iget v1, p1, Lfr/testudo/spacecorsair/business/Element;->minX:I

    if-ge v0, v1, :cond_10

    const/4 v0, -0x1

    goto :goto_7

    .line 793
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 30
    check-cast p1, Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->compareTo(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    return v0
.end method

.method public doPhysic(J)V
    .registers 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 336
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    if-lez v0, :cond_13

    .line 337
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    .line 338
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    if-gtz v0, :cond_13

    .line 339
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareValue:F

    .line 344
    :cond_13
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    if-lez v0, :cond_24

    .line 345
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    .line 346
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    if-gtz v0, :cond_24

    .line 347
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityValue:F

    .line 352
    :cond_24
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    if-lez v0, :cond_35

    .line 353
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    .line 354
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    if-gtz v0, :cond_35

    .line 355
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadValue:F

    .line 360
    :cond_35
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    if-lez v0, :cond_67

    .line 361
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    .line 362
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->nextPoisonTick:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->nextPoisonTick:I

    .line 364
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->nextPoisonTick:I

    if-gtz v0, :cond_67

    .line 365
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickDamage:I

    int-to-float v0, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->poisonSource:Lfr/testudo/spacecorsair/business/Element;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 366
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSimpleMessage()Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v1

    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickDamage:I

    invoke-virtual {v1, p0, v2}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->initDamage(Lfr/testudo/spacecorsair/business/Element;I)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevelDrawOnly(Lfr/testudo/spacecorsair/business/Element;)V

    .line 367
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickFrequence:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->nextPoisonTick:I

    .line 371
    :cond_67
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->applyMovement(J)V

    .line 372
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->applyAcceleration(J)V

    .line 374
    return-void
.end method

.method public estimateVectorPosition(JLfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 9

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 250
    iget v0, p3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    long-to-float v2, p1

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 251
    iget v0, p3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    long-to-float v2, p1

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 252
    return-void
.end method

.method public estimatedPosition(J)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 8

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 235
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 236
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 237
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    long-to-float v3, p1

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 238
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    long-to-float v3, p1

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 239
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public finalizePoolObject()V
    .registers 1

    .prologue
    .line 173
    return-void
.end method

.method public getDifficultyColor()I
    .registers 2

    .prologue
    .line 837
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/Element;->getDifficultyColor(Z)I

    move-result v0

    return v0
.end method

.method public getDifficultyColor(Z)I
    .registers 6

    .prologue
    const v3, 0x7f080006

    const/4 v2, 0x1

    .line 850
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    sub-int v1, v0, v1

    if-eqz p1, :cond_29

    const/4 v0, 0x4

    :goto_13
    add-int/2addr v0, v1

    .line 853
    const/4 v1, -0x4

    if-gt v0, v1, :cond_2b

    .line 854
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 873
    :goto_28
    return v0

    .line 850
    :cond_29
    const/4 v0, 0x0

    goto :goto_13

    .line 857
    :cond_2b
    if-gt v0, v2, :cond_3c

    .line 858
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_28

    .line 861
    :cond_3c
    const/4 v1, 0x6

    if-lt v0, v1, :cond_51

    .line 862
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_28

    .line 865
    :cond_51
    const/4 v1, 0x3

    if-le v0, v1, :cond_66

    .line 866
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_28

    .line 869
    :cond_66
    if-le v0, v2, :cond_7a

    .line 870
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_28

    .line 873
    :cond_7a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_28
.end method

.method public getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    return v0
.end method

.method public getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;
    .registers 2

    .prologue
    .line 805
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    return-object v0
.end method

.method public abstract getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
.end method

.method public abstract getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
.end method

.method public initDifficultyColor()V
    .registers 2

    .prologue
    .line 815
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/Element;->initDifficultyColor(Z)V

    .line 816
    return-void
.end method

.method public initDifficultyColor(Z)V
    .registers 5

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 820
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->getDifficultyColor(Z)I

    move-result v0

    .line 822
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->levelColorR:F

    .line 823
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->levelColorG:F

    .line 824
    shr-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->levelColorB:F

    .line 826
    return-void
.end method

.method public initializePoolObject()V
    .registers 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->reset()V

    .line 167
    return-void
.end method

.method public isColidable()Z
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 261
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->doesColideWithOthers:Z

    if-nez v2, :cond_9

    .line 272
    :cond_8
    :goto_8
    return v0

    .line 264
    :cond_9
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/Element;->collisionGraceEnd:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_11

    move v0, v1

    .line 265
    goto :goto_8

    .line 267
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lfr/testudo/spacecorsair/business/Element;->collisionGraceEnd:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 268
    iput-wide v6, p0, Lfr/testudo/spacecorsair/business/Element;->collisionGraceEnd:J

    move v0, v1

    .line 269
    goto :goto_8
.end method

.method public onDestroyed(Z)V
    .registers 3

    .prologue
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModWreck;->onDestroyed(Lfr/testudo/spacecorsair/business/Element;Z)V

    .line 768
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_f

    .line 769
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V

    .line 771
    :cond_f
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->animator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V

    .line 773
    if-eqz p1, :cond_23

    .line 774
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;

    move-result-object v0

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/business/loot/LootFactory;->GenerateLoots(Lfr/testudo/spacecorsair/business/loot/LootConfig;Lfr/testudo/spacecorsair/business/Element;)V

    .line 778
    :cond_23
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->remove()V

    .line 779
    return-void
.end method

.method public onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 2

    .prologue
    .line 810
    return-void
.end method

.method public pruneColide(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 3

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 798
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/Element;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/Element;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/Element;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/Element;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 801
    return-void
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 782
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_12

    .line 783
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 786
    :cond_12
    return-void
.end method

.method public removeAllAlterations()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 657
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    .line 658
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    .line 659
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    .line 660
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    .line 662
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityValue:F

    .line 663
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareValue:F

    .line 664
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadValue:F

    .line 667
    return-void
.end method

.method public reset()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/Element;->lastServerUpdate:J

    .line 196
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->objectId:I

    .line 197
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->lifeInPourc:F

    .line 198
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->doNotRemoveWhenCleanDoors:Z

    .line 199
    iput-object v5, p0, Lfr/testudo/spacecorsair/business/Element;->tag:Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->zero()V

    .line 201
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->zero()V

    .line 202
    iput v4, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    .line 203
    iput v4, p0, Lfr/testudo/spacecorsair/business/Element;->spinSpeed:F

    .line 204
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/Element;->collisionGraceEnd:J

    .line 205
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 206
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isDocked:Z

    .line 207
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    .line 208
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->a:F

    .line 209
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->r:F

    .line 210
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->g:F

    .line 211
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->b:F

    .line 212
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->WHITE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 213
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->specificNameDecalX:I

    .line 215
    iput-object v5, p0, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    .line 216
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    .line 217
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    .line 218
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    .line 219
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityValue:F

    .line 220
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadValue:F

    .line 221
    iput v3, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareValue:F

    .line 222
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    .line 223
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickDamage:I

    .line 224
    iput v2, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonTickFrequence:I

    .line 226
    return-void
.end method

.method public setIaDisabled()V
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->disableIa:Z

    .line 162
    return-void
.end method

.method public setNewLife(F)V
    .registers 4

    .prologue
    .line 494
    iput p1, p0, Lfr/testudo/spacecorsair/business/Element;->life:F

    .line 495
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->lifeInPourc:F

    .line 496
    return-void
.end method

.method public setPosition(FF)Lfr/testudo/spacecorsair/business/Element;
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 283
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    .line 284
    return-object p0
.end method

.method public setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 289
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->updateSapCoords()V

    .line 290
    return-object p0
.end method

.method public setRGB(FFF)Lfr/testudo/spacecorsair/business/Element;
    .registers 4

    .prologue
    .line 829
    iput p1, p0, Lfr/testudo/spacecorsair/business/Element;->r:F

    .line 830
    iput p2, p0, Lfr/testudo/spacecorsair/business/Element;->g:F

    .line 831
    iput p3, p0, Lfr/testudo/spacecorsair/business/Element;->b:F

    .line 832
    return-object p0
.end method

.method public setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;
    .registers 3

    .prologue
    .line 243
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/Element;->specificName:Ljava/lang/String;

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->specificNameDecalX:I

    .line 245
    return-object p0
.end method

.method public setSpeedVector(Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 295
    return-void
.end method

.method public testColide(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 8

    .prologue
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/Mod;->ignoreCollision(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z
    move-result v0
    if-eqz v0, :mod_collide
    const/4 v0, 0x1
    return v0
    :mod_collide

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    .line 397
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v0, :cond_27

    instance-of v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v0, :cond_27

    .line 398
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-nez v0, :cond_13

    instance-of v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v0, :cond_25

    :cond_13
    move-object v0, p0

    .line 401
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-ne v2, v0, :cond_27

    move v0, v1

    .line 433
    :goto_24
    return v0

    :cond_25
    move v0, v1

    .line 407
    goto :goto_24

    .line 411
    :cond_27
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->disableCollisionForBigShip:Z

    if-eqz v0, :cond_31

    instance-of v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-nez v0, :cond_31

    move v0, v1

    .line 412
    goto :goto_24

    .line 416
    :cond_31
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-nez v0, :cond_3b

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->disableCollisionForBigShip:Z

    if-eqz v0, :cond_3b

    move v0, v1

    .line 417
    goto :goto_24

    .line 422
    :cond_3b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance2(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 423
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v0, v5

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-double v4, v0

    sub-double/2addr v2, v4

    .line 425
    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_6f

    .line 428
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->pruneColide(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1, p0}, Lfr/testudo/spacecorsair/business/Element;->pruneColide(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 429
    double-to-int v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_6f
    move v0, v1

    .line 433
    goto :goto_24
.end method

.method public updateSapCoords()V
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->minX:I

    .line 277
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->maxX:I

    .line 278
    return-void
.end method
