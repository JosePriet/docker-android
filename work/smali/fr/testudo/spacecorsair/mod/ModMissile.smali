.class public final Lfr/testudo/spacecorsair/mod/ModMissile;
.super Ljava/lang/Object;
.source "ModMissile.java"


# static fields
.field public static final FAST_SPEED:F = 1.4f

.field public static final FAST_TURN:F = 2.5f

.field static final REACQUIRE:J = 0x1388L

.field private static logCached:Z

.field private static logCheckedAt:J

.field public static on:Z

.field private static final tmp:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModMissile;->on:Z

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMissile;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Lfr/testudo/spacecorsair/business/Element;J)Lfr/testudo/spacecorsair/business/Element;
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 87
    if-nez p0, :cond_5

    move-object v3, v4

    .line 116
    :goto_4
    return-object v3

    .line 88
    :cond_5
    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 89
    if-eqz v0, :cond_29

    .line 90
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->beamTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 91
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModMissile;->hostile(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    long-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_29

    .line 92
    const-string v0, "lock"

    invoke-static {p0, v3, v0}, Lfr/testudo/spacecorsair/mod/ModMissile;->log(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V

    goto :goto_4

    .line 115
    :catch_26
    move-exception v0

    move-object v3, v4

    .line 116
    goto :goto_4

    .line 96
    :cond_29
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 98
    const v1, 0x4b189680    # 1.0E7f

    .line 99
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 100
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_3b
    if-ge v5, v7, :cond_88

    .line 101
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 102
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModMissile;->hostile(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_4f

    move-object v0, v3

    .line 100
    :goto_4a
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v0

    goto :goto_3b

    .line 103
    :cond_4f
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 104
    long-to-float v8, p1

    cmpl-float v8, v2, v8

    if-ltz v8, :cond_5e

    move-object v0, v3

    goto :goto_4a

    .line 105
    :cond_5e
    iget-object v8, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v9, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 106
    const/high16 v9, 0x43b40000    # 360.0f

    rem-float/2addr v8, v9

    const/high16 v9, 0x42b40000    # 90.0f

    add-float/2addr v8, v9

    invoke-static {v8}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v8

    .line 107
    const/high16 v9, 0x42200000    # 40.0f

    div-float/2addr v2, v9

    iget v9, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v2, v8

    .line 108
    cmpg-float v8, v2, v1

    if-gez v8, :cond_8f

    move v1, v2

    .line 110
    goto :goto_4a

    .line 113
    :cond_88
    const-string v0, "near"

    invoke-static {p0, v3, v0}, Lfr/testudo/spacecorsair/mod/ModMissile;->log(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8d} :catch_26

    goto/16 :goto_4

    :cond_8f
    move-object v0, v3

    goto :goto_4a
.end method

.method public static hostile(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    if-eqz p0, :cond_c

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_d

    .line 75
    :cond_c
    :goto_c
    return v3

    .line 55
    :cond_d
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_2e

    .line 56
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 57
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    if-eqz v0, :cond_22

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;->isHiddenMode:Z

    if-nez v0, :cond_c

    .line 58
    :cond_22
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    if-eqz v0, :cond_2c

    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;->hidden:Z

    if-nez v0, :cond_c

    :cond_2c
    move v3, v2

    .line 59
    goto :goto_c

    .line 61
    :cond_2e
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_c

    move-object v0, p0

    .line 62
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 63
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->allowPlayerDamage:Z

    if-nez v1, :cond_c

    .line 64
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v1, :cond_58

    .line 65
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v4

    move-object v1, p0

    .line 66
    check-cast v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 67
    if-eqz v4, :cond_58

    check-cast p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {p0, v4}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v4

    if-eqz v4, :cond_58

    if-eqz v1, :cond_56

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_58

    :cond_56
    move v3, v2

    goto :goto_c

    .line 69
    :cond_58
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 70
    if-eqz v1, :cond_69

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_69

    move v1, v2

    .line 71
    :goto_61
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ATTACK_TARGET:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-ne v4, v5, :cond_6b

    move v3, v1

    goto :goto_c

    :cond_69
    move v1, v3

    .line 70
    goto :goto_61

    .line 72
    :cond_6b
    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    sget-object v5, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    if-ne v4, v5, :cond_79

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->damageRecievedByPlayer:I

    if-lez v0, :cond_77

    :goto_75
    move v3, v2

    goto :goto_c

    :cond_77
    move v2, v3

    goto :goto_75

    .line 73
    :cond_79
    if-eqz v1, :cond_83

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->defenseStatus:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;->target_engaged:Lfr/testudo/spacecorsair/business/world/civil/CivilShip$SelfDefenseStatus;

    if-ne v0, v1, :cond_83

    :goto_81
    move v3, v2

    goto :goto_c

    :cond_83
    move v2, v3

    goto :goto_81
.end method

.method private static log(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 206
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModMissile;->logOn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 213
    :goto_6
    return-void

    .line 208
    :cond_7
    :try_start_7
    const-string v1, "CorsairMod"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "misslog "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v0, :cond_40

    const-string v0, "reacquire"

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    if-nez p1, :cond_43

    const-string v0, "none"

    :goto_32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 210
    :catch_3e
    move-exception v0

    goto :goto_6

    .line 208
    :cond_40
    const-string v0, "launch"

    goto :goto_1a

    .line 209
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModMissile;->name(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " d="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_69} :catch_3e

    move-result-object v0

    goto :goto_32
.end method

.method static logOn()Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 191
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModMissile;->logCheckedAt:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1388

    cmp-long v0, v6, v8

    if-lez v0, :cond_2f

    .line 192
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModMissile;->logCheckedAt:J

    .line 195
    :try_start_12
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_32

    const-string v3, "corsair_misslog"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1e} :catch_34

    move-result v0

    if-eqz v0, :cond_32

    move v0, v1

    .line 200
    :goto_22
    if-nez v0, :cond_2c

    const-string v0, "corsair_misslog"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2c
    move v2, v1

    :cond_2d
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModMissile;->logCached:Z

    .line 202
    :cond_2f
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModMissile;->logCached:Z

    return v0

    :cond_32
    move v0, v2

    .line 196
    goto :goto_22

    .line 197
    :catch_34
    move-exception v0

    move v0, v2

    goto :goto_22
.end method

.method private static name(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 217
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_27
    return-object v0
.end method

.method public static policeMissile(Lfr/testudo/spacecorsair/business/Element;F)Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 147
    :try_start_2
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 148
    if-eqz p0, :cond_12

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_12

    if-eqz v1, :cond_12

    iget-boolean v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v2, :cond_13

    .line 171
    :cond_12
    :goto_12
    return v0

    .line 149
    :cond_13
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 150
    if-eqz v2, :cond_12

    .line 151
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissile;->spec(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    move-result-object v3

    .line 152
    if-eqz v3, :cond_12

    .line 153
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v4

    invoke-virtual {v4, v3, p0, v1}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_12

    .line 155
    cmpl-float v3, p1, v5

    if-lez v3, :cond_31

    iput p1, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    .line 156
    :cond_31
    iget v3, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    const/high16 v4, 0x40200000    # 2.5f

    mul-float/2addr v3, v4

    iput v3, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->alumedMaxTurnFactor:F

    .line 157
    iget v3, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->pouseeForce:F

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v3, v4

    iput v3, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->pouseeForce:F

    .line 158
    iget v3, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 159
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMissile;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    const/high16 v7, -0x3db80000    # -50.0f

    invoke-virtual {v3, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 160
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMissile;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 161
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModMissile;->tmp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 162
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    const v7, -0x3fcccccd    # -2.8f

    invoke-virtual {v3, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 163
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 164
    iget-object v3, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 165
    const/16 v3, 0x4b0

    iput v3, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 166
    iget v3, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    iput v3, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 167
    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModMissile;->logOn()Z

    move-result v2

    if-eqz v2, :cond_b5

    const-string v2, "CorsairMod"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "misslog police fast missile from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMissile;->name(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dmg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b5} :catch_b8

    .line 169
    :cond_b5
    const/4 v0, 0x1

    goto/16 :goto_12

    .line 170
    :catch_b8
    move-exception v1

    goto/16 :goto_12
.end method

.method private static spec(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;
    .registers 3

    .prologue
    .line 176
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    if-eqz v0, :cond_10

    check-cast p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 181
    :cond_f
    :goto_f
    return-object v0

    .line 177
    :cond_10
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->level:I

    .line 178
    const/4 v1, 0x6

    if-gt v0, v1, :cond_1c

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->defensorMissileSpec1a6:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 180
    :goto_17
    if-nez v0, :cond_f

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->defensorMissileSpec6a10:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    goto :goto_f

    .line 179
    :cond_1c
    const/16 v1, 0xa

    if-gt v0, v1, :cond_23

    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->defensorMissileSpec6a10:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    goto :goto_17

    :cond_23
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->defensorMissileSpec11a15:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    goto :goto_17
.end method

.method public static track(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 5

    .prologue
    .line 126
    :try_start_0
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModMissile;->on:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isAntiMissile:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sendAndForget:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    instance-of v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-nez v0, :cond_13

    .line 136
    :cond_12
    :goto_12
    return-void

    .line 127
    :cond_13
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 128
    if-eqz v0, :cond_1b

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v1, :cond_12

    .line 129
    :cond_1b
    if-nez v0, :cond_2e

    sget-wide v0, Lfr/testudo/spacecorsair/mod/Mod;->frameCounter:J

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 130
    :cond_2e
    const-wide/16 v0, 0x1388

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModMissile;->fetch(Lfr/testudo/spacecorsair/business/Element;J)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 131
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->target:Lfr/testudo/spacecorsair/business/Element;

    .line 132
    if-eqz v0, :cond_12

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/Element;->onMissileLockedOnMe(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_12

    .line 133
    :catch_3c
    move-exception v0

    goto :goto_12
.end method
