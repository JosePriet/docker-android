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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static holdRange(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 14

    .prologue
    .line 49
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 50
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    iget-boolean v0, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->boss:Z

    if-eqz v0, :cond_e

    .line 81
    :cond_d
    :goto_d
    return-void

    .line 51
    :cond_e
    iget-object v0, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    .line 53
    iget-boolean v2, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v2, :cond_32

    .line 54
    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModCapitals;->indexOf(Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;)I

    move-result v1

    .line 55
    if-ltz v1, :cond_3c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    aget-object v2, v2, v1

    array-length v3, v2

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v3, :cond_3c

    aget-object v4, v2, v1

    iget v4, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->range:F

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 57
    :cond_32
    const-string v2, "reaver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    const/high16 v0, 0x45160000    # 2400.0f

    .line 60
    :cond_3c
    :goto_3c
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 61
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v4, v1, v2

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v5, v1, v2

    .line 62
    mul-float v1, v4, v4

    mul-float v2, v5, v5

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v6, v2

    .line 63
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v6, v1

    if-ltz v1, :cond_d

    const v1, 0x45dac000    # 7000.0f

    cmpl-float v1, v6, v1

    if-gtz v1, :cond_d

    .line 67
    const/high16 v1, 0x44160000    # 600.0f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModView;->radius()F

    move-result v2

    const v3, 0x44034000    # 525.0f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 68
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_d0

    const/4 v3, 0x0

    move v1, v2

    .line 73
    :goto_83
    const/high16 v2, 0x3f800000    # 1.0f

    long-to-float v7, p3

    const/high16 v8, 0x43c80000    # 400.0f

    div-float/2addr v7, v8

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 75
    cmpl-float v1, v6, v1

    if-lez v1, :cond_f6

    div-float v0, v4, v6

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    div-float v0, v5, v6

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    .line 79
    :goto_9b
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v5

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    iput v1, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 80
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    iput v0, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto/16 :goto_d

    .line 58
    :cond_b7
    const-string v2, "kretari"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const v0, 0x45228000    # 2600.0f

    goto/16 :goto_3c

    .line 59
    :cond_c4
    const-string v2, "varn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/high16 v0, 0x45160000    # 2400.0f

    goto/16 :goto_3c

    .line 69
    :cond_d0
    iget-boolean v1, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v1, :cond_ef

    const v1, 0x3ecccccd    # 0.4f

    :goto_d7
    mul-float v3, v0, v1

    .line 70
    iget-boolean v1, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v1, :cond_f2

    const v1, 0x3f266666    # 0.65f

    :goto_e0
    mul-float/2addr v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 71
    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v3, v2

    goto :goto_83

    .line 69
    :cond_ef
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_d7

    .line 70
    :cond_f2
    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_e0

    .line 76
    :cond_f6
    cmpg-float v1, v6, v3

    if-gez v1, :cond_105

    neg-float v0, v4

    div-float/2addr v0, v6

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    neg-float v0, v5

    div-float/2addr v0, v6

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    goto :goto_9b

    .line 77
    :cond_105
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_d

    .line 78
    neg-float v0, v5

    div-float/2addr v0, v6

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v0

    div-float v0, v4, v6

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v3

    goto/16 :goto_9b
.end method

.method static maxDrones(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;I)I
    .registers 3

    .prologue
    .line 38
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 39
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    if-eqz v0, :cond_8

    .line 41
    :cond_7
    :goto_7
    return p1

    .line 40
    :cond_8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    .line 41
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
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModBal;->poll:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 26
    :goto_e
    return-void

    .line 24
    :cond_f
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModBal;->poll:J

    .line 25
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

    .line 31
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 32
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    if-nez v1, :cond_f

    if-eqz p0, :cond_f

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v1, :cond_10

    .line 33
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
