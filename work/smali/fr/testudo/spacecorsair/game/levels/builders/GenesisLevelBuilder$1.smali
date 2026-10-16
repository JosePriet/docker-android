.class final Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# instance fields
.field numberOfCivilAttacked:I

.field revolteCivil:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    .line 192
    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;->numberOfCivilAttacked:I

    .line 193
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;->revolteCivil:Z

    return-void
.end method


# virtual methods
.method public onCivilAttackedByPlayer(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 4

    .prologue
    .line 224
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;->numberOfCivilAttacked:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;->numberOfCivilAttacked:I

    .line 225
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;->revolteCivil:Z

    if-nez v0, :cond_12

    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;->numberOfCivilAttacked:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_12

    .line 226
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;->startCivilRevolte()V

    .line 230
    :cond_12
    return-void
.end method

.method public onEveryTenSec()V
    .registers 1

    .prologue
    .line 213
    return-void
.end method

.method public onEveryThirtySec()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 197
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fcd70a3d70a3d71L    # 0.23

    cmpg-double v0, v0, v2

    if-gez v0, :cond_28

    .line 199
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder;->isTransportActivityEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 200
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_29

    .line 201
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder;->thorPopPoint:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder;->thorToPlanckByCenter:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;II)V

    .line 207
    :cond_28
    :goto_28
    return-void

    .line 203
    :cond_29
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilType;->TRANSPORTEUR:Lfr/testudo/spacecorsair/business/world/civil/CivilType;

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder;->planckPridePopPoint:Lfr/testudo/spacecorsair/engine/PopPoint;

    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder;->planckToThorByCenter:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/game/levels/CivilAnimatorHelper;->addCivilFromXWithActivity(Lfr/testudo/spacecorsair/business/world/civil/CivilType;Lfr/testudo/spacecorsair/engine/PopPoint;[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;II)V

    goto :goto_28
.end method

.method public onPlayerEnterInZone()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-super {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;->onPlayerEnterInZone()V

    .line 218
    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;->numberOfCivilAttacked:I

    .line 219
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;->revolteCivil:Z

    .line 220
    return-void
.end method

.method public startCivilRevolte()V
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/GenesisLevelBuilder$1;->revolteCivil:Z

    .line 235
    invoke-static {}, Lfr/testudo/spacecorsair/business/Util;->startCivilianRebelionAgainstPlayer()V

    .line 237
    return-void
.end method
