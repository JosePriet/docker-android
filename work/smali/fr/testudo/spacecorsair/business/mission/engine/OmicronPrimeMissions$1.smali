.class final Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$1;
.super Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchOrCreateObjectToFindWhenInZone()Lfr/testudo/spacecorsair/business/Element;
    .registers 11

    .prologue
    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    const-wide v6, -0x3f22b40000000000L    # -30000.0

    .line 190
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLoot()Lfr/testudo/spacecorsair/business/loot/LootElement;

    move-result-object v0

    .line 191
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 192
    :goto_13
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v2

    const v3, 0x461c4000    # 10000.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_30

    .line 193
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_13

    .line 195
    :cond_30
    const/4 v2, 0x0

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;->drawOnRadar:Z

    .line 197
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->secretTransmeter:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootElement;->missionInit(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootElement;

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/loot/LootElement;->stayForEver:Z

    .line 199
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 200
    return-object v0
.end method

.method public onFirstTimeEnterInTargetArea()V
    .registers 6

    .prologue
    .line 206
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0701e2

    const/16 v4, 0x9c4

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 207
    return-void
.end method

.method public onObjectFound(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;
    .registers 7

    .prologue
    .line 181
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0701e1

    const/16 v4, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 183
    return-object p1
.end method

.method public onObjectPickedUp(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 176
    return-void
.end method
