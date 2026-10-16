.class final Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$3;
.super Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;
.source "SourceFile"


# instance fields
.field private final AERIA_WAVES:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

.field private final OMICRON_WAVES:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

.field private lastTimeShowMaydayDialogue:J


# direct methods
.method constructor <init>()V
    .registers 9

    .prologue
    const/16 v7, 0xb

    const/16 v2, 0xa

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/16 v4, 0x8

    .line 337
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortCivilMissionHandler;-><init>()V

    .line 374
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$3;->lastTimeShowMaydayDialogue:J

    .line 388
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;-><init>()V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->withMillisecBeforeFirstWave(I)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->withMillisecBetweenWaves(I)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    invoke-static {v5, v2, v7}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->ofBasic(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$3;->OMICRON_WAVES:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    .line 396
    new-instance v0, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;-><init>()V

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->withMillisecBeforeFirstWave(I)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    invoke-static {v5, v4, v4}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->ofRocketSentry(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v2, v2}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->ofBasic(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v4, v4}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->ofBasic(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->setElite()Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->ofDefensor(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->setElite()Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v6, v4}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->ofTaupe(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    invoke-static {v5, v7, v7}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->ofDefensor(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v6, v4}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->ofFixedSentry(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    invoke-static {v5, v6, v4}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;->ofFrelon(III)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;->addPack(Lfr/testudo/spacecorsair/business/mission/engine/escorte/EnemyPack;)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$3;->AERIA_WAVES:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    return-void
.end method


# virtual methods
.method public getEscortWaves(Lfr/testudo/spacecorsair/game/levels/LevelId;I)Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;
    .registers 5

    .prologue
    .line 411
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$5;->$SwitchMap$fr$testudo$spacecorsair$game$levels$LevelId:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 415
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$3;->AERIA_WAVES:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    :goto_d
    return-object v0

    .line 413
    :pswitch_e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$3;->OMICRON_WAVES:Lfr/testudo/spacecorsair/business/mission/engine/escorte/EscortWaves;

    goto :goto_d

    .line 411
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method public gimmeTargetToAddToLevel()Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
    .registers 4

    .prologue
    .line 342
    const/16 v0, 0xa

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newTrasnporteur(I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    move-result-object v0

    .line 343
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->isMissionObjective:Z

    .line 344
    sget-object v1, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missionObjectiveColor:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    .line 345
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v2, 0x7f0701c4

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->specificName:Ljava/lang/String;

    .line 346
    const v1, 0x44dac000    # 1750.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->mass:F

    .line 347
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootConfig;->NONE:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 350
    const v1, 0x3e78f8f9

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->r:F

    .line 351
    const v1, 0x3eb4b4b5

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->g:F

    .line 352
    const v1, 0x3f189899

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->b:F

    .line 353
    const/high16 v1, 0x44fa0000    # 2000.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 354
    return-object v0
.end method

.method public onEscortArrivedToFinalPosition(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 7

    .prologue
    .line 361
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020058

    const v2, 0x7f0701c8

    const v3, 0x7f0701cb

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 362
    return-void
.end method

.method public onEscortReachFinalSector()V
    .registers 6

    .prologue
    .line 366
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020058

    const v2, 0x7f0701c8

    const v3, 0x7f0701ca

    const/16 v4, 0x9c4

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 367
    return-void
.end method

.method public onPlayerAbandonTarget(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 378
    iget v0, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->distanceToPlayer:F

    const v1, 0x455ac000    # 3500.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37

    .line 379
    const/high16 v0, 0x44960000    # 1200.0f

    invoke-virtual {p1, v0, v2, v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 381
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$3;->lastTimeShowMaydayDialogue:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_37

    iget-boolean v2, p1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->removed:Z

    if-nez v2, :cond_37

    .line 382
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v3, 0x7f020058

    const v4, 0x7f0701c8

    const v5, 0x7f0701cc

    const/16 v6, 0xa

    invoke-virtual {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 383
    const-wide/32 v2, 0xc350

    add-long/2addr v0, v2

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/mission/engine/OmicronPrimeMissions$3;->lastTimeShowMaydayDialogue:J

    .line 386
    :cond_37
    return-void
.end method

.method public onTargetReached()V
    .registers 6

    .prologue
    .line 371
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020058

    const v2, 0x7f0701c8

    const v3, 0x7f0701c9

    const/16 v4, 0x1f4

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 372
    return-void
.end method
