.class final Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# instance fields
.field public guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

.field numberOfCivilAttackThresold:I

.field numberOfCivilAttacked:I

.field revolteCivil:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    .line 288
    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->numberOfCivilAttacked:I

    .line 289
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->revolteCivil:Z

    .line 290
    const/4 v0, 0x2

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->numberOfCivilAttackThresold:I

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    return-void
.end method

.method private applyCivilFromAeria(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 3

    .prologue
    .line 398
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_AERIA_PASSING:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 399
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->AERIA_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 400
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->AERIA_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 402
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 403
    return-void
.end method

.method private applyCivilFromLost(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 3

    .prologue
    .line 390
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_LOST_PARADISE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 391
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->LOST_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 392
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->LOST_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 394
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 395
    return-void
.end method

.method private applyCivilFromOrion(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 3

    .prologue
    .line 382
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->GATE_TO_AERIA_PASSING:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 383
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->ORION_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 384
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->ORION_TO_RANDOM_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 386
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 387
    return-void
.end method


# virtual methods
.method public onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 4

    .prologue
    .line 313
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->numberOfCivilAttacked:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->numberOfCivilAttacked:I

    .line 314
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->revolteCivil:Z

    if-nez v0, :cond_14

    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->numberOfCivilAttacked:I

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->numberOfCivilAttackThresold:I

    if-lt v0, v1, :cond_14

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->startCivilRevolte(Z)V

    .line 319
    :cond_14
    return-void
.end method

.method public onElementKilledByPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->startCivilRevolte(Z)V

    .line 308
    :cond_c
    return-void
.end method

.method public onEverySecond()V
    .registers 5

    .prologue
    .line 346
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpg-double v0, v0, v2

    if-gez v0, :cond_d

    .line 347
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->popRandomCivil()V

    .line 350
    :cond_d
    return-void
.end method

.method public onPlayerEnterInZone()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onPlayerEnterInZone()V

    .line 295
    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->numberOfCivilAttacked:I

    .line 296
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->revolteCivil:Z

    .line 297
    return-void
.end method

.method public popRandomCivil()V
    .registers 4

    .prologue
    .line 360
    const/16 v0, 0xa

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 362
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$2;->$SwitchMap$fr$testudo$spacecorsair$game$levels$builders$OmicronPrimeLevelBuilder$CivilPop:[I

    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->random()Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;

    move-result-object v2

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$CivilPop;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    .line 379
    :goto_17
    return-void

    .line 366
    :pswitch_18
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->applyCivilFromOrion(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    goto :goto_17

    .line 369
    :pswitch_1c
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->applyCivilFromAeria(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    goto :goto_17

    .line 372
    :pswitch_20
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->applyCivilFromLost(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    goto :goto_17

    .line 362
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method public startCivilRevolte(Z)V
    .registers 8

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    .line 322
    if-eqz p1, :cond_18

    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020058

    const v2, 0x7f07037f

    const v3, 0x7f07037e

    const/16 v4, 0x7d0

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 325
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->revolteCivil:Z

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->numberOfCivilAttacked:I

    .line 327
    const/16 v0, 0xf

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newGuardianCivilShip(I)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 328
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder;->AERIA_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 329
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 330
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 331
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    .line 332
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const v1, 0x3f20a0a1

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->r:F

    .line 333
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const v1, 0x3f048485

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->g:F

    .line 334
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const v1, 0x3f3fbfc0

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->b:F

    .line 337
    if-nez p1, :cond_67

    .line 338
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    mul-float/2addr v1, v5

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 339
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/OmicronPrimeLevelBuilder$1;->guardianCivilShip:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    mul-float/2addr v1, v5

    iput v1, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    .line 341
    :cond_67
    return-void
.end method
