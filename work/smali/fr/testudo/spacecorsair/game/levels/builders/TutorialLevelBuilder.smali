.class public Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATE_TO_GENESIS_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final LOCALISED_STATION_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x457a0000    # 4000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;->GATE_TO_GENESIS_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702e6

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;->LOCALISED_STATION_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
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

    .line 77
    const/16 v1, 0x5a

    const v6, 0x3dcccccd    # 0.1f

    const/4 v7, 0x1

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/LevelBuilderHelper;->addRandomAsteroids(Ljava/util/List;IFFIIFZ)V

    .line 79
    return-void
.end method

.method public static addPortals(Ljava/util/List;)V
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
    const/4 v3, 0x0

    .line 82
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> genesis <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 83
    const-string v1, "genesis"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 84
    const-string v1, "> tutorial <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 86
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;->GATE_TO_GENESIS_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 87
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 88
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 89
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
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
    .line 96
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newThreeDockStation()Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x447a0000    # 1000.0f

    const v3, -0x3ac48000    # -3000.0f

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;->LOCALISED_STATION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    .line 97
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 100
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 103
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public static getTutorialLevel()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 8

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 44
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;->addStations(Ljava/util/List;)V

    .line 46
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/TutorialLevelBuilder;->addAsteroids(Ljava/util/List;)V

    .line 61
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->NOP:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 64
    const v0, 0x7f060029

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Purple:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    const/4 v2, 0x0

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPlanetDrawable()Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;->green_planet:Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;

    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v6, 0x457a0000    # 4000.0f

    const v7, 0x453b8000    # 3000.0f

    invoke-direct {v5, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject;->init(Lfr/testudo/spacecorsair/business/world/PlanetDrawableObject$Kind;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    move-result-object v3

    aput-object v3, v0, v2

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    .line 71
    return-object v1
.end method
