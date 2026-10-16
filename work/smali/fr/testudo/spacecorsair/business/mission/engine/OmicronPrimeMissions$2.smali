.class final Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$2;
.super Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 222
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/FindObjectWithSignalMissionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchOrCreateObjectToFindWhenInZone()Lfr/testudo/spacecorsair/business/Element;
    .registers 9

    .prologue
    .line 246
    const/16 v0, 0xa

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newSquidCivil(II)Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;

    move-result-object v0

    .line 247
    const-wide v2, -0x3f40c00000000000L    # -8000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const-wide v2, 0x40b3880000000000L    # 5000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40d3880000000000L    # 20000.0

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 248
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0701d9

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;->specificName:Ljava/lang/String;

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;->disableIa:Z

    .line 250
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;->setNewLife(F)V

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/SquidCivilShip;->drawOnRadar:Z

    .line 253
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 254
    return-object v0
.end method

.method public onFirstTimeEnterInTargetArea()V
    .registers 6

    .prologue
    .line 260
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020054

    const v2, 0x7f070187

    const v3, 0x7f0701da

    const/16 v4, 0x9c4

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 261
    return-void
.end method

.method public onObjectFound(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/Element;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 233
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p1, Lfr/testudo/spacecorsair/business/Element;->isMissionObjective:Z

    .line 235
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 236
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLootableSpaceMan()Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    move-result-object v1

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const v3, 0x3dcccccd    # 0.1f

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->rescueCivilPilot:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lfr/testudo/spacecorsair/business/LootableSpaceMan;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/LootableSpaceMan;

    move-result-object v0

    .line 238
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f070205

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/SpaceMan;->specificName:Ljava/lang/String;

    .line 239
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 240
    return-object v0
.end method

.method public onObjectPickedUp(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 7

    .prologue
    .line 226
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020058

    const v2, 0x7f070205

    const v3, 0x7f0701db

    const/16 v4, 0xdac

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 228
    return-void
.end method
