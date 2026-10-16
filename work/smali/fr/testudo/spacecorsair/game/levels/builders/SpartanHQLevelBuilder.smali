.class public Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATE_TO_HUGO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_THE_WAVE:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LEVEL_MAX:I = 0x8

.field public static final LEVEL_MIN:I = 0x8

.field public static final STATION_LASER_NAME:Ljava/lang/String;

.field public static STATION_MISSILE_NAME:Ljava/lang/String;

.field public static final STATION_SHIELD_NAME:Ljava/lang/String;

.field private static guardianActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field public static final spartanAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->SPARTAN_SHIELD_FACTORY:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->STATION_SHIELD_NAME:Ljava/lang/String;

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->SPARTAN_MISSILE:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->STATION_MISSILE_NAME:Ljava/lang/String;

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/business/world/UniverseName;->SPARTAN_LASER_FACTORY:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->STATION_LASER_NAME:Ljava/lang/String;

    .line 43
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3a860000    # -4000.0f

    invoke-direct {v0, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->GATE_TO_HUGO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x3a63c000    # -5000.0f

    const/high16 v2, 0x44fa0000    # 2000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->GATE_TO_THE_WAVE:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    const/16 v2, 0x1770

    invoke-static {v3, v3, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveRandom(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->guardianActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 207
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->spartanAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAsteroids(Ljava/util/List;)V
    .registers 9
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
    const/16 v4, 0x1388

    const/4 v2, 0x0

    .line 93
    const/16 v1, 0x46

    const v6, 0x3dcccccd    # 0.1f

    const/4 v7, 0x1

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomAsteroids(Ljava/util/List;IFFIIFZ)V

    .line 95
    return-void
.end method

.method public static addCivils(Ljava/util/List;)V
    .registers 15
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
    const-wide v12, 0x40bf400000000000L    # 8000.0

    const-wide v10, 0x40b7700000000000L    # 6000.0

    const-wide v8, -0x3f50c00000000000L    # -4000.0

    const-wide v6, -0x3f58900000000000L    # -3000.0

    const/high16 v4, 0x40400000    # 3.0f

    .line 159
    const/16 v0, 0xf

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newGuardianCivilShip(I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 160
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v12

    add-double/2addr v2, v8

    double-to-float v1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v10

    add-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 161
    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->GUARDIAN_SHIP_NAME:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 162
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->guardianActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 163
    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    mul-float/2addr v1, v4

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    .line 164
    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setNewLife(F)V

    .line 165
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const/16 v0, 0xf

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newGuardianCivilShip(I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    .line 169
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v12

    add-double/2addr v2, v8

    double-to-float v1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v10

    add-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 170
    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->GUARDIAN_SHIP_NAME:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 171
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->guardianActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 172
    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    mul-float/2addr v1, v4

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    .line 173
    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->setNewLife(F)V

    .line 174
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public static addPortals(Ljava/util/List;)V
    .registers 6
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
    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v3, 0x0

    .line 183
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> hugo wisdom <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 184
    const-string v1, "hugo wisdom"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 185
    const-string v1, "> spartan headquarters <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 187
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->GATE_TO_HUGO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 188
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 189
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 190
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> the wave <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 194
    const-string v1, "the wave"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 195
    const-string v1, "> spartan headquarters <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 197
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->GATE_TO_THE_WAVE:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 198
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 199
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 200
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public static addStations(Ljava/util/List;)V
    .registers 5
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
    const v3, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    .line 100
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissionStation()Lfr/testudo/spacecorsair/business/world/station/MissionStation;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const-string v2, "spartan headquarters"

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/MissionStation;

    move-result-object v0

    .line 101
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->r:F

    .line 102
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->b:F

    .line 103
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->g:F

    .line 104
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newThreeDockStation()Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3ad10000    # -2800.0f

    const v3, -0x3b128000    # -1900.0f

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->STATION_MISSILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    .line 110
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 112
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mosquitoMissileLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 113
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mosquitoMissileLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 114
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->hydraRoquetteLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 115
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->hydraRoquetteLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 116
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->torpedoMissileLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 117
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->torpedoMissileLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 118
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->acidMisisleModLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 119
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->agressorMissileModLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 121
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newBasicTradeStation()Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3b060000    # -2000.0f

    const v3, 0x4541c000    # 3100.0f

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->STATION_SHIELD_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v0

    .line 126
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->spartanBlockerLevel6:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 130
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->spartanBlockerLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 131
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->healerShieldLevel8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 132
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->mirrorShieldLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 133
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->xenonShieldLevel10:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 134
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamondShieldLevel15:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 137
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newBasicTradeStation()Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x457a0000    # 4000.0f

    const/high16 v3, -0x3b9f0000    # -900.0f

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->STATION_LASER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v0

    .line 141
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->iridiumLaserLevel10:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 145
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->exceptionalLaserLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 146
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->fastReloadShieldLevel9:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 147
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->dilmaxLaser8:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 148
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->argonLaserLevel10:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 150
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public static getSpartanHQ()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 56
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->addStations(Ljava/util/List;)V

    .line 58
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 60
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->addCivils(Ljava/util/List;)V

    .line 80
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/SpartanHQLevelBuilder;->spartanAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 83
    const v0, 0x7f060029

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Purple:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 86
    return-object v1
.end method
