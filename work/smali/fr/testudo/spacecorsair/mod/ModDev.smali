.class public final Lfr/testudo/spacecorsair/mod/ModDev;
.super Ljava/lang/Object;
.source "ModDev.java"


# static fields
.field public static final CODE:Ljava/lang/String; = "CORSAIRDEV"

.field public static final HULL:Ljava/lang/String; = "hullDev"

.field public static final ITEMS:[Ljava/lang/String;

.field public static final LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field public static final MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public static final SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

.field private static final at:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static evOn:Ljava/lang/Boolean;

.field private static pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

.field private static pulseTimer:I

.field private static final shotFrom:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModWreck;",
            "[F>;"
        }
    .end annotation
.end field

.field private static spawnN:I

.field private static t30Cap:Z

.field private static t30Derelict:Ljava/lang/String;

.field private static t30Die:Z

.field private static t30Kill:Z

.field private static t30Shield:Ljava/lang/String;

.field private static t30Spawn:Ljava/lang/String;

.field private static t30Wreck:Z

.field private static t33Shot:Z

.field private static t37Arrived:Ljava/lang/String;

.field private static t37Blast:Z

.field private static t37Dock:Z

.field private static t37Drive:Ljava/lang/String;

.field private static t37DriveSeen:Ljava/lang/String;

.field private static t37Hop:J

.field private static t37KillFlag:Z

.field private static t37Music:Ljava/lang/String;

.field private static t37Near:Ljava/lang/String;

.field private static t37Rich:Z

.field private static t37Ufo:Z

.field private static t38Refit:Ljava/lang/String;

.field private static t39Volley:Ljava/lang/String;

.field private static t39Wall:Ljava/lang/String;

.field private static tDmg:Ljava/lang/String;

.field private static tDmgDealt:F

.field private static tDmgDodge:F

.field private static tDmgDone:Z

.field private static tDmgHullLost:F

.field private static tDmgLast:F

.field private static tDmgLevel:Ljava/lang/Object;

.field private static tDmgLog:J

.field private static tDmgPoll:J

.field private static tDmgPs:Lfr/testudo/spacecorsair/business/player/PlayerShip;

.field private static tDmgShLast:F

.field private static tDmgShieldLost:F

.field private static tDmgT:J

.field private static tDmgTgt:Lfr/testudo/spacecorsair/business/Element;

.field private static tDmgTgtLast:F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3eb33333    # 0.35f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x1

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "devOverclockLaser"

    aput-object v1, v0, v7

    const-string v1, "devPhaseShield"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "devSwarmMissile"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->ITEMS:[Ljava/lang/String;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x8c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x6e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/16 v1, 0x64

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/high16 v1, -0x3ea00000    # -14.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v7, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 51
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecsBuilder;->fermiumLevel15:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 57
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->level:I

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v3, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->r:F

    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v6, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->g:F

    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iput v5, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->b:F

    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x4e20

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x9c4

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    const/16 v1, 0x96

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->deadTime:I

    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->lifeRegen:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;

    const/high16 v1, 0x43160000    # 150.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LifeRegen;->lifePerSecond:F

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserDamageReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;

    const/16 v1, 0x32

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserDamageReduce;->reducePourcent:I

    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileDamagReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;

    const/16 v1, 0x3c

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileDamagReduce;->reducePourcent:I

    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->missileReloadReduced:Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;

    const/16 v1, 0x32

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/MissileReloadReduced;->reduceInPourc:I

    .line 68
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->laserReloadReduce:Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;

    const/16 v1, 0x1e

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/LaserReloadReduce;->reduceInPourc:I

    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->bonuses:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldBonuses;->boosterOptimiser:Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;

    const/16 v1, 0x5a

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/BoosterOptimizer;->consumeReductionPourcent:I

    .line 71
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 72
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->level:I

    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const v1, 0x45bb8000    # 6000.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->damage:F

    .line 74
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const/high16 v1, 0x43820000    # 260.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->radiusDamage:F

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->life:F

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const-wide/16 v2, 0x2bc

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->reloadSpeedInMilli:J

    .line 77
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const/16 v1, 0xc

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->lifeTime:I

    .line 78
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const v1, 0x3f7ae148    # 0.98f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxTurnFactor:F

    .line 79
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const/high16 v1, 0x40900000    # 4.5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->pousseeForce:F

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const v1, 0x3f866666    # 1.05f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->speedDeperdition:F

    .line 81
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const/16 v1, 0x5f

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->agility:I

    .line 82
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->sendAndForget:Z

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    const/16 v1, 0xc8

    iput v1, v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;->maxCountInventory:I

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    .line 750
    const/16 v0, 0x1770

    sput v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    .line 751
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModDev;->redeemNow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static askCode(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 149
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 150
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 151
    const-string v1, "Gift code"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Gift code"

    .line 153
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Redeem"

    .line 155
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModDev$1;

    invoke-direct {v3, v0, p0}, Lfr/testudo/spacecorsair/mod/ModDev$1;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 161
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 163
    return-void
.end method

.method public static desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "devOverclockLaser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 138
    const-string v0, "<b>DEV ONLY</b>. Green test laser: very high damage, near-instant reload, no heat, 5x critical hits."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_12
    return-object v0

    .line 139
    :cond_13
    const-string v1, "devPhaseShield"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 140
    const-string v0, "<b>DEV ONLY</b>. 20,000 capacity, regenerates almost instantly, repairs the hull and halves incoming damage."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 141
    :cond_22
    const-string v1, "devSwarmMissile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 142
    const-string v0, "<b>DEV ONLY</b>. Fire-and-forget heavy missile mod with a huge blast radius and a 0.7 s reload."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 143
    :cond_31
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static devCodeAllowed()Z
    .registers 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method private static dmgAmmo()I
    .registers 1

    .prologue
    .line 481
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getMissileCount()I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static dmgStart(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/String;)V
    .registers 14

    .prologue
    .line 489
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgTgt:Lfr/testudo/spacecorsair/business/Element;

    .line 490
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDone:Z

    .line 491
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->active()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->standDown()V

    .line 492
    :cond_f
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v8, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 493
    const/16 v2, 0x28

    iput v2, v8, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 494
    invoke-virtual {v8}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->init()V

    .line 495
    const-string v2, "modRailgunL15"

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    .line 496
    iget-object v3, v8, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iput-object v2, v3, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 497
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 498
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v9

    .line 499
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 500
    if-eqz v9, :cond_63

    if-eqz v2, :cond_63

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v35_refit_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 502
    :cond_63
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 503
    invoke-static {}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->values()[Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v10

    array-length v11, v10

    const/4 v2, 0x0

    move v7, v2

    :goto_6c
    if-ge v7, v11, :cond_a8

    aget-object v5, v10, v7

    .line 504
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v2

    .line 505
    const-string v3, "debug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    const-string v3, "dev"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    const-string v3, "pilot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 503
    :cond_8c
    :goto_8c
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_6c

    .line 507
    :cond_90
    :try_start_90
    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v3

    .line 508
    instance-of v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    if-eqz v2, :cond_28e

    move-object v0, v3

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    move-object v2, v0

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    if-le v2, v4, :cond_28e

    check-cast v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    iget v2, v3, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_a4} :catch_288

    move-object v3, v5

    :goto_a5
    move v4, v2

    move-object v6, v3

    .line 509
    goto :goto_8c

    .line 511
    :cond_a8
    if-eqz v6, :cond_bb

    .line 512
    iget-object v2, v8, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iput-object v6, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 513
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 515
    :cond_bb
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDodge:F

    .line 516
    :try_start_be
    const-string v2, "corsair_dmgdodge"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDodge:F
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_d0} :catch_133

    .line 517
    :cond_d0
    :goto_d0
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 518
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->setFullLifeAndShieldUp()V

    .line 519
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    iput v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 520
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v2, :cond_e6

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v3, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 521
    :cond_e6
    const/high16 v2, -0x40800000    # -1.0f

    sput v2, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    .line 522
    new-instance v5, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v4, 0x44d48000    # 1700.0f

    add-float/2addr v3, v4

    invoke-direct {v5, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 523
    const-string v2, "police_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 524
    if-eqz v3, :cond_138

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 525
    :goto_109
    const/4 v2, 0x0

    .line 526
    if-eqz v3, :cond_13a

    .line 527
    const/4 v2, 0x0

    invoke-static {v4, v2, v5}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->spawn(Ljava/lang/String;ILfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    move-object v3, v2

    .line 531
    :goto_112
    if-nez v3, :cond_153

    const-string v2, "dmg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_132
    return-void

    .line 516
    :catch_133
    move-exception v2

    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDodge:F

    goto :goto_d0

    :cond_138
    move-object v4, p1

    .line 524
    goto :goto_109

    .line 529
    :cond_13a
    const/4 v3, 0x0

    :goto_13b
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v6, v6

    if-ge v3, v6, :cond_28b

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v6, v6, v3

    iget-object v6, v6, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150

    invoke-static {v3, v5}, Lfr/testudo/spacecorsair/mod/ModCapitals;->testBuild(ILfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-result-object v2

    :cond_150
    add-int/lit8 v3, v3, 0x1

    goto :goto_13b

    .line 532
    :cond_153
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgTgt:Lfr/testudo/spacecorsair/business/Element;

    .line 533
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModBal;->resetSplit(Lfr/testudo/spacecorsair/business/Element;)V

    .line 534
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgPs:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 535
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLevel:Ljava/lang/Object;

    .line 536
    const-wide/16 v4, 0x0

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgT:J

    .line 537
    const-wide/16 v4, 0x0

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLog:J

    .line 538
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLast:F

    .line 539
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v2, :cond_269

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    :goto_176
    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgShLast:F

    .line 540
    iget v2, v3, Lfr/testudo/spacecorsair/business/Element;->life:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgTgtLast:F

    .line 541
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDealt:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgShieldLost:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgHullLost:F

    .line 542
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v4

    .line 543
    const-string v5, "dmg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " player L"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v8, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v9, :cond_26c

    const-string v2, "?"

    :goto_1ae
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " refit10 hull="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " shield="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 544
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v2, :cond_272

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    :goto_1d4
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " laser="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v8, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/player/PlayerGear;->laser:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " shieldGear="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v8, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/player/PlayerGear;->shield:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " dodge="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v6, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDodge:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " turrets="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 545
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-nez v2, :cond_275

    const/4 v2, 0x0

    :goto_213
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " | target L"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_279

    const/4 v2, -0x1

    :goto_220
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " hull="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    .line 546
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v4, :cond_27c

    const/4 v2, -0x1

    :goto_23d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v4, :cond_283

    const/high16 v2, -0x40800000    # -1.0f

    :goto_24b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " police="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v4, :cond_286

    iget-boolean v2, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->police:Z

    if-eqz v2, :cond_286

    const/4 v2, 0x1

    :goto_25c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-static {v5, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_132

    .line 539
    :cond_269
    const/4 v2, 0x0

    goto/16 :goto_176

    .line 543
    :cond_26c
    invoke-virtual {v9}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1ae

    .line 544
    :cond_272
    const/4 v2, 0x0

    goto/16 :goto_1d4

    .line 545
    :cond_275
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v2, v2

    goto :goto_213

    :cond_279
    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->lvl:I

    goto :goto_220

    .line 546
    :cond_27c
    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->shot:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_23d

    :cond_283
    iget v2, v4, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->rate:F

    goto :goto_24b

    :cond_286
    const/4 v2, 0x0

    goto :goto_25c

    .line 509
    :catch_288
    move-exception v2

    goto/16 :goto_8c

    :cond_28b
    move-object v3, v2

    goto/16 :goto_112

    :cond_28e
    move v2, v4

    move-object v3, v6

    goto/16 :goto_a5
.end method

.method static ev(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 553
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->evOn:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    const-string v0, "corsair_nodialog"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->evOn:Ljava/lang/Boolean;

    .line 554
    :cond_10
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->evOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "ModTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_35

    .line 558
    :cond_34
    :goto_34
    return-void

    .line 555
    :catch_35
    move-exception v0

    goto :goto_34
.end method

.method public static giftHook(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 173
    if-nez p1, :cond_15

    const-string v0, ""

    .line 174
    :goto_5
    const-string v2, "CORSAIRDEV"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModDev;->devCodeAllowed()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_13
    const/4 v0, 0x0

    .line 180
    :goto_14
    return v0

    .line 173
    :cond_15
    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 176
    :cond_2a
    :try_start_2a
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModDev;->redeem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_36} :catch_38

    :goto_36
    move v0, v1

    .line 180
    goto :goto_14

    .line 177
    :catch_38
    move-exception v0

    goto :goto_36
.end method

.method public static hidden(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 105
    if-nez p0, :cond_6

    move v1, v0

    .line 123
    :cond_5
    :goto_5
    return v1

    .line 106
    :cond_6
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_11

    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_5

    .line 108
    :cond_11
    if-eqz v2, :cond_1b

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->hasArt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    :cond_1b
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hullSecret"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 112
    :try_start_27
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 113
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move v1, v0

    goto :goto_5

    .line 114
    :cond_3b
    if-eqz v2, :cond_4a

    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    if-eqz v3, :cond_4a

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_46} :catch_6d

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4b

    :cond_4a
    move v0, v1

    :cond_4b
    move v1, v0

    goto :goto_5

    .line 119
    :cond_4d
    const-string v2, "hullDev"

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    move v1, v0

    goto :goto_5

    .line 121
    :cond_5b
    :try_start_5b
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_66} :catch_6b

    move-result v2

    if-eqz v2, :cond_5

    move v1, v0

    goto :goto_5

    .line 122
    :catch_6b
    move-exception v0

    goto :goto_5

    .line 115
    :catch_6d
    move-exception v0

    goto :goto_5
.end method

.method public static isDev(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 96
    if-nez p0, :cond_5

    .line 100
    :cond_4
    :goto_4
    return v0

    .line 97
    :cond_5
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v3

    .line 98
    const-string v2, "hullDev"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    goto :goto_4

    .line 99
    :cond_13
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModDev;->ITEMS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v0

    :goto_17
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_17
.end method

.method public static label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "devOverclockLaser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "DEV Overclock Laser"

    .line 132
    :goto_e
    return-object v0

    .line 130
    :cond_f
    const-string v1, "devPhaseShield"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "DEV Phase Shield"

    goto :goto_e

    .line 131
    :cond_1a
    const-string v1, "devSwarmMissile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "DEV Swarm Missile"

    goto :goto_e

    .line 132
    :cond_25
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static noDialog(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 267
    const-string v0, "corsair_nodialog"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static pct(FF)Ljava/lang/String;
    .registers 7

    .prologue
    .line 485
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8

    const-string v0, "?"

    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, p0

    div-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static redeem(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModDev$2;

    invoke-direct {v0, p0}, Lfr/testudo/spacecorsair/mod/ModDev$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModGameQueue;->run(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 188
    :goto_b
    return-object v0

    .line 187
    :catch_c
    move-exception v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gift code failed: "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static redeemNow(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    if-nez p0, :cond_1b

    const-string v0, ""

    .line 194
    :goto_6
    const-string v3, "CORSAIRDEV"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModDev;->devCodeAllowed()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_14
    const-string v0, "Unknown gift code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_1a
    return-object v0

    .line 193
    :cond_1b
    const-string v0, " "

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 196
    :cond_30
    :try_start_30
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 197
    const-string v0, "hullDev"

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 198
    iget-object v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    .line 199
    :goto_44
    if-eqz v2, :cond_4b

    iget-object v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_4b
    const-string v0, "corsair_titans"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 202
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "hullLeviathan"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "hullThrone"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "alienBlatte"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "hullImperator"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "hullMoth"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "megatronShip"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "policeShip"

    aput-object v5, v4, v0

    array-length v5, v4

    move v0, v1

    :goto_7b
    if-ge v0, v5, :cond_95

    aget-object v6, v4, v0

    .line 203
    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    .line 204
    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    :cond_93
    move v2, v1

    .line 198
    goto :goto_44

    .line 207
    :cond_95
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v5, v4

    move v0, v1

    :goto_99
    if-ge v0, v5, :cond_bc

    aget-object v6, v4, v0

    .line 208
    if-eqz v6, :cond_a3

    iget-boolean v7, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_a1} :catch_119

    if-eqz v7, :cond_a6

    .line 207
    :cond_a3
    :goto_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 210
    :cond_a6
    :try_start_a6
    iget-object v6, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->id:Ljava/lang/String;

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    .line 211
    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a3

    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b9} :catch_ba

    goto :goto_a3

    .line 212
    :catch_ba
    move-exception v6

    goto :goto_a3

    .line 217
    :cond_bc
    :try_start_bc
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModDev;->ITEMS:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_c0
    if-ge v0, v5, :cond_e4

    aget-object v1, v4, v0

    .line 218
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    .line 219
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v6, v6, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v6, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v6

    if-gtz v6, :cond_e1

    .line 220
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v6, v6, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v6, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 217
    :cond_e1
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    .line 223
    :cond_e4
    const-string v0, "hullDev"

    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->onShipChanged()V

    .line 224
    :cond_f7
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 225
    const-string v0, "DEV kit unlocked: the DEV Prototype X-0 is in your Ships screen and the DEV Overclock Laser, DEV Phase Shield and DEV Swarm Missile are in your inventory. The X-0 fires a Phase Pulse every 6 seconds."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 227
    if-eqz v2, :cond_111

    const-string v0, "DEV kit unlocked! Check your Ships screen and inventory."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a

    :cond_111
    const-string v0, "DEV items restored to your inventory."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_116} :catch_119

    move-result-object v0

    goto/16 :goto_1a

    .line 228
    :catch_119
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gift code failed: "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a
.end method

.method public static spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    .registers 2

    .prologue
    .line 88
    packed-switch p0, :pswitch_data_c

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->MISSILE:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    :goto_5
    return-object v0

    .line 89
    :pswitch_6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    goto :goto_5

    .line 90
    :pswitch_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->SHIELD:Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    goto :goto_5

    .line 88
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method static testDmg(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    .line 416
    :try_start_0
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgPoll:J

    sub-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgPoll:J

    .line 417
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgPoll:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_34

    .line 418
    const-wide/16 v2, 0x3e8

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgPoll:J

    .line 419
    const-string v2, "corsair_dmgtest"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_34

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->tDmg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->dmgStart(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/String;)V

    .line 422
    :cond_34
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgTgt:Lfr/testudo/spacecorsair/business/Element;

    .line 423
    if-eqz v3, :cond_3c

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDone:Z

    if-eqz v2, :cond_3d

    .line 476
    :cond_3c
    :goto_3c
    return-void

    .line 424
    :cond_3d
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgT:J

    add-long/2addr v4, p1

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgT:J

    .line 426
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v2, :cond_db

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    move v6, v2

    .line 427
    :goto_4b
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLast:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5d

    sget v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgHullLost:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLast:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgHullLost:F

    .line 428
    :cond_5d
    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLast:F

    .line 429
    sget v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgShLast:F

    cmpg-float v2, v6, v2

    if-gez v2, :cond_6f

    sget v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgShieldLost:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgShLast:F

    sub-float/2addr v4, v6

    add-float/2addr v2, v4

    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgShieldLost:F

    .line 430
    :cond_6f
    sput v6, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgShLast:F

    .line 431
    iget v2, v3, Lfr/testudo/spacecorsair/business/Element;->life:F

    .line 432
    sget v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgTgtLast:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_81

    sget v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDealt:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgTgtLast:F

    sub-float/2addr v5, v2

    add-float/2addr v4, v5

    sput v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDealt:F

    .line 433
    :cond_81
    sput v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgTgtLast:F

    .line 435
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgPs:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-ne p0, v2, :cond_9c

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_9c

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-lez v2, :cond_9c

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLevel:Ljava/lang/Object;

    if-eq v2, v4, :cond_df

    :cond_9c
    const/4 v2, 0x1

    move v5, v2

    .line 436
    :goto_9e
    if-nez v5, :cond_e2

    iget-boolean v2, v3, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_ab

    iget v2, v3, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_e2

    :cond_ab
    const/4 v2, 0x1

    move v4, v2

    .line 437
    :goto_ad
    if-nez v5, :cond_13b

    if-nez v4, :cond_13b

    .line 438
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v2, v8

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float/2addr v2, v7

    const/high16 v7, 0x42b40000    # 90.0f

    add-float/2addr v2, v7

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v7

    .line 439
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v2, :cond_e5

    const/4 v2, 0x0

    :goto_cd
    iget-object v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v8, v8

    if-ge v2, v8, :cond_e5

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v8, v8, v2

    iput v7, v8, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->targetSpin:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_cd

    .line 426
    :cond_db
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_4b

    .line 435
    :cond_df
    const/4 v2, 0x0

    move v5, v2

    goto :goto_9e

    .line 436
    :cond_e2
    const/4 v2, 0x0

    move v4, v2

    goto :goto_ad

    .line 440
    :cond_e5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 441
    sget v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDodge:F

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_12c

    .line 442
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v7, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v7

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v8, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v7, v8

    .line 443
    mul-float v8, v2, v2

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 444
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_12c

    .line 445
    sget v9, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDodge:F

    long-to-float v10, p1

    mul-float/2addr v9, v10

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    .line 446
    iget-object v10, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v10, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v7, v7

    div-float/2addr v7, v8

    mul-float/2addr v7, v9

    add-float/2addr v7, v11

    iput v7, v10, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 447
    iget-object v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v10, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v8

    mul-float/2addr v2, v9

    add-float/2addr v2, v10

    iput v2, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 450
    :cond_12c
    instance-of v2, v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v2, :cond_13b

    .line 451
    move-object v0, v3

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    move-object v2, v0

    .line 452
    iget-object v7, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-nez v7, :cond_13b

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    .line 455
    :cond_13b
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLog:J

    sub-long/2addr v8, p1

    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLog:J

    .line 456
    if-eqz v5, :cond_3a1

    const-string v2, "player_dead"

    move-object v5, v2

    .line 457
    :goto_145
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLog:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_14f

    if-eqz v5, :cond_290

    .line 458
    :cond_14f
    const-wide/16 v8, 0x3e8

    sput-wide v8, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgLog:J

    .line 459
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    .line 460
    const-string v7, "dmg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModDev;->tDmg:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " t="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgT:J

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " phull="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    iget v9, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v8, v9}, Lfr/testudo/spacecorsair/mod/ModDev;->pct(FF)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " pshield="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 461
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v4, :cond_3ba

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    :goto_1aa
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " hullLost="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgHullLost:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v6, v8}, Lfr/testudo/spacecorsair/mod/ModDev;->pct(FF)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " shieldLost="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgShieldLost:F

    .line 462
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " wall="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " thull="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lfr/testudo/spacecorsair/business/Element;->life:F

    iget v8, v3, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    .line 463
    invoke-static {v6, v8}, Lfr/testudo/spacecorsair/mod/ModDev;->pct(FF)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " tshield="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_3bd

    const/4 v2, 0x0

    :goto_20b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dealt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDealt:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " gun="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModBal;->gunDealt:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModBal;->gunHits:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " msl="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModBal;->missileDealt:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModBal;->missileHits:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ammo="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModDev;->dmgAmmo()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bal="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dist="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 464
    invoke-virtual {v4, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-static {v7, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_290
    if-eqz v5, :cond_3c

    .line 467
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDone:Z

    .line 468
    const/4 v2, 0x0

    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    .line 469
    const-string v2, "dmg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModDev;->tDmg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgT:J

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hullLost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgHullLost:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModDev;->pct(FF)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shieldLost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgShieldLost:F

    .line 470
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pMaxHull="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tMaxHull="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " thull="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lfr/testudo/spacecorsair/business/Element;->life:F

    iget v3, v3, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    .line 471
    invoke-static {v5, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->pct(FF)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dealt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgDealt:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gun="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lfr/testudo/spacecorsair/mod/ModBal;->gunDealt:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lfr/testudo/spacecorsair/mod/ModBal;->gunHits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lfr/testudo/spacecorsair/mod/ModBal;->missileDealt:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lfr/testudo/spacecorsair/mod/ModBal;->missileHits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ammo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModDev;->dmgAmmo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModBal;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_384
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_384} :catch_386

    goto/16 :goto_3c

    .line 473
    :catch_386
    move-exception v2

    .line 474
    const-string v3, "dmg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 456
    :cond_3a1
    if-eqz v4, :cond_3a8

    :try_start_3a3
    const-string v2, "killed"

    move-object v5, v2

    goto/16 :goto_145

    :cond_3a8
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModDev;->tDmgT:J

    const-wide/32 v8, 0x2bf20

    cmp-long v2, v4, v8

    if-ltz v2, :cond_3b6

    const-string v2, "timeout"

    move-object v5, v2

    goto/16 :goto_145

    :cond_3b6
    const/4 v2, 0x0

    move-object v5, v2

    goto/16 :goto_145

    .line 461
    :cond_3ba
    const/4 v4, 0x0

    goto/16 :goto_1aa

    .line 463
    :cond_3bd
    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I
    :try_end_3c2
    .catch Ljava/lang/Throwable; {:try_start_3a3 .. :try_end_3c2} :catch_386

    move-result v2

    goto/16 :goto_20b
.end method

.method public static testFlag(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 254
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/local/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 255
    if-eqz v0, :cond_21

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->switchSeen()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    .line 258
    :cond_21
    :goto_21
    return v0

    .line 257
    :catch_22
    move-exception v0

    .line 258
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static testV30(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 19

    .prologue
    .line 280
    :try_start_0
    const-string v2, "corsair_spawn"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_d5

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Spawn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d5

    .line 282
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Spawn:Ljava/lang/String;

    .line 283
    sget v3, Lfr/testudo/spacecorsair/mod/ModDev;->spawnN:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModDev;->spawnN:I

    .line 284
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 285
    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 286
    const/4 v2, 0x0

    move v3, v2

    :goto_2d
    const/4 v2, 0x0

    aget-object v2, v4, v2

    const-string v6, "rat"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    const/4 v2, 0x3

    :goto_39
    if-ge v3, v2, :cond_d5

    .line 288
    const/4 v2, 0x0

    aget-object v2, v4, v2

    .line 289
    const-string v6, "albatros"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v2

    .line 295
    :goto_4a
    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_5c

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const-string v7, "elite"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 296
    :cond_5c
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    mul-int/lit16 v7, v3, 0x12c

    add-int/lit16 v7, v7, -0x1a4

    sget v8, Lfr/testudo/spacecorsair/mod/ModDev;->spawnN:I

    rem-int/lit8 v8, v8, 0x3

    mul-int/lit16 v8, v8, 0x118

    add-int/2addr v7, v8

    int-to-float v7, v7

    sget v8, Lfr/testudo/spacecorsair/mod/ModDev;->spawnN:I

    rem-int/lit8 v8, v8, 0x2

    mul-int/lit16 v8, v8, 0xb4

    rsub-int v8, v8, -0x230

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 297
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 298
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setIaDisabled()V

    .line 299
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 286
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2d

    :cond_98
    const/4 v2, 0x1

    goto :goto_39

    .line 290
    :cond_9a
    const-string v6, "blatte"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v2

    goto :goto_4a

    .line 291
    :cond_a7
    const-string v6, "frelon"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v2

    goto :goto_4a

    .line 292
    :cond_b4
    const-string v6, "ufo"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c1

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v2

    goto :goto_4a

    .line 293
    :cond_c1
    const-string v6, "defensor"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v2

    goto/16 :goto_4a

    .line 294
    :cond_cf
    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v2

    goto/16 :goto_4a

    .line 303
    :cond_d5
    const-string v2, "corsair_kill"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v4

    .line 304
    if-eqz v4, :cond_122

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Kill:Z

    if-nez v2, :cond_122

    .line 305
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v5, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 306
    const/4 v2, 0x0

    move v3, v2

    :goto_eb
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_122

    .line 307
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 308
    instance-of v6, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v6, :cond_11e

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_11e

    iget-object v6, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    const v7, 0x453b8000    # 3000.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_11e

    .line 309
    const/4 v6, 0x0

    iput-boolean v6, v2, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    .line 310
    iget v6, v2, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v6, v0, v7}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 306
    :cond_11e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_eb

    .line 314
    :cond_122
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModDev;->t30Kill:Z

    .line 316
    const-string v2, "corsair_wreckhit"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 317
    if-eqz v3, :cond_182

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Wreck:Z

    if-nez v2, :cond_182

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13b
    :goto_13b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_182

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 319
    check-cast v2, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 320
    iget-boolean v5, v2, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-nez v5, :cond_13b

    iget-object v5, v2, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    const v6, 0x453b8000    # 3000.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_13b

    iget v5, v2, Lfr/testudo/spacecorsair/mod/ModWreck;->life:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v5, v0, v6}, Lfr/testudo/spacecorsair/mod/ModWreck;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    :try_end_167
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_167} :catch_168

    goto :goto_13b

    .line 386
    :catch_168
    move-exception v2

    .line 387
    const-string v3, "ModDev"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v30 test "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_181
    return-void

    .line 323
    :cond_182
    :try_start_182
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Wreck:Z

    .line 325
    const-string v2, "corsair_wreckshot"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v13

    .line 326
    if-eqz v13, :cond_31d

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t33Shot:Z

    if-nez v2, :cond_31d

    .line 327
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1a0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_269

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 329
    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModWreck;

    move-object v11, v0

    .line 330
    iget-boolean v2, v11, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-nez v2, :cond_1a0

    iget-boolean v2, v11, Lfr/testudo/spacecorsair/mod/ModWreck;->derelict:Z

    if-nez v2, :cond_1a0

    iget-object v2, v11, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const v3, 0x453b8000    # 3000.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1a0

    .line 331
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, v11, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    aput v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v11, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    aput v5, v3, v4

    const/4 v4, 0x2

    iget v5, v11, Lfr/testudo/spacecorsair/mod/ModWreck;->mass:F

    aput v5, v3, v4

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const/4 v2, 0x0

    move v12, v2

    :goto_1e4
    const/4 v2, 0x6

    if-ge v12, v2, :cond_1a0

    .line 333
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v16, v2, v4

    .line 334
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f000000    # 0.5f

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    move-object/from16 v5, p0

    .line 335
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 336
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v11, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    const/high16 v6, 0x43e10000    # 450.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, v11, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x43e10000    # 450.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 337
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    neg-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    neg-float v5, v5

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 338
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v4, v3

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v3, v3

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 339
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_1e4

    .line 342
    :cond_269
    const-string v2, "ModWreck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wreckshot pieces="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_287
    :goto_287
    sput-boolean v13, Lfr/testudo/spacecorsair/mod/ModDev;->t33Shot:Z

    .line 355
    const-string v2, "corsair_shieldpct"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_2d0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Shield:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d0

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v3, :cond_2d0

    .line 357
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Shield:Ljava/lang/String;

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    iput v2, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v4, v4, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    div-float/2addr v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    .line 362
    :cond_2d0
    const-string v2, "corsair_derelict"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_2ef

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Derelict:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2ef

    .line 364
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Derelict:Ljava/lang/String;

    .line 365
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModDerelict;->testPlace(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V

    .line 368
    :cond_2ef
    const-string v2, "corsair_capfight"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 369
    if-eqz v3, :cond_3c8

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Cap:Z

    if-nez v2, :cond_3c8

    .line 370
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_305
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 371
    iget v5, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v6, 0x3e947ae1    # 0.29f

    mul-float/2addr v5, v6

    iput v5, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 372
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    goto :goto_305

    .line 343
    :cond_31d
    if-nez v13, :cond_287

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t33Shot:Z

    if-eqz v2, :cond_287

    .line 344
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 346
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 347
    iget-object v5, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/4 v6, 0x0

    aget v6, v2, v6

    sub-float/2addr v5, v6

    iget-object v6, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v7, 0x1

    aget v7, v2, v7

    sub-float/2addr v6, v7

    .line 348
    const-string v7, "ModWreck"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wreckshot moved="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " size="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->w:F

    iget v6, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->h:F

    .line 349
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " art="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v2, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->preDrawn:Z

    if-eqz v2, :cond_3be

    iget-object v2, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->art:Ljava/lang/String;

    :goto_3a5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " removed="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32d

    .line 349
    :cond_3be
    const-string v2, "cut"

    goto :goto_3a5

    .line 351
    :cond_3c1
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto/16 :goto_287

    .line 375
    :cond_3c8
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Cap:Z

    .line 377
    const-string v2, "corsair_die"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 378
    if-eqz v3, :cond_404

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Die:Z

    if-nez v2, :cond_404

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_404

    .line 379
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->invincible:Z

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    const/4 v4, 0x0

    iput v4, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v4, 0x47c35000    # 100000.0f

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    .line 382
    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    add-float/2addr v4, v5

    if-eqz v2, :cond_40b

    :goto_3fe
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 384
    :cond_404
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Die:Z

    .line 385
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModDev;->testV37(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_409
    .catch Ljava/lang/Throwable; {:try_start_182 .. :try_end_409} :catch_168

    goto/16 :goto_181

    :cond_40b
    move-object/from16 v2, p0

    .line 382
    goto :goto_3fe
.end method

.method private static testV37(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 19

    .prologue
    .line 567
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v13, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 568
    const-string v2, "corsair_goto"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 569
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_51

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModDev;->t37Hop:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa0

    cmp-long v3, v4, v6

    if-lez v3, :cond_51

    .line 570
    invoke-static {v2}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    .line 571
    iget-object v4, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v5, v13, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 572
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t37Arrived:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Arrived:Ljava/lang/String;

    const-string v3, "ModDev"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goto arrived "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_51
    :goto_51
    const-string v2, "corsair_near"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 582
    if-eqz v4, :cond_a9

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Near:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 583
    sput-object v4, Lfr/testudo/spacecorsair/mod/ModDev;->t37Near:Ljava/lang/String;

    .line 584
    const/4 v3, 0x0

    .line 585
    const-string v2, "objective"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_141

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->testObjective()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    .line 590
    :cond_70
    :goto_70
    const-string v5, "ModDev"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "near "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_1cf

    const-string v2, " ok"

    :goto_85
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-eqz v3, :cond_a9

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v5, 0x44960000    # 1200.0f

    add-float/2addr v4, v5

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 593
    :cond_a9
    const-string v2, "corsair_dock"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v6

    .line 594
    if-eqz v6, :cond_232

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Dock:Z

    if-nez v2, :cond_232

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModPlace;->nearestStation(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v7

    .line 598
    const/4 v3, 0x0

    .line 600
    if-eqz v7, :cond_1d3

    :try_start_c0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_c4
    move-object v4, v2

    :goto_c5
    if-eqz v4, :cond_1f3

    if-nez v3, :cond_1f3

    .line 601
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v2, 0x0

    move v5, v2

    :goto_d0
    if-ge v5, v9, :cond_1ec

    aget-object v2, v8, v5

    .line 602
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "docks"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_dd} :catch_29e

    move-result v10

    if-nez v10, :cond_1d6

    move-object v2, v3

    .line 601
    :goto_e1
    add-int/lit8 v5, v5, 0x1

    move-object v3, v2

    goto :goto_d0

    .line 574
    :cond_e5
    const/4 v2, 0x0

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Arrived:Ljava/lang/String;

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModDev;->t37Hop:J

    .line 576
    invoke-static {v3}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v4

    .line 577
    const-string v5, "ModDev"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "goto "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v13, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " -> "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v4, :cond_13e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " via "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v4, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_12c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    if-eqz v4, :cond_51

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/world/Portal;->jump()V

    goto/16 :goto_51

    .line 577
    :cond_13e
    const-string v2, " no gate"

    goto :goto_12c

    .line 586
    :cond_141
    const-string v2, "xy:"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_169

    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {v3, v5, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    goto/16 :goto_70

    .line 587
    :cond_169
    const-string v2, "station"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_181

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v2

    if-eqz v2, :cond_85a

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    :goto_17e
    move-object v3, v2

    goto/16 :goto_70

    .line 588
    :cond_181
    const-string v2, "boss"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a9

    iget-object v2, v13, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_18f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v6

    if-eqz v6, :cond_18f

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_70

    .line 589
    :cond_1a9
    const-string v2, "flagship"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1bb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v6, :cond_1bb

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_70

    .line 590
    :cond_1cf
    const-string v2, " none"

    goto/16 :goto_85

    .line 600
    :cond_1d3
    const/4 v2, 0x0

    goto/16 :goto_c4

    .line 603
    :cond_1d6
    const/4 v10, 0x1

    :try_start_1d7
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 604
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 605
    if-eqz v2, :cond_857

    array-length v10, v2

    if-lez v10, :cond_857

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    goto/16 :goto_e1

    .line 600
    :cond_1ec
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1ef
    .catch Ljava/lang/Throwable; {:try_start_1d7 .. :try_end_1ef} :catch_29e

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_c5

    :cond_1f3
    move-object v2, v3

    .line 611
    :goto_1f4
    const-string v4, "ModDev"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dock "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v7, :cond_2a2

    iget-object v3, v7, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    :goto_205
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_2a6

    const-string v3, " point"

    :goto_20d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-eqz v2, :cond_232

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v7, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 614
    :cond_232
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModDev;->t37Dock:Z

    .line 615
    const-string v2, "corsair_killflag"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 616
    if-eqz v3, :cond_2aa

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37KillFlag:Z

    if-nez v2, :cond_2aa

    .line 617
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24f
    :goto_24f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2aa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 618
    iget-boolean v5, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v5, :cond_24f

    iget-object v5, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    const/high16 v6, 0x457a0000    # 4000.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_24f

    .line 619
    const-string v5, "ModDev"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "killflag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v7

    iget-object v7, v7, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v7, v7, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v5, 0x0

    iput-boolean v5, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->invincible:Z

    .line 621
    iget v5, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v5, v0, v6}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_24f

    .line 608
    :catch_29e
    move-exception v2

    .line 609
    const/4 v2, 0x0

    goto/16 :goto_1f4

    .line 611
    :cond_2a2
    const-string v3, "none"

    goto/16 :goto_205

    :cond_2a6
    const-string v3, " no point"

    goto/16 :goto_20d

    .line 624
    :cond_2aa
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t37KillFlag:Z

    .line 626
    const-string v2, "corsair_rich"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 627
    if-eqz v3, :cond_346

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Rich:Z

    if-nez v2, :cond_346

    .line 628
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    const v4, 0x2faf080

    invoke-virtual {v2, v4}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 629
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 630
    if-eqz v2, :cond_316

    .line 631
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "v35_parts"

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v5

    add-int/lit16 v5, v5, 0xc8

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 632
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v6, v5

    const/4 v2, 0x0

    :goto_2de
    if-ge v2, v6, :cond_305

    aget-object v7, v5, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v35_core_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2de

    .line 633
    :cond_305
    const-string v2, "v35_core_neutral"

    const-string v5, "neutral"

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 635
    :cond_316
    const-string v2, "rich"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "credits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v5, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v5, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v5}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->parts()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_346
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t37Rich:Z

    .line 639
    const-string v2, "corsair_refit"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 640
    if-eqz v3, :cond_3dd

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t38Refit:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3dd

    .line 641
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t38Refit:Ljava/lang/String;

    .line 643
    const/4 v2, 0x0

    const/16 v4, 0xa

    :try_start_35d
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 644
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v4

    .line 645
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 646
    if-eqz v4, :cond_3dd

    if-eqz v5, :cond_3dd

    .line 647
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v35_refit_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 648
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyGear()V

    .line 649
    const-string v5, "v38refit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " stage "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " turrets "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-nez v2, :cond_4bc

    const/4 v2, 0x0

    :goto_3d2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3dd
    .catch Ljava/lang/Throwable; {:try_start_35d .. :try_end_3dd} :catch_4c3

    .line 656
    :cond_3dd
    :goto_3dd
    const-string v2, "corsair_wallpct"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 657
    if-eqz v2, :cond_445

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t39Wall:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_445

    .line 658
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t39Wall:Ljava/lang/String;

    .line 660
    :try_start_3ef
    sget v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_412

    sget v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    sput v3, Lfr/testudo/spacecorsair/mod/ModAnchor;->cur:F

    .line 661
    :cond_412
    const-string v3, "v39anchor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "test charge "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAnchor;->charge()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lfr/testudo/spacecorsair/mod/ModAnchor;->cap:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_445
    .catch Ljava/lang/Throwable; {:try_start_3ef .. :try_end_445} :catch_4de

    .line 667
    :cond_445
    :goto_445
    const-string v2, "corsair_volley"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 668
    if-eqz v14, :cond_617

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t39Volley:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_617

    .line 669
    sput-object v14, Lfr/testudo/spacecorsair/mod/ModDev;->t39Volley:Ljava/lang/String;

    .line 671
    :try_start_457
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 672
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 673
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_4f9

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v12, v2

    .line 674
    :goto_478
    const/4 v5, 0x0

    .line 675
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 676
    const/4 v2, 0x0

    move v3, v2

    :goto_483
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4fe

    .line 677
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 678
    instance-of v6, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v6, :cond_4b8

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v6, :cond_4b8

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v6

    if-nez v6, :cond_4b8

    if-eqz v5, :cond_4b7

    iget-object v6, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 679
    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    iget-object v7, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F
    :try_end_4b2
    .catch Ljava/lang/Throwable; {:try_start_457 .. :try_end_4b2} :catch_6a6

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4b8

    :cond_4b7
    move-object v5, v2

    .line 676
    :cond_4b8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_483

    .line 649
    :cond_4bc
    :try_start_4bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v2, v2
    :try_end_4c1
    .catch Ljava/lang/Throwable; {:try_start_4bc .. :try_end_4c1} :catch_4c3

    goto/16 :goto_3d2

    .line 651
    :catch_4c3
    move-exception v2

    .line 652
    const-string v2, "v38refit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3dd

    .line 662
    :catch_4de
    move-exception v3

    .line 663
    const-string v3, "v39anchor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_445

    .line 673
    :cond_4f9
    const/high16 v2, 0x42200000    # 40.0f

    move v12, v2

    goto/16 :goto_478

    .line 681
    :cond_4fe
    if-eqz v5, :cond_5ad

    .line 682
    :try_start_500
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v2, :cond_5a6

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const v3, 0x3da3d70a    # 0.08f

    mul-float/2addr v3, v2

    .line 683
    :goto_510
    const/4 v2, 0x0

    move v11, v2

    :goto_512
    if-ge v11, v15, :cond_5ad

    .line 684
    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/4 v2, 0x1

    if-le v15, v2, :cond_5aa

    neg-float v2, v12

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v12

    int-to-float v7, v11

    mul-float/2addr v6, v7

    add-int/lit8 v7, v15, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v2, v6

    :goto_526
    add-float/2addr v2, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 685
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v0, v8

    move/from16 v16, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v2, v6

    neg-float v0, v2

    move/from16 v17, v0

    .line 686
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    const/4 v4, 0x6

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e99999a    # 0.3f

    const v9, 0x3e4ccccd    # 0.2f

    sget-object v10, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 687
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 688
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v7, 0x44af0000    # 1400.0f

    mul-float v7, v7, v16

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v8, 0x44af0000    # 1400.0f

    mul-float v8, v8, v17

    add-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 689
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v16

    neg-float v6, v0

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float/2addr v6, v7

    move/from16 v0, v17

    neg-float v7, v0

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 690
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v6, v4

    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v4, v4

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    iput v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 691
    const-wide/16 v6, 0xfa0

    iput-wide v6, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 692
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_512

    .line 682
    :cond_5a6
    const/high16 v3, 0x41a00000    # 20.0f

    goto/16 :goto_510

    .line 684
    :cond_5aa
    const/4 v2, 0x0

    goto/16 :goto_526

    .line 695
    :cond_5ad
    const-string v3, "v39anchor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volley "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v5, :cond_690

    const-string v2, "none"

    :goto_5c8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModAnchor;->state:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " charge "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAnchor;->charge()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " hull "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 696
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " shield "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-nez v2, :cond_69a

    const/4 v2, -0x1

    :goto_60c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 695
    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_617
    .catch Ljava/lang/Throwable; {:try_start_500 .. :try_end_617} :catch_6a6

    .line 702
    :cond_617
    :goto_617
    const-string v2, "corsair_mdrive"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 703
    if-eqz v2, :cond_62b

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t37DriveSeen:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62b

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37DriveSeen:Ljava/lang/String;

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Drive:Ljava/lang/String;

    .line 704
    :cond_62b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Drive:Ljava/lang/String;

    if-eqz v2, :cond_64d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Drive:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_64d

    .line 705
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Drive:Ljava/lang/String;

    const-string v3, "[0-9]+$"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModFaction;->testDrive(Ljava/lang/String;Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v2

    if-nez v2, :cond_64d

    const-string v2, ""

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Drive:Ljava/lang/String;

    .line 708
    :cond_64d
    const-string v2, "corsair_ufowreck"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v4

    .line 709
    if-eqz v4, :cond_74e

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Ufo:Z

    if-nez v2, :cond_74e

    .line 710
    const/4 v3, 0x0

    .line 711
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_660
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6cb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModWreck;

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-nez v6, :cond_854

    iget-boolean v6, v2, Lfr/testudo/spacecorsair/mod/ModWreck;->visualOnly:Z

    if-nez v6, :cond_854

    if-eqz v3, :cond_68e

    iget-object v6, v2, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    iget-object v7, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_854

    :cond_68e
    :goto_68e
    move-object v3, v2

    goto :goto_660

    .line 695
    :cond_690
    :try_start_690
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5c8

    .line 696
    :cond_69a
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I
    :try_end_6a3
    .catch Ljava/lang/Throwable; {:try_start_690 .. :try_end_6a3} :catch_6a6

    move-result v2

    goto/16 :goto_60c

    .line 697
    :catch_6a6
    move-exception v2

    .line 698
    const-string v3, "v39anchor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad volley "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_617

    .line 712
    :cond_6cb
    if-eqz v3, :cond_7c4

    .line 713
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->subtract(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    .line 714
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v7, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v6, v7

    iget v7, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v8, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 715
    const/4 v6, 0x1

    sget-object v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v7, v7, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v7, v7, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v7, v7, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v6

    .line 716
    iget-object v7, v6, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v9, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v9, v5

    const/high16 v10, 0x442f0000    # 700.0f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v5

    const/high16 v5, 0x442f0000    # 700.0f

    mul-float/2addr v2, v5

    add-float/2addr v2, v9

    invoke-virtual {v7, v8, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 717
    invoke-virtual {v6}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 718
    invoke-virtual {v6}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 719
    invoke-virtual {v6}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 720
    const-string v2, "ufowreck"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ufo placed behind piece at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_74e
    :goto_74e
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModDev;->t37Ufo:Z

    .line 725
    const-string v2, "corsair_blastwreck"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v4

    .line 726
    if-eqz v4, :cond_7e4

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Blast:Z

    if-nez v2, :cond_7e4

    .line 727
    const/4 v2, 0x0

    .line 728
    new-instance v3, Ljava/util/ArrayList;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWreck;->live:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :cond_769
    :goto_769
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7cc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 729
    iget-boolean v6, v2, Lfr/testudo/spacecorsair/mod/ModWreck;->removed:Z

    if-nez v6, :cond_769

    iget-object v6, v2, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v6

    const v7, 0x453b8000    # 3000.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_769

    .line 730
    new-instance v6, Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, v2, Lfr/testudo/spacecorsair/mod/ModWreck;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->subtract(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v6

    .line 731
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v9, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v8, v9

    iget v9, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v10, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 732
    const/high16 v8, 0x41000000    # 8.0f

    div-float v7, v8, v7

    invoke-virtual {v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 733
    invoke-static {v2, v6}, Lfr/testudo/spacecorsair/mod/ModWreck;->blastPush(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lfr/testudo/spacecorsair/mod/ModWreck;->restTest:J

    .line 735
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .line 736
    goto :goto_769

    .line 721
    :cond_7c4
    const-string v2, "ufowreck"

    const-string v3, "no wreck piece"

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74e

    .line 737
    :cond_7cc
    const-string v2, "blastwreck"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pieces="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_7e4
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModDev;->t37Blast:Z

    .line 740
    const-string v2, "corsair_musiclog"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84d

    .line 741
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

    .line 742
    if-eqz v3, :cond_84e

    iget-object v2, v3, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    .line 743
    :goto_7f6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v13, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " playing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_850

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_850

    const/4 v2, 0x1

    :goto_810
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " enabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_852

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicEnabed()Z

    move-result v2

    if-eqz v2, :cond_852

    const/4 v2, 0x1

    :goto_823
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 744
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t37Music:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84d

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Music:Ljava/lang/String;

    const-string v3, "ModSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "music "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_84d
    return-void

    .line 742
    :cond_84e
    const/4 v2, 0x0

    goto :goto_7f6

    .line 743
    :cond_850
    const/4 v2, 0x0

    goto :goto_810

    :cond_852
    const/4 v2, 0x0

    goto :goto_823

    :cond_854
    move-object v2, v3

    goto/16 :goto_68e

    :cond_857
    move-object v2, v3

    goto/16 :goto_e1

    :cond_85a
    move-object v2, v3

    goto/16 :goto_17e
.end method

.method public static testValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 236
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/local/tmp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    .line 247
    :goto_1f
    return-object v1

    .line 238
    :cond_20
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLobby;->switchSeen()V

    .line 239
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2d} :catch_43

    .line 241
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3e

    move-result-object v0

    .line 242
    if-nez v0, :cond_39

    move-object v0, v1

    .line 244
    :goto_34
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_43

    move-object v1, v0

    .line 242
    goto :goto_1f

    :cond_39
    :try_start_39
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3e

    move-result-object v0

    goto :goto_34

    .line 244
    :catchall_3e
    move-exception v0

    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 245
    throw v0
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_43} :catch_43

    .line 246
    :catch_43
    move-exception v0

    goto :goto_1f
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 756
    sget v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    .line 757
    sget v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    if-lez v0, :cond_d

    .line 790
    :cond_c
    :goto_c
    return-void

    .line 758
    :cond_d
    const/16 v0, 0x1770

    sput v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    .line 760
    :try_start_11
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v0, :cond_1c

    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    .line 761
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-object p0, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 762
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->level:I

    .line 763
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const v1, 0x44bb8000    # 1500.0f

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    int-to-float v3, v3

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 764
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->destroyedOnImpact:Z

    .line 765
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->ignoreImactDecalOnTarget:Z

    .line 766
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->mass:F

    .line 767
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 768
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->resolveAlteration()V

    move v1, v2

    move v0, v2

    .line 770
    :goto_50
    const/16 v2, 0xc

    if-ge v1, v2, :cond_62

    .line 771
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x44c80000    # 1600.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    .line 772
    if-eqz v2, :cond_62

    iget-boolean v3, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v3, :cond_af

    .line 777
    :cond_62
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModDev;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 778
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42700000    # 60.0f

    const/high16 v4, 0x44c80000    # 1600.0f

    const/high16 v5, 0x44160000    # 600.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    .line 779
    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, v1, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 780
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 781
    const v2, 0x3eb33333    # 0.35f

    iput v2, v1, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 782
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    if-lez v0, :cond_c

    .line 784
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 785
    const-string v0, "PHASE PULSE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3eb33333    # 0.35f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_c

    .line 787
    :catch_ac
    move-exception v0

    goto/16 :goto_c

    .line 773
    :cond_af
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 774
    add-int/lit8 v0, v0, 0x1

    .line 775
    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_b8} :catch_ac

    if-eqz v2, :cond_62

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_50
.end method
