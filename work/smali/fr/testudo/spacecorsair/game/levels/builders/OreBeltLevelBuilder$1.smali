.class final Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# instance fields
.field transportOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

.field transportTwo:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 277
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    return-void
.end method

.method private initAndAddTransport(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V
    .registers 5

    .prologue
    const v1, 0x3f70f0f1

    .line 304
    iput v1, p1, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->r:F

    .line 305
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->g:F

    .line 306
    iput v1, p1, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->b:F

    .line 308
    invoke-virtual {p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 309
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilSpecByLevel;->rockLootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p1, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 311
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f0702d0

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->specificName:Ljava/lang/String;

    .line 312
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 314
    return-void
.end method


# virtual methods
.method public onPlayerEnterInZone()V
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 290
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(II)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;->transportOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    .line 291
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;->transportOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v2, 0x451c4000    # 2500.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 292
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;->transportOne:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->transportMiningActivityOne:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;->initAndAddTransport(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 294
    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(II)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;->transportTwo:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    .line 295
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;->transportTwo:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x44480000    # 800.0f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->MINING8CORP_STATION_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 296
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;->transportTwo:Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder;->transportMiningActivityTwo:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-direct {p0, v0, v1}, Lfr/testudo/spacecorsair/game/levels/builders/OreBeltLevelBuilder$1;->initAndAddTransport(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 299
    return-void
.end method
