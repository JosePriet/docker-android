.class final Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# instance fields
.field numberOfCivilAttackThresold:I

.field numberOfCivilAttacked:I

.field revolteCivil:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    .line 245
    iput v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttacked:I

    .line 246
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttackThresold:I

    .line 247
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->revolteCivil:Z

    return-void
.end method

.method private addRandomCivil(Lfr/testudo/spacecorsair/business/world/civil/CivilType;)V
    .registers 16

    .prologue
    const/16 v12, 0x1b58

    const/4 v11, 0x3

    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 303
    const/4 v5, 0x0

    .line 305
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_2e

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_SCAN_CIVILS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 306
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/Mission;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 307
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanConf:Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;

    .line 310
    :cond_2e
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 312
    const-wide v6, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double v2, v0, v6

    if-gez v2, :cond_44

    .line 313
    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->OreBeltPop:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->beltToThorActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;IILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    .line 323
    :goto_43
    return-void

    .line 315
    :cond_44
    const-wide v6, 0x3fe51eb851eb851fL    # 0.66

    cmpg-double v0, v0, v6

    if-gez v0, :cond_59

    .line 316
    sget-object v7, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->TwinStarPop:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v8, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->THORPASSING_GATE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v6, p1

    move v9, v3

    move v10, v4

    move-object v13, v5

    invoke-static/range {v6 .. v13}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXToYWithRandom(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;Lfr/testudo/spacecorsair/engine/Vector2;IIIILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    goto :goto_43

    .line 319
    :cond_59
    sget-object v7, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->ThorPassPop:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v8, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->TWIN_STAR_GATE_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v6, p1

    move v9, v3

    move v10, v4

    move-object v13, v5

    invoke-static/range {v6 .. v13}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXToYWithRandom(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;Lfr/testudo/spacecorsair/engine/Vector2;IIIILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    goto :goto_43
.end method

.method private addRandomTransport()V
    .registers 9

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 275
    const/4 v5, 0x0

    .line 277
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_2b

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_SCAN_CIVILS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 278
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/Mission;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 279
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    check-cast v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/mission/engine/ScanCivilEngine;->scanConf:Lfr/testudo/spacecorsair/business/world/civil/ScanConfig;

    .line 284
    :cond_2b
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 285
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpg-double v2, v0, v6

    if-gez v2, :cond_3f

    .line 286
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->ThorPassPop:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->thorToBeltActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;IILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    .line 299
    :goto_3e
    return-void

    .line 288
    :cond_3f
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v0, v6

    if-gez v2, :cond_4f

    .line 289
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->ThorPassPop:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->thorThenShieldLaserAndExitToOre:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;IILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    goto :goto_3e

    .line 291
    :cond_4f
    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpg-double v0, v0, v6

    if-gez v0, :cond_5f

    .line 292
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->OreBeltPop:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->beltToThorActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;IILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    goto :goto_3e

    .line 294
    :cond_5f
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->TwinStarPop:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder;->twinToThorActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;IILfr/testudo/spacecorsair/business/world/civil/ScanConfig;)V

    goto :goto_3e
.end method


# virtual methods
.method public onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 4

    .prologue
    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_15

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionId:Ljava/lang/String;

    sget-object v1, Lfr/testudo/spacecorsair/business/mission/VentoHighMissions;->VENTOHIGH_SCAN_CIVILS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 338
    :cond_14
    :goto_14
    return-void

    .line 331
    :cond_15
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttacked:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttacked:I

    .line 332
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->revolteCivil:Z

    if-nez v0, :cond_14

    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttacked:I

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttackThresold:I

    if-lt v0, v1, :cond_14

    .line 333
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->startCivilRevolte()V

    goto :goto_14
.end method

.method public onEveryTenSec()V
    .registers 5

    .prologue
    .line 261
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    .line 262
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1d

    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->SQUID:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    :goto_19
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->addRandomCivil(Lfr/testudo/spacecorsair/business/world/civil/CivilType;)V

    .line 264
    :cond_1c
    return-void

    .line 262
    :cond_1d
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TURTULE:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    goto :goto_19
.end method

.method public onEveryThirtySec()V
    .registers 1

    .prologue
    .line 254
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->addRandomTransport()V

    .line 257
    return-void
.end method

.method public onPlayerEnterInZone()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onPlayerEnterInZone()V

    .line 269
    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttacked:I

    .line 270
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->revolteCivil:Z

    .line 271
    return-void
.end method

.method public resetAttackCounterAndReduceThresold()V
    .registers 3

    .prologue
    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttacked:I

    .line 343
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttackThresold:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_e

    .line 344
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttackThresold:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->numberOfCivilAttackThresold:I

    .line 347
    :cond_e
    return-void
.end method

.method public startCivilRevolte()V
    .registers 6

    .prologue
    .line 350
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    const v1, 0x7f020058

    const v2, 0x7f0702d9

    const v3, 0x7f0702da

    const/16 v4, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIII)V

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->revolteCivil:Z

    .line 352
    const/4 v0, 0x6

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Util;->startCivilianRebelionAgainstPlayer(I)V

    .line 353
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/VentoHighLevelBuilder$1;->resetAttackCounterAndReduceThresold()V

    .line 357
    return-void
.end method
