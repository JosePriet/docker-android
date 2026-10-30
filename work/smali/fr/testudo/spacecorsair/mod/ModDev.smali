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

.field private static t37Dock:Z

.field private static t37Hop:J

.field private static t37KillFlag:Z

.field private static t37Music:Ljava/lang/String;

.field private static t37Near:Ljava/lang/String;


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

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    .line 432
    const/16 v0, 0x1770

    sput v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    .line 433
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

.method public static giftHook(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 167
    if-nez p1, :cond_f

    const-string v0, ""

    .line 168
    :goto_5
    const-string v2, "CORSAIRDEV"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    .line 174
    :goto_e
    return v0

    .line 167
    :cond_f
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

    .line 170
    :cond_24
    :try_start_24
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModDev;->redeem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_32

    :goto_30
    move v0, v1

    .line 174
    goto :goto_e

    .line 171
    :catch_32
    move-exception v0

    goto :goto_30
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
    .line 249
    const-string v0, "corsair_nodialog"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static redeem(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    if-nez p0, :cond_15

    const-string v0, ""

    .line 179
    :goto_6
    const-string v3, "CORSAIRDEV"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "Unknown gift code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_14
    return-object v0

    .line 178
    :cond_15
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

    .line 181
    :cond_2a
    :try_start_2a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 182
    const-string v0, "hullDev"

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 183
    iget-object v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 184
    :goto_3e
    if-eqz v2, :cond_45

    iget-object v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_45
    const-string v0, "corsair_titans"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 187
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

    :goto_75
    if-ge v0, v5, :cond_8f

    aget-object v6, v4, v0

    .line 188
    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    .line 189
    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8a

    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_8d
    move v2, v1

    .line 183
    goto :goto_3e

    .line 192
    :cond_8f
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v5, v4

    move v0, v1

    :goto_93
    if-ge v0, v5, :cond_b6

    aget-object v6, v4, v0

    .line 193
    if-eqz v6, :cond_9d

    iget-boolean v7, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_9b} :catch_113

    if-eqz v7, :cond_a0

    .line 192
    :cond_9d
    :goto_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 195
    :cond_a0
    :try_start_a0
    iget-object v6, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->id:Ljava/lang/String;

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    .line 196
    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9d

    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b3} :catch_b4

    goto :goto_9d

    .line 197
    :catch_b4
    move-exception v6

    goto :goto_9d

    .line 202
    :cond_b6
    :try_start_b6
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModDev;->ITEMS:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_ba
    if-ge v0, v5, :cond_de

    aget-object v1, v4, v0

    .line 203
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    .line 204
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v6, v6, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v6, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v6

    if-gtz v6, :cond_db

    .line 205
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v6, v6, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v6, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 202
    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 208
    :cond_de
    const-string v0, "hullDev"

    iget-object v1, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLock;->onShipChanged()V

    .line 209
    :cond_f1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 210
    const-string v0, "DEV kit unlocked: the DEV Prototype X-0 is in your Ships screen and the DEV Overclock Laser, DEV Phase Shield and DEV Swarm Missile are in your inventory. The X-0 fires a Phase Pulse every 6 seconds."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 212
    if-eqz v2, :cond_10b

    const-string v0, "DEV kit unlocked! Check your Ships screen and inventory."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :cond_10b
    const-string v0, "DEV items restored to your inventory."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_110} :catch_113

    move-result-object v0

    goto/16 :goto_14

    .line 213
    :catch_113
    move-exception v0

    .line 214
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

    goto/16 :goto_14
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

.method public static testFlag(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 238
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
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result v0

    .line 240
    :goto_1c
    return v0

    .line 239
    :catch_1d
    move-exception v0

    .line 240
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static testV30(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 19

    .prologue
    .line 262
    :try_start_0
    const-string v2, "corsair_spawn"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_d5

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Spawn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d5

    .line 264
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Spawn:Ljava/lang/String;

    .line 265
    sget v3, Lfr/testudo/spacecorsair/mod/ModDev;->spawnN:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModDev;->spawnN:I

    .line 266
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 267
    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 268
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

    .line 270
    const/4 v2, 0x0

    aget-object v2, v4, v2

    .line 271
    const-string v6, "albatros"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v2

    .line 277
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

    .line 278
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

    .line 279
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 280
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setIaDisabled()V

    .line 281
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 268
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2d

    :cond_98
    const/4 v2, 0x1

    goto :goto_39

    .line 272
    :cond_9a
    const-string v6, "blatte"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v2

    goto :goto_4a

    .line 273
    :cond_a7
    const-string v6, "frelon"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v2

    goto :goto_4a

    .line 274
    :cond_b4
    const-string v6, "ufo"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c1

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v2

    goto :goto_4a

    .line 275
    :cond_c1
    const-string v6, "defensor"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v2

    goto/16 :goto_4a

    .line 276
    :cond_cf
    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v2

    goto/16 :goto_4a

    .line 285
    :cond_d5
    const-string v2, "corsair_kill"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v4

    .line 286
    if-eqz v4, :cond_122

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Kill:Z

    if-nez v2, :cond_122

    .line 287
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v5, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 288
    const/4 v2, 0x0

    move v3, v2

    :goto_eb
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_122

    .line 289
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 290
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

    .line 291
    const/4 v6, 0x0

    iput-boolean v6, v2, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    .line 292
    iget v6, v2, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v6, v0, v7}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 288
    :cond_11e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_eb

    .line 296
    :cond_122
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModDev;->t30Kill:Z

    .line 298
    const-string v2, "corsair_wreckhit"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 299
    if-eqz v3, :cond_182

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Wreck:Z

    if-nez v2, :cond_182

    .line 300
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

    .line 301
    check-cast v2, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 302
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

    .line 368
    :catch_168
    move-exception v2

    .line 369
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

    .line 371
    :goto_181
    return-void

    .line 305
    :cond_182
    :try_start_182
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Wreck:Z

    .line 307
    const-string v2, "corsair_wreckshot"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v13

    .line 308
    if-eqz v13, :cond_31d

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t33Shot:Z

    if-nez v2, :cond_31d

    .line 309
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 310
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

    .line 311
    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModWreck;

    move-object v11, v0

    .line 312
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

    .line 313
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

    .line 314
    const/4 v2, 0x0

    move v12, v2

    :goto_1e4
    const/4 v2, 0x6

    if-ge v12, v2, :cond_1a0

    .line 315
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v16, v2, v4

    .line 316
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

    .line 317
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 318
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

    .line 319
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

    .line 320
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

    .line 321
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_1e4

    .line 324
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

    .line 335
    :cond_287
    :goto_287
    sput-boolean v13, Lfr/testudo/spacecorsair/mod/ModDev;->t33Shot:Z

    .line 337
    const-string v2, "corsair_shieldpct"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    if-eqz v2, :cond_2d0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Shield:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d0

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v3, :cond_2d0

    .line 339
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Shield:Ljava/lang/String;

    .line 340
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

    .line 341
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

    .line 344
    :cond_2d0
    const-string v2, "corsair_derelict"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    if-eqz v2, :cond_2ef

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Derelict:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2ef

    .line 346
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Derelict:Ljava/lang/String;

    .line 347
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModDerelict;->testPlace(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V

    .line 350
    :cond_2ef
    const-string v2, "corsair_capfight"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 351
    if-eqz v3, :cond_3c8

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Cap:Z

    if-nez v2, :cond_3c8

    .line 352
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

    .line 353
    iget v5, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v6, 0x3e947ae1    # 0.29f

    mul-float/2addr v5, v6

    iput v5, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 354
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    goto :goto_305

    .line 325
    :cond_31d
    if-nez v13, :cond_287

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t33Shot:Z

    if-eqz v2, :cond_287

    .line 326
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

    .line 327
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 328
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 329
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

    .line 330
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

    .line 331
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

    .line 330
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32d

    .line 331
    :cond_3be
    const-string v2, "cut"

    goto :goto_3a5

    .line 333
    :cond_3c1
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto/16 :goto_287

    .line 357
    :cond_3c8
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Cap:Z

    .line 359
    const-string v2, "corsair_die"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 360
    if-eqz v3, :cond_404

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Die:Z

    if-nez v2, :cond_404

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_404

    .line 361
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->invincible:Z

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    const/4 v4, 0x0

    iput v4, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v4, 0x47c35000    # 100000.0f

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    .line 364
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

    .line 366
    :cond_404
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Die:Z

    .line 367
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModDev;->testV37(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_409
    .catch Ljava/lang/Throwable; {:try_start_182 .. :try_end_409} :catch_168

    goto/16 :goto_181

    :cond_40b
    move-object/from16 v2, p0

    .line 364
    goto :goto_3fe
.end method

.method private static testV37(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 384
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v5, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 385
    const-string v0, "corsair_goto"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_87

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_87

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModDev;->t37Hop:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xfa0

    cmp-long v2, v6, v8

    if-lez v2, :cond_87

    .line 387
    invoke-static {v0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    .line 388
    iget-object v2, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    iget-object v6, v5, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModDev;->t37Hop:J

    .line 390
    invoke-static {v0}, Lfr/testudo/spacecorsair/business/world/PathFinder;->getPortalNameToGoTo(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->findPortalByName(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v2

    .line 391
    const-string v6, "ModDev"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "goto "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_171

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " via "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v2, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_77
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-eqz v2, :cond_87

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/world/Portal;->jump()V

    .line 395
    :cond_87
    const-string v0, "corsair_near"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    if-eqz v2, :cond_d8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->t37Near:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d8

    .line 397
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Near:Ljava/lang/String;

    .line 399
    const-string v0, "objective"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_175

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModFaction;->testObjective()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    .line 402
    :goto_a5
    const-string v6, "ModDev"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "near "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_1af

    const-string v2, " ok"

    :goto_ba
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-eqz v0, :cond_d8

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v7, 0x44960000    # 1200.0f

    add-float/2addr v6, v7

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-virtual {v2, v6, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v10}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 405
    :cond_d8
    const-string v0, "corsair_dock"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v2

    .line 406
    if-eqz v2, :cond_10b

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModDev;->t37Dock:Z

    if-nez v0, :cond_10b

    .line 407
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPlace;->nearestStation(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v6

    .line 408
    const-string v7, "ModDev"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dock "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v6, :cond_1b3

    iget-object v0, v6, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    :goto_fb
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz v6, :cond_10b

    invoke-virtual {v6}, Lfr/testudo/spacecorsair/business/world/station/Station;->onPlayerDock()V

    .line 411
    :cond_10b
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37Dock:Z

    .line 412
    const-string v0, "corsair_killflag"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v2

    .line 413
    if-eqz v2, :cond_1b7

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModDev;->t37KillFlag:Z

    if-nez v0, :cond_1b7

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_128
    :goto_128
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 415
    iget-boolean v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v7, :cond_128

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v8, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v7, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v7

    const/high16 v8, 0x457a0000    # 4000.0f

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_128

    .line 416
    const-string v7, "ModDev"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "killflag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v9

    iget-object v9, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v9, v9, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->invincible:Z

    .line 418
    iget v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    invoke-virtual {v0, v7, p0, v1}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_128

    .line 391
    :cond_171
    const-string v0, " no gate"

    goto/16 :goto_77

    .line 400
    :cond_175
    const-string v0, "station"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_189

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModPlace;->farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;

    move-result-object v0

    if-eqz v0, :cond_224

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_a5

    .line 401
    :cond_189
    const-string v0, "flagship"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_224

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->caps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_19b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_224

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v7, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v7, :cond_19b

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    goto/16 :goto_a5

    .line 402
    :cond_1af
    const-string v2, " none"

    goto/16 :goto_ba

    .line 408
    :cond_1b3
    const-string v0, "none"

    goto/16 :goto_fb

    .line 421
    :cond_1b7
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t37KillFlag:Z

    .line 422
    const-string v0, "corsair_musiclog"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 423
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->musicManager:Lfr/testudo/spacecorsair/engine/MusicManager;

    .line 424
    if-eqz v2, :cond_1c9

    iget-object v1, v2, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;

    .line 425
    :cond_1c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " playing="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_220

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_220

    move v0, v3

    :goto_1e3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v2, :cond_222

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/engine/MusicManager;->getMusicEnabed()Z

    move-result v1

    if-eqz v1, :cond_222

    :goto_1f5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModDev;->t37Music:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21f

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->t37Music:Ljava/lang/String;

    const-string v1, "ModSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_21f
    return-void

    :cond_220
    move v0, v4

    .line 425
    goto :goto_1e3

    :cond_222
    move v3, v4

    goto :goto_1f5

    :cond_224
    move-object v0, v1

    goto/16 :goto_a5
.end method

.method public static testValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 221
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

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    .line 231
    :goto_1f
    return-object v1

    .line 223
    :cond_20
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_40

    .line 225
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3b

    move-result-object v0

    .line 226
    if-nez v0, :cond_36

    move-object v0, v1

    .line 228
    :goto_31
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_40

    move-object v1, v0

    .line 226
    goto :goto_1f

    :cond_36
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    move-result-object v0

    goto :goto_31

    .line 228
    :catchall_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 229
    throw v0
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_40} :catch_40

    .line 230
    :catch_40
    move-exception v0

    goto :goto_1f
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 438
    sget v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    .line 439
    sget v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    if-lez v0, :cond_d

    .line 472
    :cond_c
    :goto_c
    return-void

    .line 440
    :cond_d
    const/16 v0, 0x1770

    sput v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    .line 442
    :try_start_11
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v0, :cond_1c

    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    .line 443
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-object p0, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 444
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->level:I

    .line 445
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const v1, 0x44bb8000    # 1500.0f

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    int-to-float v3, v3

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 446
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->destroyedOnImpact:Z

    .line 447
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->ignoreImactDecalOnTarget:Z

    .line 448
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->mass:F

    .line 449
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 450
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->resolveAlteration()V

    move v1, v2

    move v0, v2

    .line 452
    :goto_50
    const/16 v2, 0xc

    if-ge v1, v2, :cond_62

    .line 453
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x44c80000    # 1600.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    .line 454
    if-eqz v2, :cond_62

    iget-boolean v3, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v3, :cond_af

    .line 459
    :cond_62
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModDev;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 460
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42700000    # 60.0f

    const/high16 v4, 0x44c80000    # 1600.0f

    const/high16 v5, 0x44160000    # 600.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    .line 461
    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, v1, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 462
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 463
    const v2, 0x3eb33333    # 0.35f

    iput v2, v1, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 464
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    if-lez v0, :cond_c

    .line 466
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 467
    const-string v0, "PHASE PULSE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3eb33333    # 0.35f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_c

    .line 469
    :catch_ac
    move-exception v0

    goto/16 :goto_c

    .line 455
    :cond_af
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    .line 457
    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_b8} :catch_ac

    if-eqz v2, :cond_62

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_50
.end method
