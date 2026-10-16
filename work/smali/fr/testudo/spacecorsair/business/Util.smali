.class public Lfr/testudo/spacecorsair/business/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final tempVector:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/Util;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyShockWaveOnPlayer(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 120
    const/16 v0, 0x12c

    const/16 v1, 0x2bc

    const/16 v2, 0x2ee

    invoke-static {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/business/Util;->applyShockWaveOnPlayer(Lfr/testudo/spacecorsair/business/Element;III)V

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 122
    return-void
.end method

.method public static applyShockWaveOnPlayer(Lfr/testudo/spacecorsair/business/Element;III)V
    .registers 10

    .prologue
    .line 127
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 128
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v1, :cond_9

    .line 151
    :goto_8
    return-void

    .line 133
    :cond_9
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v1

    .line 138
    const/high16 v2, 0x41400000    # 12.0f

    .line 139
    sget-object v3, Lfr/testudo/spacecorsair/business/Util;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 140
    sget-object v2, Lfr/testudo/spacecorsair/business/Util;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 141
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/Util;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 143
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 144
    const v1, 0x3edadadb

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 145
    const v1, 0x3f20a0a1

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 146
    const v1, 0x3f3cbcbd

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 148
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public static getNewRandomTarget(JLfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 12

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 60
    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 63
    invoke-virtual {p3, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 64
    iget v4, p3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v4, v4

    long-to-double v6, p0

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 65
    iget v2, p3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v2, v2

    long-to-double v4, p0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 66
    return-void
.end method

.method public static isLaserOrMissileSoundEarable(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 27
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_b

    if-eqz p1, :cond_c

    iget-boolean v1, p1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_c

    .line 32
    :cond_b
    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->distanceToPlayer:F

    const/high16 v2, 0x45160000    # 2400.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static newRandomActivityLoop(II)[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 14

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 83
    new-array v1, p0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 84
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_26

    .line 85
    neg-int v2, p1

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    int-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    neg-int v3, p1

    int-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    int-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 88
    :cond_26
    return-object v1
.end method

.method public static newRandomActivityWithExit(IILfr/testudo/spacecorsair/engine/Vector2;)[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;
    .registers 15

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 71
    add-int/lit8 v0, p0, 0x2

    new-array v1, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    .line 72
    const/4 v0, 0x0

    :goto_7
    if-ge v0, p0, :cond_28

    .line 73
    neg-int v2, p1

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v10

    int-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    neg-int v3, p1

    int-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    int-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(FF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 75
    :cond_28
    invoke-static {p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMoove(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v0

    aput-object v0, v1, p0

    .line 76
    add-int/lit8 v0, p0, 0x1

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v1, v0

    .line 78
    return-object v1
.end method

.method public static removeAddIfNecessary(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 46
    const v0, 0x7f0a0012

    :try_start_3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    .line 55
    :cond_18
    :goto_18
    return-void

    .line 51
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method public static startCivilianRebelionAgainstPlayer()V
    .registers 4

    .prologue
    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_2b

    .line 95
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 96
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v3, :cond_27

    .line 97
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->attackPlayerIfItNotTheCaseAlready()V

    .line 94
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 100
    :cond_2b
    return-void
.end method

.method public static startCivilianRebelionAgainstPlayer(I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 103
    .line 104
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 105
    :goto_f
    if-ge v2, v3, :cond_2c

    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 107
    instance-of v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v4, :cond_2d

    .line 108
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->attackPlayerIfItNotTheCaseAlready()V

    .line 109
    add-int/lit8 v0, v1, 0x1

    .line 110
    if-ne v0, p0, :cond_2e

    .line 115
    :cond_2c
    return-void

    :cond_2d
    move v0, v1

    .line 105
    :cond_2e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_f
.end method
