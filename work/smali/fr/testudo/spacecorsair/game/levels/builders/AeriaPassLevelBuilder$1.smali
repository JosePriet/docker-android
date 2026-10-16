.class final Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder$1;
.super Lfr/testudo/spacecorsair/game/levels/LevelAnimator;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/LevelAnimator;-><init>()V

    return-void
.end method

.method private launchAnAsteroidOnPlayer()V
    .registers 7

    .prologue
    .line 124
    const/4 v0, 0x1

    .line 125
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_f

    .line 126
    const/4 v0, 0x2

    .line 128
    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 129
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/game/levels/Level;->addRandomAsteThatTargetPlayer(F)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 132
    :cond_20
    return-void
.end method


# virtual methods
.method public applyCivilFromEternity(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 3

    .prologue
    .line 163
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_ETERNITY_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->ETERNITY_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 165
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->ETERNITY_TO_OMICRON_ACTIVITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 169
    return-void
.end method

.method public applyCivilFromOmicron(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V
    .registers 3

    .prologue
    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->GATE_TO_OMICRON_POS:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 174
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->OMICRON_POP:Lfr/testudo/spacecorsair/engine/PopPoint;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->applyPopPoint(Lfr/testudo/spacecorsair/engine/PopPoint;)Lfr/testudo/spacecorsair/business/Element;

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder;->OMICRON_TO_ETERNITY:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {p1, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 177
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 179
    return-void
.end method

.method public onEverySecond()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder$1;->launchAnAsteroidOnPlayer()V

    .line 137
    return-void
.end method

.method public onEveryTenSec()V
    .registers 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder$1;->popRandomCivil()V

    .line 144
    return-void
.end method

.method public popRandomCivil()V
    .registers 7

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_e

    .line 159
    :goto_d
    return-void

    .line 152
    :cond_e
    const/16 v0, 0xc

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilFactory;->newRandomCivil(II)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    move-result-object v0

    .line 153
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_24

    .line 154
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder$1;->applyCivilFromEternity(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    goto :goto_d

    .line 156
    :cond_24
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/game/levels/builders/AeriaPassLevelBuilder$1;->applyCivilFromOmicron(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)V

    goto :goto_d
.end method
