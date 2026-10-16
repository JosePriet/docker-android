.class public Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASIC_TRADE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final CONSTELLATION_POP_POINT:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final GATE_TO_ARENA_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_CONSTELLATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_CONSTELLATION_SORTIE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_HERMES_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final GATE_TO_HERMES_SORTIE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final HERMES_POP_POINT:Lfr/testudo/spacecorsair/engine/PopPoint;

.field public static final LEVEL_MAX:I = 0x5

.field public static final LEVEL_MIN:I = 0x4

.field public static final SOLAR_PLAN_NAME:Ljava/lang/String;

.field public static final SOLAR_PLAN_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final SOLAR_PLAN_ONE_TRANSPORT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final SOLAR_PLAN_THREE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final SOLAR_PLAN_THREE_TRANSPORT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final SOLAR_PLAN_TWO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final SOLAR_PLAN_TWO_TRANSPORT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final helioStatAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/high16 v7, 0x44fa0000    # 2000.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v4, -0x3cb80000    # -200.0f

    const/high16 v3, -0x3c6a0000    # -300.0f

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, -0x3a860000    # -4000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_CONSTELLATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3a060000    # -8000.0f

    const v2, 0x45dac000    # 7000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_HERMES_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, -0x39f4f000    # -8900.0f

    const v2, 0x45bb8000    # 6000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_HERMES_SORTIE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_HERMES_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newLeft(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->HERMES_POP_POINT:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_CONSTELLATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const v1, -0x3b448000    # -1500.0f

    invoke-virtual {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_CONSTELLATION_SORTIE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_CONSTELLATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/engine/PopPoint;->newBottom(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/PopPoint;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->CONSTELLATION_POP_POINT:Lfr/testudo/spacecorsair/engine/PopPoint;

    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x45dac000    # 7000.0f

    const v2, 0x465ac000    # 14000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_ARENA_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 47
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x45abe000    # 5500.0f

    const v2, 0x464b2000    # 13000.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->BASIC_TRADE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 98
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v7, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 99
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3b060000    # -2000.0f

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_TWO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 100
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const v1, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_THREE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_ONE_TRANSPORT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 103
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_TWO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_TWO_TRANSPORT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 104
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_THREE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_THREE_TRANSPORT_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702dc

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_NAME:Ljava/lang/String;

    .line 174
    new-instance v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder$1;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->helioStatAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 141
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> constellation <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 142
    const-string v1, "constellation"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 143
    const-string v1, "> heliostat <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 145
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_CONSTELLATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 146
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 147
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 148
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> hermes <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 153
    const-string v1, "hermes"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 154
    const-string v1, "> heliostat <"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 156
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_HERMES_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 157
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 158
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 159
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    const-string v1, "> galactic arena <"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 162
    const-string v1, "galactic arena"

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 163
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelNames;->ARENA_NEXT_GATE:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 165
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->GATE_TO_ARENA_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 166
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3f200000    # -7.0f

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 167
    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 168
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
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
    .line 111
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSolarPlan()Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_ONE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    .line 112
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 113
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSolarPlan()Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_TWO_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    .line 117
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 118
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSolarPlan()Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_THREE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->SOLAR_PLAN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

    move-result-object v0

    .line 123
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->energyCell:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 124
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newBasicTradeStation()Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->BASIC_TRADE_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    const-string v2, "arena official station"

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v0

    .line 129
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 130
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->instaRepair:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 131
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->callMobileSeller:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 132
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->periousShieldLevel13:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 134
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->buyList:Ljava/util/List;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SELLABLE_BY_PLAYER:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public static getHeliostat()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 7

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->addPortals(Ljava/util/List;)V

    .line 59
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->addStation(Ljava/util/List;)V

    .line 69
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/HeliostatLevelBuilder;->helioStatAnimator:Lfr/testudo/spacecorsair/game/levels/LevelAnimator;

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/game/levels/Level;-><init>(Lfr/testudo/spacecorsair/game/levels/LevelId;Ljava/util/List;Lfr/testudo/spacecorsair/game/levels/LevelAnimator;)V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    const/4 v2, 0x0

    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSunDrawable()Lfr/testudo/spacecorsair/business/world/SunDrawableObject;

    move-result-object v3

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    const v5, -0x39f36000    # -9000.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    invoke-direct {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/business/world/SunDrawableObject;->init(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    move-result-object v3

    aput-object v3, v0, v2

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    .line 80
    const v0, 0x7f060029

    iput v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->musicResourceId:I

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/display/Background$BackImage;->Black_default:Lfr/testudo/spacecorsair/display/Background$BackImage;

    iput-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backGroundImage:Lfr/testudo/spacecorsair/display/Background$BackImage;

    .line 83
    return-object v1
.end method
