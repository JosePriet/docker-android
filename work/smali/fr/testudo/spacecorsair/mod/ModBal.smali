.class public final Lfr/testudo/spacecorsair/mod/ModBal;
.super Ljava/lang/Object;
.source "ModBal.java"


# static fields
.field private static final VMAX:F = 3.0f

.field private static off:Z

.field private static poll:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static holdRange(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/high16 v0, 0x45160000    # 2400.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    .line 48
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 49
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    if-nez v2, :cond_17

    if-eqz p1, :cond_17

    iget-boolean v2, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->boss:Z

    if-eqz v2, :cond_18

    .line 71
    :cond_17
    :goto_17
    return-void

    .line 50
    :cond_18
    iget-object v2, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 52
    iget-boolean v3, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v3, :cond_b2

    .line 53
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->indexOf(Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;)I

    move-result v0

    .line 54
    if-ltz v0, :cond_3c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    aget-object v3, v2, v0

    array-length v4, v3

    const/4 v2, 0x0

    move v0, v1

    :goto_2f
    if-ge v2, v4, :cond_3d

    aget-object v5, v3, v2

    iget v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->range:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3c
    move v0, v1

    :cond_3d
    move v2, v0

    .line 59
    :goto_3e
    cmpg-float v0, v2, v1

    if-lez v0, :cond_17

    .line 60
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 61
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v3, v0, v1

    iget-object v0, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v4, v0, v1

    .line 62
    mul-float v0, v3, v3

    mul-float v1, v4, v4

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v5, v0

    .line 63
    cmpg-float v0, v5, v9

    if-ltz v0, :cond_17

    const v0, 0x45dac000    # 7000.0f

    cmpl-float v0, v5, v0

    if-gtz v0, :cond_17

    .line 64
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v0, :cond_d5

    const v0, 0x3ecccccd    # 0.4f

    :goto_79
    mul-float v1, v2, v0

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v0, :cond_d8

    const v0, 0x3f266666    # 0.65f

    :goto_82
    mul-float/2addr v0, v2

    long-to-float v2, p3

    const/high16 v6, 0x43c80000    # 400.0f

    div-float/2addr v2, v6

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 66
    cmpl-float v0, v5, v0

    if-lez v0, :cond_dc

    div-float v0, v3, v5

    mul-float v1, v0, v7

    div-float v0, v4, v5

    mul-float/2addr v0, v7

    .line 69
    :goto_96
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v5

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    iput v1, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 70
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    iput v0, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto/16 :goto_17

    .line 56
    :cond_b2
    const-string v3, "reaver"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    move v2, v0

    goto :goto_3e

    .line 57
    :cond_bc
    const-string v3, "kretari"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    const v0, 0x45228000    # 2600.0f

    move v2, v0

    goto/16 :goto_3e

    .line 58
    :cond_ca
    const-string v3, "varn"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    move v2, v0

    goto/16 :goto_3e

    .line 64
    :cond_d5
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_79

    :cond_d8
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_82

    .line 67
    :cond_dc
    cmpg-float v0, v5, v1

    if-gez v0, :cond_e8

    neg-float v0, v3

    div-float/2addr v0, v5

    mul-float v1, v0, v7

    neg-float v0, v4

    div-float/2addr v0, v5

    mul-float/2addr v0, v7

    goto :goto_96

    .line 68
    :cond_e8
    neg-float v0, v4

    div-float/2addr v0, v5

    mul-float/2addr v0, v7

    mul-float v1, v0, v8

    div-float v0, v3, v5

    mul-float/2addr v0, v7

    mul-float/2addr v0, v8

    goto :goto_96

    :cond_f2
    move v2, v1

    goto/16 :goto_3e
.end method

.method static maxDrones(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;I)I
    .registers 3

    .prologue
    .line 37
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 38
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    if-eqz v0, :cond_8

    .line 40
    :cond_7
    :goto_7
    return p1

    .line 39
    :cond_8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-nez v0, :cond_7

    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_7
.end method

.method private static refresh()V
    .registers 6

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 22
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModBal;->poll:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 25
    :goto_e
    return-void

    .line 23
    :cond_f
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModBal;->poll:J

    .line 24
    const-string v0, "corsair_bal_off"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    goto :goto_e
.end method

.method static shotMult(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 31
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    if-nez v1, :cond_f

    if-eqz p0, :cond_f

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v1, :cond_10

    .line 32
    :cond_f
    :goto_f
    return v0

    :cond_10
    const-string v1, "warden"

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_f
.end method
