.class public Lfr/testudo/spacecorsair/business/player/Shield;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FAST_SHIELD_RELOAD_MULTIPLICATOR:I = 0x4

.field public static final TIME_UNTIL_SHIELD_RELOADS_FASTER_IN_SEC:I = 0x5


# instance fields
.field public b:F

.field public capacity:F

.field public currentValue:F

.field public g:F

.field public holder:Lfr/testudo/spacecorsair/business/Element;

.field isInNoRegenerationTime:Z

.field public isPlayerShield:Z

.field public isReloadingFaster:Z

.field public nexttimeBonusReloadInMilli:J

.field public r:F

.field public reloadTime:F

.field public reloadUnitBySec:F

.field remainingNoRegenrationTime:F

.field public shieldName:Ljava/lang/String;

.field public spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field public valueInPourc:F


# direct methods
.method public constructor <init>(FFFZLfr/testudo/spacecorsair/business/Element;)V
    .registers 8

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isReloadingFaster:Z

    .line 35
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->nexttimeBonusReloadInMilli:J

    .line 38
    iput p1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    .line 39
    iput p2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    .line 40
    iput p3, p0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    .line 41
    iput-boolean p4, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isPlayerShield:Z

    .line 42
    iput-object p5, p0, Lfr/testudo/spacecorsair/business/player/Shield;->holder:Lfr/testudo/spacecorsair/business/Element;

    .line 43
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Shield;->init()V

    .line 44
    return-void
.end method


# virtual methods
.method public applyDamage(FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 10

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 149
    const-wide/16 v4, 0x5

    iput-wide v4, p0, Lfr/testudo/spacecorsair/business/player/Shield;->nexttimeBonusReloadInMilli:J

    .line 154
    if-eqz p2, :cond_d5

    .line 157
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageBack:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;->pourcentageDamage:I

    if-lez v0, :cond_3f

    .line 158
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_c7

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    :goto_23
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageBack:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;->pourcentageDamage:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    div-float/2addr v0, v6

    .line 159
    iget-object v3, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v3, :cond_3f

    .line 160
    iget-object v3, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    cmpg-float v4, v0, v1

    if-gez v4, :cond_39

    move v0, v1

    :cond_39
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->holder:Lfr/testudo/spacecorsair/business/Element;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 164
    :cond_3f
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isPlayerShield:Z

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;->reducePourcent:I

    if-lez v0, :cond_d2

    instance-of v0, p2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    if-eqz v0, :cond_d2

    .line 166
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;->reducePourcent:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    .line 167
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;->reducePourcent:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v6

    sub-float v1, p1, v1

    .line 168
    cmpg-float v3, v1, v2

    if-gez v3, :cond_6d

    move v1, v2

    .line 173
    :cond_6d
    :goto_6d
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isPlayerShield:Z

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    if-lez v3, :cond_9a

    instance-of v3, p2, Lfr/testudo/spacecorsair/business/projectiles/Missile;

    if-eqz v3, :cond_9a

    .line 174
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 175
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v6

    sub-float/2addr v1, v3

    .line 176
    cmpg-float v3, v1, v2

    if-gez v3, :cond_9a

    move v1, v2

    .line 185
    :cond_9a
    :goto_9a
    iget v3, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_ca

    .line 189
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v6

    add-float/2addr v0, v1

    sub-float v0, p1, v0

    .line 191
    iput v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 192
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isPlayerShield:Z

    if-eqz v1, :cond_d0

    .line 193
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    move v2, v0

    .line 201
    :goto_b7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isInNoRegenerationTime:Z

    .line 202
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->remainingNoRegenrationTime:F

    .line 204
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    mul-float/2addr v0, v6

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    .line 205
    return v2

    :cond_c7
    move v0, p1

    .line 158
    goto/16 :goto_23

    .line 197
    :cond_ca
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    goto :goto_b7

    :cond_d0
    move v2, v0

    goto :goto_b7

    :cond_d2
    move v0, v2

    move v1, p1

    goto :goto_6d

    :cond_d5
    move v0, v2

    move v1, p1

    goto :goto_9a
.end method

.method public applySpec(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;)V
    .registers 3

    .prologue
    .line 48
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 49
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    .line 50
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    .line 51
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    .line 52
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Shield;->init()V

    .line 53
    return-void
.end method

.method public doPhysic(J)V
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x447a0000    # 1000.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    .line 98
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    .line 100
    iput-boolean v9, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isReloadingFaster:Z

    .line 101
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isPlayerShield:Z

    if-eqz v1, :cond_35

    .line 102
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_81

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isInNoRegenerationTime:Z

    if-nez v1, :cond_81

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    if-nez v1, :cond_81

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    if-nez v1, :cond_81

    .line 103
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->nexttimeBonusReloadInMilli:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_7a

    .line 104
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->nexttimeBonusReloadInMilli:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->nexttimeBonusReloadInMilli:J

    .line 118
    :cond_35
    :goto_35
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isPlayerShield:Z

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5f

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5f

    .line 120
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    long-to-float v3, p1

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->addLife(F)V

    .line 126
    :cond_5f
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isInNoRegenerationTime:Z

    if-eqz v1, :cond_86

    .line 127
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->remainingNoRegenrationTime:F

    long-to-float v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->remainingNoRegenrationTime:F

    .line 128
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->remainingNoRegenrationTime:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_71

    .line 129
    iput-boolean v9, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isInNoRegenerationTime:Z

    .line 137
    :cond_71
    :goto_71
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    mul-float/2addr v0, v7

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float/2addr v0, v1

    .line 138
    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    .line 141
    return-void

    .line 106
    :cond_7a
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isReloadingFaster:Z

    goto :goto_35

    .line 111
    :cond_81
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->nexttimeBonusReloadInMilli:J

    goto :goto_35

    .line 132
    :cond_86
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModShield;->rate(Lfr/testudo/spacecorsair/business/player/Shield;F)F

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    long-to-float v2, p1

    mul-float/2addr v0, v2

    div-float/2addr v0, v8

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 133
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_71

    .line 134
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    goto :goto_71
.end method

.method public init()V
    .registers 3

    .prologue
    .line 56
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isInNoRegenerationTime:Z

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->remainingNoRegenrationTime:F

    .line 59
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    .line 60
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->nexttimeBonusReloadInMilli:J

    .line 62
    return-void
.end method

.method public initWithValues(FFFLfr/testudo/spacecorsair/business/Element;)V
    .registers 6

    .prologue
    .line 66
    iput-object p4, p0, Lfr/testudo/spacecorsair/business/player/Shield;->holder:Lfr/testudo/spacecorsair/business/Element;

    .line 67
    instance-of v0, p4, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->isPlayerShield:Z

    .line 68
    iput p1, p0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    .line 69
    iput p2, p0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadUnitBySec:F

    .line 70
    iput p3, p0, Lfr/testudo/spacecorsair/business/player/Shield;->reloadTime:F

    .line 74
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Shield;->instantFullRegen()V

    .line 77
    return-void
.end method

.method public initWithValues(Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 6

    .prologue
    .line 80
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    int-to-float v1, v1

    iget v2, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lfr/testudo/spacecorsair/business/player/Shield;->initWithValues(FFFLfr/testudo/spacecorsair/business/Element;)V

    .line 81
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->r:F

    .line 82
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->g:F

    .line 83
    iget v0, p1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->b:F

    .line 84
    return-void
.end method

.method public instantFullRegen()V
    .registers 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/Shield;->init()V

    .line 93
    return-void
.end method

.method public isUp()Z
    .registers 3

    .prologue
    .line 144
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
