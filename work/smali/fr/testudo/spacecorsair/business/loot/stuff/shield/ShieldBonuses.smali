.class public Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final textBooster1:Ljava/lang/String;

.field public static final textBooster2:Ljava/lang/String;

.field public static final textFaster:Ljava/lang/String;

.field public static final textIncreaseDamage1:Ljava/lang/String;

.field public static final textIncreaseDamage2:Ljava/lang/String;

.field public static final textLaserReload:Ljava/lang/String;

.field public static final textMissileReload:Ljava/lang/String;

.field public static final textReduceDamage:Ljava/lang/String;

.field public static final textReduceDamage2Laser:Ljava/lang/String;

.field public static final textReduceDamage2Missile:Ljava/lang/String;

.field public static final textRegen1:Ljava/lang/String;

.field public static final textRegen2:Ljava/lang/String;

.field public static final textStrikeBack1:Ljava/lang/String;

.field public static final textStrikeBack2:Ljava/lang/String;


# instance fields
.field public boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

.field public damageBack:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

.field public damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

.field public laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

.field public laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

.field public lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

.field public missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

.field public missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070312

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textRegen1:Ljava/lang/String;

    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070313

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textRegen2:Ljava/lang/String;

    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070314

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textReduceDamage:Ljava/lang/String;

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070315

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textReduceDamage2Missile:Ljava/lang/String;

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070316

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textReduceDamage2Laser:Ljava/lang/String;

    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070317

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textBooster1:Ljava/lang/String;

    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070318

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textBooster2:Ljava/lang/String;

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07031a

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textMissileReload:Ljava/lang/String;

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070319

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textLaserReload:Ljava/lang/String;

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07031b

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textFaster:Ljava/lang/String;

    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07031c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textStrikeBack1:Ljava/lang/String;

    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07031d

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textStrikeBack2:Ljava/lang/String;

    .line 51
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07031e

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textIncreaseDamage1:Ljava/lang/String;

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f07031f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textIncreaseDamage2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageBack:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    return-void
.end method


# virtual methods
.method public enable()Z
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->enabled()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->enabled()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;->enabled()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->enabled()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->enabled()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageBack:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;->enabled()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->enabled()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->enabled()Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_40
    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public getLocalizedHtmlDescription()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "<b>"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    .line 59
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->enabled()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textRegen1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textRegen2:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 70
    :cond_31
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->enabled()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 71
    if-eqz v0, :cond_17e

    .line 72
    const-string v3, "<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :goto_40
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textReduceDamage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textReduceDamage2Missile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_5f
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;->enabled()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 85
    if-eqz v0, :cond_181

    .line 86
    const-string v3, "<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_6e
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textReduceDamage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;->reducePourcent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textReduceDamage2Laser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_8d
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->enabled()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 100
    if-eqz v0, :cond_184

    .line 101
    const-string v3, "<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :goto_9c
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textBooster1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->consumeReductionPourcent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textBooster2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_bb
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->enabled()Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 115
    if-eqz v0, :cond_187

    .line 116
    const-string v3, "<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :goto_ca
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textLaserReload:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->reduceInPourc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textFaster:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_e9
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->enabled()Z

    move-result v3

    if-eqz v3, :cond_117

    .line 129
    if-eqz v0, :cond_18a

    .line 130
    const-string v3, "<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :goto_f8
    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textMissileReload:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textFaster:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_117
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageBack:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;->enabled()Z

    move-result v3

    if-eqz v3, :cond_145

    .line 144
    if-eqz v0, :cond_18d

    .line 145
    const-string v1, "<br/><br/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_126
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textStrikeBack1:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageBack:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageBack;->pourcentageDamage:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "% "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textStrikeBack2:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_145
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->enabled()Z

    move-result v1

    if-eqz v1, :cond_173

    .line 159
    if-eqz v0, :cond_154

    .line 160
    const-string v0, "<br/><br/>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_154
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textIncreaseDamage1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->damageIncreasementWhenFull:Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/DamageIncreasementWhenFull;->damageIncreasePourc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->textIncreaseDamage2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_173
    const-string v0, "</b>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17e
    move v0, v1

    .line 74
    goto/16 :goto_40

    :cond_181
    move v0, v1

    .line 88
    goto/16 :goto_6e

    :cond_184
    move v0, v1

    .line 103
    goto/16 :goto_9c

    :cond_187
    move v0, v1

    .line 118
    goto/16 :goto_ca

    :cond_18a
    move v0, v1

    .line 132
    goto/16 :goto_f8

    :cond_18d
    move v0, v1

    .line 147
    goto :goto_126
.end method
