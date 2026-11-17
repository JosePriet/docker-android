.class public final Lfr/testudo/spacecorsair/mod/ModBal;
.super Ljava/lang/Object;
.source "ModBal.java"


# static fields
.field static final POLICE_A:F = 0.44444448f

.field private static final VMAX:F = 3.0f

.field private static aegis:Z

.field static gunDealt:F

.field static gunHits:I

.field static missileDealt:F

.field static missileHits:I

.field private static polA:Z

.field private static polB:Z

.field private static poll:J

.field private static range:Z

.field static splitTarget:Lfr/testudo/spacecorsair/business/Element;

.field private static warden:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static holdRange(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/high16 v0, 0x45160000    # 2400.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3e99999a    # 0.3f

    const/high16 v7, 0x40400000    # 3.0f

    .line 71
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 72
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModBal;->range:Z

    if-eqz v1, :cond_16

    if-eqz p1, :cond_16

    iget-boolean v1, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v1, :cond_17

    .line 90
    :cond_16
    :goto_16
    return-void

    .line 73
    :cond_17
    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 75
    const-string v2, "reaver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 79
    :goto_23
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 80
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v2, v1, v2

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v3, v1, v3

    .line 81
    mul-float v1, v2, v2

    mul-float v4, v3, v3

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 82
    cmpg-float v1, v4, v9

    if-ltz v1, :cond_16

    const v1, 0x45dac000    # 7000.0f

    cmpl-float v1, v4, v1

    if-gtz v1, :cond_16

    .line 83
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v5

    long-to-float v5, p3

    const/high16 v6, 0x43c80000    # 400.0f

    div-float/2addr v5, v6

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 85
    cmpl-float v0, v4, v0

    if-lez v0, :cond_9d

    div-float v0, v2, v4

    mul-float v1, v0, v7

    div-float v0, v3, v4

    mul-float/2addr v0, v7

    .line 88
    :goto_6d
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    iput v1, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 89
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v5

    add-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto :goto_16

    .line 76
    :cond_88
    const-string v2, "kretari"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    const v0, 0x45228000    # 2600.0f

    goto :goto_23

    .line 77
    :cond_94
    const-string v2, "varn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_23

    .line 86
    :cond_9d
    cmpg-float v0, v4, v1

    if-gez v0, :cond_a9

    neg-float v0, v2

    div-float/2addr v0, v4

    mul-float v1, v0, v7

    neg-float v0, v3

    div-float/2addr v0, v4

    mul-float/2addr v0, v7

    goto :goto_6d

    .line 87
    :cond_a9
    neg-float v0, v3

    div-float/2addr v0, v4

    mul-float/2addr v0, v7

    mul-float v1, v0, v8

    div-float v0, v2, v4

    mul-float/2addr v0, v7

    mul-float/2addr v0, v8

    goto :goto_6d
.end method

.method static maxDrones(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;I)I
    .registers 3

    .prologue
    .line 56
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 57
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->aegis:Z

    if-nez v0, :cond_8

    .line 59
    :cond_7
    :goto_7
    return p1

    .line 58
    :cond_8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-nez v0, :cond_7

    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_7
.end method

.method static overFrac(F)F
    .registers 2

    .prologue
    .line 63
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->polB:Z

    if-eqz v0, :cond_a

    const p0, 0x3e19999a    # 0.15f

    :cond_a
    return p0
.end method

.method static recordHit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 4

    .prologue
    .line 101
    if-eqz p0, :cond_d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->splitTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne p0, v0, :cond_d

    if-eqz p2, :cond_d

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_e

    .line 106
    :cond_d
    :goto_d
    return-void

    .line 102
    :cond_e
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 103
    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_d

    .line 104
    instance-of v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v0, :cond_26

    sget v0, Lfr/testudo/spacecorsair/mod/ModBal;->missileDealt:F

    add-float/2addr v0, p1

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->missileDealt:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModBal;->missileHits:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->missileHits:I

    goto :goto_d

    .line 105
    :cond_26
    sget v0, Lfr/testudo/spacecorsair/mod/ModBal;->gunDealt:F

    add-float/2addr v0, p1

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->gunDealt:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModBal;->gunHits:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->gunHits:I

    goto :goto_d
.end method

.method private static refresh()V
    .registers 6

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 27
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModBal;->poll:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 34
    :goto_e
    return-void

    .line 28
    :cond_f
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModBal;->poll:J

    .line 29
    const-string v0, "corsair_bal_range"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->range:Z

    .line 30
    const-string v0, "corsair_bal_aegis"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->aegis:Z

    .line 31
    const-string v0, "corsair_bal_warden"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->warden:Z

    .line 32
    const-string v0, "corsair_bal_polB"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->polB:Z

    .line 33
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->polB:Z

    if-nez v0, :cond_3d

    const-string v0, "corsair_bal_polA"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3d
    const/4 v0, 0x1

    :goto_3e
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->polA:Z

    goto :goto_e

    :cond_41
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method static resetSplit(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 97
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModBal;->splitTarget:Lfr/testudo/spacecorsair/business/Element;

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->missileDealt:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->gunDealt:F

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->missileHits:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->gunHits:I

    return-void
.end method

.method static shotMult(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 48
    if-nez p0, :cond_8

    .line 51
    :cond_7
    :goto_7
    return v0

    .line 49
    :cond_8
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v1, :cond_14

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModBal;->polA:Z

    if-eqz v1, :cond_7

    const v0, 0x3ee38e3a

    goto :goto_7

    .line 50
    :cond_14
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModBal;->warden:Z

    if-eqz v1, :cond_7

    const-string v1, "warden"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_7
.end method

.method static tag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->range:Z

    if-eqz v0, :cond_35

    const-string v0, "R"

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->aegis:Z

    if-eqz v0, :cond_38

    const-string v0, "A"

    :goto_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->warden:Z

    if-eqz v0, :cond_3b

    const-string v0, "W"

    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->polB:Z

    if-eqz v0, :cond_3e

    const-string v0, "B"

    :goto_2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    const-string v0, "-"

    goto :goto_e

    :cond_38
    const-string v0, "-"

    goto :goto_18

    :cond_3b
    const-string v0, "-"

    goto :goto_22

    :cond_3e
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->polA:Z

    if-eqz v0, :cond_45

    const-string v0, "P"

    goto :goto_2c

    :cond_45
    const-string v0, "-"

    goto :goto_2c
.end method

.method static titanArmor(F)F
    .registers 2

    .prologue
    .line 64
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->polB:Z

    if-eqz v0, :cond_a

    const p0, 0x3e19999a    # 0.15f

    :cond_a
    return p0
.end method
