.class public Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final PILOT_LICENCE_STATION:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final gallacticSpeedWayAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x3a860000    # -4000.0f

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder;->GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder;->PILOT_LICENCE_STATION:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 160
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder;->gallacticSpeedWayAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 138
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> heliostat <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 139
    const-string v1, "heliostat"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 142
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder;->GATE_TO_HELIOSTAT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 143
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 144
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 145
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public static addSpeedway(Ljava/util/List;)V
    .registers 13
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
    const/high16 v11, -0x3b860000    # -1000.0f

    const/high16 v10, -0x3b510000    # -1400.0f

    const/4 v1, 0x0

    const/high16 v9, -0x3b060000    # -2000.0f

    const/4 v7, 0x1

    .line 59
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;

    const/16 v2, 0x96

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const v4, -0x3ac48000    # -3000.0f

    invoke-direct {v3, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v2, p0, v3}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;-><init>(ILjava/util/List;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const v3, 0x450fc000    # 2300.0f

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFI)I

    move-result v8

    .line 66
    const/high16 v2, -0x3c380000    # -400.0f

    const v3, 0x44bb8000    # 1500.0f

    const/high16 v4, -0x3c380000    # -400.0f

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFI)I

    .line 70
    const v3, 0x450fc000    # 2300.0f

    const v5, 0x450fc000    # 2300.0f

    const/high16 v6, -0x3c060000    # -500.0f

    move-object v2, v0

    move v4, v1

    invoke-virtual/range {v2 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZI)I

    move-result v8

    .line 71
    const v3, 0x450fc000    # 2300.0f

    const/high16 v4, -0x3c060000    # -500.0f

    const v5, 0x44ed8000    # 1900.0f

    move-object v2, v0

    move v6, v11

    invoke-virtual/range {v2 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZI)I

    move-result v8

    .line 72
    const v3, 0x44ed8000    # 1900.0f

    const/high16 v5, 0x44960000    # 1200.0f

    move-object v2, v0

    move v4, v11

    move v6, v11

    invoke-virtual/range {v2 .. v8}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZI)I

    .line 77
    const/high16 v2, 0x44c80000    # 1600.0f

    const v3, -0x3c128000    # -475.0f

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addOne(FF)V

    .line 78
    const v2, 0x44bb8000    # 1500.0f

    const v3, -0x3bf68000    # -550.0f

    const/high16 v4, 0x447a0000    # 1000.0f

    const v5, -0x3bf68000    # -550.0f

    invoke-virtual {v0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFF)I

    .line 86
    const/high16 v3, 0x447a0000    # 1000.0f

    const v4, -0x3bf68000    # -550.0f

    const/high16 v5, 0x442f0000    # 700.0f

    move-object v2, v0

    move v6, v11

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 88
    const/high16 v2, 0x442f0000    # 700.0f

    const v3, -0x3b768000    # -1100.0f

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-virtual {v0, v2, v3, v4, v10}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFF)I

    .line 90
    const v2, 0x44278000    # 670.0f

    invoke-virtual {v0, v2, v11}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addOne(FF)V

    .line 91
    const v2, 0x4480c000    # 1030.0f

    const v3, -0x3b54c000    # -1370.0f

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addOne(FF)V

    .line 92
    const v2, 0x44e74000    # 1850.0f

    const/high16 v3, -0x3b7e0000    # -1040.0f

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addOne(FF)V

    .line 93
    const v2, 0x44778000    # 990.0f

    const/high16 v3, -0x3bea0000    # -600.0f

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addOne(FF)V

    .line 96
    const/high16 v3, 0x447a0000    # 1000.0f

    const v5, 0x44bb8000    # 1500.0f

    move-object v2, v0

    move v4, v10

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 100
    const v3, 0x44ed8000    # 1900.0f

    const v5, 0x44ed8000    # 1900.0f

    const/high16 v6, -0x3aea0000    # -2400.0f

    move-object v2, v0

    move v4, v11

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 103
    const v3, 0x44bb8000    # 1500.0f

    const v5, 0x44bb8000    # 1500.0f

    move-object v2, v0

    move v4, v10

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 107
    const v3, 0x44bb8000    # 1500.0f

    move-object v2, v0

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 110
    const v3, 0x44ed8000    # 1900.0f

    const/high16 v4, -0x3aea0000    # -2400.0f

    const v5, -0x3add8000    # -2600.0f

    const/high16 v6, -0x3aea0000    # -2400.0f

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 113
    const v3, -0x3add8000    # -2600.0f

    const/high16 v4, -0x3aea0000    # -2400.0f

    const v5, -0x3add8000    # -2600.0f

    const v6, -0x3b448000    # -1500.0f

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 114
    const v3, -0x3add8000    # -2600.0f

    const v4, -0x3b448000    # -1500.0f

    const v6, -0x3b448000    # -1500.0f

    move-object v2, v0

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 118
    const v4, -0x3b448000    # -1500.0f

    move-object v2, v0

    move v3, v9

    move v5, v9

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 121
    const v3, -0x3b2b8000    # -1700.0f

    const v6, -0x3b448000    # -1500.0f

    move-object v2, v0

    move v4, v9

    move v5, v10

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 122
    const v2, -0x3b448000    # -1500.0f

    const/high16 v3, -0x3c060000    # -500.0f

    invoke-virtual {v0, v10, v2, v10, v3}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFF)I

    .line 125
    const/high16 v5, -0x3c6a0000    # -300.0f

    move-object v2, v0

    move v3, v9

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZ)I

    .line 128
    const/high16 v1, -0x3c060000    # -500.0f

    const/high16 v2, -0x3d380000    # -100.0f

    const/high16 v3, -0x3c380000    # -400.0f

    invoke-virtual {v0, v10, v1, v2, v3}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFF)I

    .line 129
    const/high16 v1, -0x3d380000    # -100.0f

    const/high16 v2, -0x3c380000    # -400.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addOne(FF)V

    .line 135
    return-void
.end method

.method public static addStation(Ljava/util/List;)V
    .registers 4
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
    .line 150
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newThreeDockStation()Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder;->PILOT_LICENCE_STATION:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/UniverseName;->STATION_PILOT_LICENCE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    .line 152
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 153
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pilotShield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 154
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->pilotShieldAdv:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 155
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public static getGallacticSpeedway()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 4

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 42
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder;->addStation(Ljava/util/List;)V

    .line 44
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder;->addSpeedway(Ljava/util/List;)V

    .line 46
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/GallacticSpeedwayLevelBuilder;->gallacticSpeedWayAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 49
    const v0, 0x7f06002a

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Brown:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 52
    const/16 v0, 0x258

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/game/levels/Level;->enableColisionDistanceDetectionOverride(I)V

    .line 53
    return-object v1
.end method
