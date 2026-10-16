.class final Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# instance fields
.field responseForce:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/16 v0, 0x11

    .line 239
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    .line 290
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    if-ge v1, v0, :cond_12

    :goto_f
    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;->responseForce:I

    return-void

    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    goto :goto_f
.end method

.method private popCivilianFromLeftPortal()V
    .registers 7

    .prologue
    .line 272
    const/16 v0, 0xd

    const/16 v1, 0xf

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(IIDD)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 273
    # invokes: Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->isMissionHighWayDefendActive()Z
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->allowPlayerDamage:Z

    .line 276
    :cond_1b
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->LEFT_SECTOR_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 278
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    if-eqz v1, :cond_2f

    .line 279
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->TRANSPORT_ACTIVITY_LEFT_TO_RIGHT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 285
    :goto_29
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 287
    return-void

    .line 281
    :cond_2f
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->CLASSIC_ACTIVITY_LEFT_TO_RIGHT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto :goto_29
.end method

.method private popCivilianFromRightPortal()V
    .registers 7

    .prologue
    .line 254
    const/16 v0, 0xd

    const/16 v1, 0xf

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(IIDD)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 255
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->LOST_PARADIZE_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 256
    # invokes: Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->isMissionHighWayDefendActive()Z
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->access$000()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->allowPlayerDamage:Z

    .line 260
    :cond_20
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    if-eqz v1, :cond_2f

    .line 261
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->TRANSPORT_ACTIVITY_RIGHT_TO_LEFT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 267
    :goto_29
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 268
    return-void

    .line 263
    :cond_2f
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->CLASSIC_ACTIVITY_RIGHT_TO_LEFT:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    goto :goto_29
.end method


# virtual methods
.method public onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 6

    .prologue
    .line 294
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    if-eqz v0, :cond_5

    .line 302
    :cond_4
    :goto_4
    return-void

    .line 297
    :cond_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 299
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;->onCivilianAskForHelp()V

    goto :goto_4
.end method

.method public onCivilianAskForHelp()V
    .registers 8

    .prologue
    .line 316
    const/4 v0, 0x2

    .line 317
    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;->responseForce:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_d

    .line 318
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;->responseForce:I

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x14

    .line 322
    :cond_d
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v2

    .line 323
    if-eqz v2, :cond_3b

    .line 324
    const/4 v1, 0x1

    :goto_20
    if-ge v1, v0, :cond_3b

    .line 325
    iget v3, p0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;->responseForce:I

    invoke-static {v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newPolice(I)Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    move-result-object v3

    .line 326
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v5, 0x0

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder;->POLICE_POP_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4, v5, v6}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/Vector2;FLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 328
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;->setAtackPlayerMode()V

    .line 329
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v4, v3}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 333
    :cond_3b
    return-void
.end method

.method public onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 307
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V

    .line 309
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/civil/PoliceShip;

    if-eqz v0, :cond_d

    .line 311
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;->responseForce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;->responseForce:I

    .line 313
    :cond_d
    return-void
.end method

.method public onEverySecond()V
    .registers 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;->popCivil()V

    .line 339
    return-void
.end method

.method public popCivil()V
    .registers 5

    .prologue
    .line 243
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_e

    .line 251
    :goto_d
    return-void

    .line 246
    :cond_e
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    .line 247
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;->popCivilianFromRightPortal()V

    goto :goto_d

    .line 249
    :cond_1c
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/HighwayLevelBuilder$1;->popCivilianFromLeftPortal()V

    goto :goto_d
.end method
