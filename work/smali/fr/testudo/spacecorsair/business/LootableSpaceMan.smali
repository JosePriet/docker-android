.class public Lfr/testudo/spacecorsair/business/LootableSpaceMan;
.super Lfr/testudo/spacecorsair/business/SpaceMan;
.source "SourceFile"


# static fields
.field private static final MOOVETOPLAYER_RANGE:I = 0x15e


# instance fields
.field private lootElem:Lfr/testudo/spacecorsair/business/loot/LootElement;

.field public lootObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public lootable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/SpaceMan;-><init>()V

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootElement;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootElement;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->lootElem:Lfr/testudo/spacecorsair/business/loot/LootElement;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->lootable:Z

    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 8

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/SpaceMan;->doPhysic(J)V

    .line 48
    iget v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->distanceToPlayer:F

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_47

    .line 50
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

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

    .line 52
    const/high16 v1, 0x3e800000    # 0.25f

    long-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->distanceToPlayer:F

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 54
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 55
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 57
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 61
    :cond_47
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->lootable:Z

    if-eqz v0, :cond_5f

    iget v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->distanceToPlayer:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5f

    .line 62
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->processLoot()V

    .line 66
    :cond_5f
    return-void
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/LootableSpaceMan;
    .registers 6

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/SpaceMan;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/SpaceMan;

    .line 36
    const v0, 0x3f804189    # 1.002f

    iput v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->speedDeperditionfactor:F

    .line 37
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->lootObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 38
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->lootElem:Lfr/testudo/spacecorsair/business/loot/LootElement;

    invoke-virtual {v0, p1, p4}, Lfr/testudo/spacecorsair/business/loot/LootElement;->missionInit(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootElement;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->lootable:Z

    .line 40
    return-object p0
.end method

.method public processLoot()V
    .registers 5

    .prologue
    .line 71
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_9

    .line 102
    :cond_8
    :goto_8
    return-void

    .line 77
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_1d

    .line 79
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->lootElem:Lfr/testudo/spacecorsair/business/loot/LootElement;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z

    move-result v0

    .line 80
    if-eqz v0, :cond_8

    .line 86
    :cond_1d
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 87
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->lootObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    .line 91
    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLootMessage()Lfr/testudo/spacecorsair/display/text/LootTextMessage;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->lootObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->init(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/LootTextMessage;

    move-result-object v0

    .line 93
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->remove()V

    .line 96
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playLoot()V

    .line 97
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->lootObject:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onLoot(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    goto :goto_8
.end method

.method public registerYourselfToDrawQueue()V
    .registers 9

    .prologue
    .line 107
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/SpaceMan;->registerYourselfToDrawQueue()V

    .line 109
    iget v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->distanceToPlayer:F

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2d

    .line 110
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 111
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3ef5c28f    # 0.48f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 114
    :cond_2d
    return-void
.end method
