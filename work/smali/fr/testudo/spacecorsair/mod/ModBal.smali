.class public final Lfr/testudo/spacecorsair/mod/ModBal;
.super Ljava/lang/Object;
.source "ModBal.java"


# static fields
.field private static final VMAX:F = 3.0f

.field static gunDealt:F

.field static gunHits:I

.field static missileDealt:F

.field static missileHits:I

.field private static off:Z

.field private static poll:J

.field static splitTarget:Lfr/testudo/spacecorsair/business/Element;

.field static stFirst:Ljava/lang/String;

.field static stHits:I

.field static final stSum:[F

.field static final stZero:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xb

    .line 84
    new-array v0, v1, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->stSum:[F

    .line 85
    new-array v0, v1, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->stZero:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
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

    .line 58
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 59
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    if-nez v1, :cond_16

    if-eqz p1, :cond_16

    iget-boolean v1, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v1, :cond_17

    .line 77
    :cond_16
    :goto_16
    return-void

    .line 60
    :cond_17
    iget-object v1, p1, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    .line 62
    const-string v2, "reaver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 66
    :goto_23
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModLive;->titanHostile(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 67
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

    .line 68
    mul-float v1, v2, v2

    mul-float v4, v3, v3

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 69
    cmpg-float v1, v4, v9

    if-ltz v1, :cond_16

    const v1, 0x45dac000    # 7000.0f

    cmpl-float v1, v4, v1

    if-gtz v1, :cond_16

    .line 70
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v5

    long-to-float v5, p3

    const/high16 v6, 0x43c80000    # 400.0f

    div-float/2addr v5, v6

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 72
    cmpl-float v0, v4, v0

    if-lez v0, :cond_9d

    div-float v0, v2, v4

    mul-float v1, v0, v7

    div-float v0, v3, v4

    mul-float/2addr v0, v7

    .line 75
    :goto_6d
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    iput v1, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 76
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v5

    add-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    goto :goto_16

    .line 63
    :cond_88
    const-string v2, "kretari"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    const v0, 0x45228000    # 2600.0f

    goto :goto_23

    .line 64
    :cond_94
    const-string v2, "varn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_23

    .line 73
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

    .line 74
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
    .line 47
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 48
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    if-eqz v0, :cond_8

    .line 50
    :cond_7
    :goto_7
    return p1

    .line 49
    :cond_8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-nez v0, :cond_7

    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_7
.end method

.method static recordHit(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 4

    .prologue
    .line 116
    if-eqz p0, :cond_d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->splitTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne p0, v0, :cond_d

    if-eqz p2, :cond_d

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_e

    .line 121
    :cond_d
    :goto_d
    return-void

    .line 117
    :cond_e
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 118
    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_d

    .line 119
    instance-of v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v0, :cond_26

    sget v0, Lfr/testudo/spacecorsair/mod/ModBal;->missileDealt:F

    add-float/2addr v0, p1

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->missileDealt:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModBal;->missileHits:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->missileHits:I

    goto :goto_d

    .line 120
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
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModBal;->poll:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 29
    :goto_e
    return-void

    .line 27
    :cond_f
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModBal;->poll:J

    .line 28
    const-string v0, "corsair_bal_off"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    goto :goto_e
.end method

.method static resetSplit(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModBal;->splitTarget:Lfr/testudo/spacecorsair/business/Element;

    sput v2, Lfr/testudo/spacecorsair/mod/ModBal;->missileDealt:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModBal;->gunDealt:F

    sput v1, Lfr/testudo/spacecorsair/mod/ModBal;->missileHits:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModBal;->gunHits:I

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->stSum:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->stZero:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    sput v1, Lfr/testudo/spacecorsair/mod/ModBal;->stHits:I

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->stFirst:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static shotMult(Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;)F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 41
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    if-nez v1, :cond_f

    if-eqz p0, :cond_f

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v1, :cond_10

    .line 42
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

.method static st(IFLfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 5

    .prologue
    .line 97
    if-eqz p2, :cond_c

    :try_start_2
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_d

    .line 105
    :cond_c
    :goto_c
    return-void

    .line 98
    :cond_d
    if-nez p0, :cond_3e

    .line 99
    sget v0, Lfr/testudo/spacecorsair/mod/ModBal;->stHits:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModBal;->stHits:I

    .line 100
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->stFirst:Ljava/lang/String;

    if-nez v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->stFirst:Ljava/lang/String;

    .line 102
    :cond_3e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->stSum:[F

    aget v1, v0, p0

    add-float/2addr v1, p1

    aput v1, v0, p0

    .line 103
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModBal;->stZero:[I

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_52} :catch_53

    goto :goto_c

    .line 104
    :catch_53
    move-exception v0

    goto :goto_c
.end method

.method static stages()Ljava/lang/String;
    .registers 4

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "n="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lfr/testudo/spacecorsair/mod/ModBal;->stHits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModBal;->stFirst:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    const/4 v0, 0x0

    :goto_1a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModBal;->stSum:[F

    array-length v2, v2

    if-ge v0, v2, :cond_4b

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBal;->stSum:[F

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModBal;->stZero:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 110
    :cond_4b
    const-string v0, " over="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->overState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static tag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->refresh()V

    .line 34
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModBal;->off:Z

    if-eqz v0, :cond_a

    const-string v0, "off"

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "on"

    goto :goto_9
.end method
