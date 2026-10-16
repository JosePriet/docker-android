.class public Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;
.super Lfr/testudo/spacecorsair/business/mission/MissionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$1;,
        Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;
    }
.end annotation


# static fields
.field public static final TRANSPORTEUR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;


# instance fields
.field albaLife:F

.field albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

.field public completed:Z

.field public currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

.field public failureYouKilledThem:Ljava/lang/String;

.field private isAlbatrosDead:Z

.field private isPlayerInRecompenceZone:Z

.field private isPlayerInTargetZone:Z

.field lastPortalPop:Lfr/testudo/spacecorsair/engine/Vector2;

.field public nextPopAlba:I

.field nextShipParticle:I

.field public recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field remainingNaufrage:I

.field public stationGiveBackName:Ljava/lang/String;

.field public targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

.field temp:Lfr/testudo/spacecorsair/engine/Vector2;

.field public textDockToStation:Ljava/lang/String;

.field public textGiveBackSurvivors:Ljava/lang/String;

.field public textGotoRecompZone:Ljava/lang/String;

.field public textGotoTargetZone:Ljava/lang/String;

.field public textRescueTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3995a000    # -15000.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->TRANSPORTEUR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;-><init>()V

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->remainingNaufrage:I

    .line 55
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isAlbatrosDead:Z

    .line 61
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->completed:Z

    .line 62
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextPopAlba:I

    .line 91
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 130
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->lastPortalPop:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 132
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albaLife:F

    .line 262
    iput v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextShipParticle:I

    .line 69
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 70
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 71
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->stationGiveBackName:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->initStrings()V

    .line 75
    return-void
.end method

.method private addAlba(I)V
    .registers 6

    .prologue
    .line 145
    const/4 v0, 0x6

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->lastPortalPop:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->initPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    .line 146
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    const v1, 0x495bba00    # 900000.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->desengagementDistance:F

    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 148
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3f700000    # -4.5f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 149
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 150
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702c4

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->setSpecificName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/Element;

    .line 151
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 152
    if-gez p1, :cond_4c

    .line 153
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->life:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albaLife:F

    .line 158
    :goto_4b
    return-void

    .line 155
    :cond_4c
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albaLife:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->life:F

    .line 156
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    const v1, 0x3dcccccd    # 0.1f

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_4b
.end method

.method private addElementsToRescue()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 95
    const/4 v0, 0x6

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->TRANSPORTEUR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sput-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    iget v2, v2, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->maxLife:F

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->life:F

    .line 97
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    const v2, 0x3c23d70a    # 0.01f

    iput v2, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->spinSpeed:F

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->isPousee:Z

    .line 100
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    const/4 v2, 0x0

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->isMissionObjective:Z

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v2, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 108
    :goto_4d
    iget v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->remainingNaufrage:I

    if-ge v0, v1, :cond_57

    .line 109
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->addSpaceMan()V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 112
    :cond_57
    return-void
.end method

.method private addSpaceMan()V
    .registers 10

    .prologue
    const v8, 0x47435000    # 50000.0f

    const-wide v6, 0x408f400000000000L    # 1000.0

    const-wide v4, -0x3f80c00000000000L    # -500.0

    .line 116
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->TRANSPORTEUR_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 117
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLootableSpaceMan()Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->rescueMan:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->isMissionObjective:Z

    .line 120
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0702c3

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->specificName:Ljava/lang/String;

    .line 121
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 122
    iput v8, v0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->maxLife:F

    .line 123
    iput v8, v0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->life:F

    .line 124
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method private initStrings()V
    .registers 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070120

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->textGotoTargetZone:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070121

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->textGotoRecompZone:Ljava/lang/String;

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070164

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->textRescueTarget:Ljava/lang/String;

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070165

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->textGiveBackSurvivors:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070123

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->textDockToStation:Ljava/lang/String;

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070166

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->failureYouKilledThem:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private onRescueComplete()V
    .registers 6

    .prologue
    .line 136
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->ESCAPE:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    .line 138
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->addAlba(I)V

    .line 139
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f02005b

    const v2, 0x7f0702d8

    const v3, 0x7f070167

    const/16 v4, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->setPhaseGateAndStationTarget(Z)V

    .line 141
    return-void
.end method

.method private setPhaseGateAndStationTarget(Z)V
    .registers 4

    .prologue
    .line 357
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$RescueEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 390
    :cond_d
    :goto_d
    return-void

    .line 359
    :pswitch_e
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isPlayerInTargetZone:Z

    if-nez v0, :cond_d

    .line 363
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_d

    .line 365
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 366
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 372
    :pswitch_2b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_44

    .line 374
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->stationGiveBackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findStationByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_d

    .line 376
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->isMissionObjective:Z

    .line 377
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 383
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_d

    .line 385
    iput-boolean p1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->isMissionObjective:Z

    .line 386
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    goto :goto_d

    .line 357
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_e
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public getCurrentInstruction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 290
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$RescueEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 310
    const-string v0, ""

    :goto_f
    return-object v0

    .line 293
    :pswitch_10
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isPlayerInTargetZone:Z

    if-eqz v0, :cond_17

    .line 294
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->textRescueTarget:Ljava/lang/String;

    goto :goto_f

    .line 297
    :cond_17
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->textGotoTargetZone:Ljava/lang/String;

    goto :goto_f

    .line 302
    :pswitch_1a
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isPlayerInRecompenceZone:Z

    if-eqz v0, :cond_21

    .line 303
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->textDockToStation:Ljava/lang/String;

    goto :goto_f

    .line 306
    :cond_21
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->textGiveBackSurvivors:Ljava/lang/String;

    goto :goto_f

    .line 290
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public giveUp()V
    .registers 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->terminate()V

    .line 342
    return-void
.end method

.method public init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 316
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->RESCUE:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    .line 317
    const/4 v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->remainingNaufrage:I

    .line 318
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->rescueMan:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 319
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->completed:Z

    .line 320
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isAlbatrosDead:Z

    .line 321
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->completed:Z

    return v0
.end method

.method public onBeforeJump()V
    .registers 3

    .prologue
    .line 256
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isAlbatrosDead:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->ESCAPE:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-eqz v0, :cond_18

    .line 257
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->life:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albaLife:F

    .line 259
    :cond_18
    return-void
.end method

.method public onDoPhysic(J)V
    .registers 6

    .prologue
    .line 266
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    if-eqz v0, :cond_36

    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->removed:Z

    if-nez v0, :cond_36

    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->distanceToPlayer:F

    const v1, 0x44bb8000    # 1500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_36

    .line 267
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextShipParticle:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextShipParticle:I

    .line 268
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextShipParticle:I

    if-gtz v0, :cond_36

    .line 269
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 270
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 271
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->destroyedShip:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 272
    const/16 v0, 0xbb8

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextShipParticle:I

    .line 276
    :cond_36
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->ESCAPE:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextPopAlba:I

    if-lez v0, :cond_55

    .line 277
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextPopAlba:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextPopAlba:I

    .line 278
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextPopAlba:I

    if-gtz v0, :cond_55

    .line 280
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albaLife:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->addAlba(I)V

    .line 285
    :cond_55
    return-void
.end method

.method public onElementDestroyed(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->albatros:Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-ne p1, v0, :cond_7

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isAlbatrosDead:Z

    .line 234
    :cond_7
    return-void
.end method

.method public onElementDestroyedByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 239
    return-void
.end method

.method public onEveryMinute()V
    .registers 1

    .prologue
    .line 227
    return-void
.end method

.method public onEveryTenGameSec()V
    .registers 1

    .prologue
    .line 222
    return-void
.end method

.method public onPlayerDeath()V
    .registers 3

    .prologue
    .line 243
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$1;->$SwitchMap$fr$testudo$spacecorsair$business$mission$engine$RescueEngine$Phase:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 251
    :goto_d
    return-void

    .line 246
    :pswitch_e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->failureYouKilledThem:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->init()V

    goto :goto_d

    .line 243
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method public onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->RESCUE:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 208
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->rescueMan:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 209
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->remainingNaufrage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->remainingNaufrage:I

    .line 210
    iget v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->remainingNaufrage:I

    if-gtz v0, :cond_21

    .line 211
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->onRescueComplete()V

    .line 216
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public onZoneChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 163
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->lastPortalPop:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 165
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->targetZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 166
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isPlayerInTargetZone:Z

    .line 167
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->RESCUE:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 168
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->addElementsToRescue()V

    .line 175
    :cond_26
    :goto_26
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->recompenceZoneId:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 176
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isPlayerInRecompenceZone:Z

    .line 182
    :goto_32
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->ESCAPE:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 183
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->VENTOHIGH:Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 184
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->GATHER_RECOMP:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    .line 185
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->completed:Z

    .line 186
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getStringRessource(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playMissionComplete()V

    .line 199
    :cond_61
    :goto_61
    invoke-direct {p0, v2}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->setPhaseGateAndStationTarget(Z)V

    .line 202
    return-void

    .line 172
    :cond_65
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isPlayerInTargetZone:Z

    goto :goto_26

    .line 179
    :cond_68
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isPlayerInRecompenceZone:Z

    goto :goto_32

    .line 190
    :cond_6b
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isAlbatrosDead:Z

    if-nez v0, :cond_61

    .line 192
    const/16 v0, 0x1770

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->nextPopAlba:I

    goto :goto_61
.end method

.method public restoreState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 326
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;->RESCUE:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->currentPhase:Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine$Phase;

    .line 327
    const/4 v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->remainingNaufrage:I

    .line 328
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->completed:Z

    .line 329
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->isAlbatrosDead:Z

    .line 330
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->rescueMan:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 332
    return-void
.end method

.method public saveState()V
    .registers 1

    .prologue
    .line 337
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/mission/engine/RescueEngine;->setPhaseGateAndStationTarget(Z)V

    .line 347
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->rescueMan:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->removeAllOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 348
    return-void
.end method
