.class final Lfr/testudo/spacecorsair/business/mission/GenesisMissions$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/business/mission/engine/MissionSpecificConfHandler;


# instance fields
.field tempVector:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions$2;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method


# virtual methods
.method public onAddObjectsRequested()V
    .registers 11

    .prologue
    const-wide v8, 0x40c7700000000000L    # 12000.0

    const/4 v6, 0x1

    .line 69
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions$2;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const-wide v2, -0x3f50c00000000000L    # -4000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    const-wide v2, -0x3f48900000000000L    # -6000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 70
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLoot()Lfr/testudo/spacecorsair/business/loot/LootElement;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/mission/GenesisMissions$2;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missionContrebandeBox:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootElement;->missionInit(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootElement;

    move-result-object v0

    .line 71
    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;->isMissionObjective:Z

    .line 72
    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;->stayForEver:Z

    .line 73
    iput-boolean v6, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;->visibleTractorBeam:Z

    .line 74
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 75
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method
