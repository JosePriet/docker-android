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

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    .line 371
    const/16 v0, 0x1770

    sput v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    .line 372
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
    .line 146
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 147
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 148
    const-string v1, "Gift code"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Gift code"

    .line 150
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Redeem"

    .line 152
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr/testudo/spacecorsair/mod/ModDev$1;

    invoke-direct {v3, v0, p0}, Lfr/testudo/spacecorsair/mod/ModDev$1;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 158
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 160
    return-void
.end method

.method public static desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "devOverclockLaser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 135
    const-string v0, "<b>DEV ONLY</b>. Green test laser: very high damage, near-instant reload, no heat, 5x critical hits."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_12
    return-object v0

    .line 136
    :cond_13
    const-string v1, "devPhaseShield"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 137
    const-string v0, "<b>DEV ONLY</b>. 20,000 capacity, regenerates almost instantly, repairs the hull and halves incoming damage."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 138
    :cond_22
    const-string v1, "devSwarmMissile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 139
    const-string v0, "<b>DEV ONLY</b>. Fire-and-forget heavy missile mod with a huge blast radius and a 0.7 s reload."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 140
    :cond_31
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static giftHook(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 164
    if-nez p1, :cond_f

    const-string v0, ""

    .line 165
    :goto_5
    const-string v2, "CORSAIRDEV"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    .line 171
    :goto_e
    return v0

    .line 164
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

    .line 167
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

    .line 171
    goto :goto_e

    .line 168
    :catch_32
    move-exception v0

    goto :goto_30
.end method

.method public static hidden(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    if-nez p0, :cond_5

    .line 120
    :cond_4
    :goto_4
    return v0

    .line 106
    :cond_5
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hullSecret"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 109
    :try_start_11
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v2

    .line 110
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 111
    if-eqz v2, :cond_32

    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    if-eqz v3, :cond_32

    iget-object v2, v2, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->secret:Ljava/lang/String;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModRep;->rank(Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_34

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    :cond_32
    move v0, v1

    goto :goto_4

    .line 112
    :catch_34
    move-exception v0

    move v0, v1

    .line 113
    goto :goto_4

    .line 116
    :cond_37
    const-string v2, "hullDev"

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    :try_start_43
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4e} :catch_55

    move-result v2

    if-nez v2, :cond_53

    :goto_51
    move v0, v1

    goto :goto_4

    :cond_53
    move v1, v0

    goto :goto_51

    .line 119
    :catch_55
    move-exception v0

    move v0, v1

    .line 120
    goto :goto_4
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
    .line 125
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "devOverclockLaser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "DEV Overclock Laser"

    .line 129
    :goto_e
    return-object v0

    .line 127
    :cond_f
    const-string v1, "devPhaseShield"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "DEV Phase Shield"

    goto :goto_e

    .line 128
    :cond_1a
    const-string v1, "devSwarmMissile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "DEV Swarm Missile"

    goto :goto_e

    .line 129
    :cond_25
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static noDialog(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 246
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

    .line 175
    if-nez p0, :cond_15

    const-string v0, ""

    .line 176
    :goto_6
    const-string v3, "CORSAIRDEV"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "Unknown gift code."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_14
    return-object v0

    .line 175
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

    .line 178
    :cond_2a
    :try_start_2a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 179
    const-string v0, "hullDev"

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 180
    iget-object v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 181
    :goto_3e
    if-eqz v2, :cond_45

    iget-object v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_45
    const-string v0, "corsair_titans"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 184
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

    .line 185
    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    .line 186
    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8a

    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_8d
    move v2, v1

    .line 180
    goto :goto_3e

    .line 189
    :cond_8f
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v5, v4

    move v0, v1

    :goto_93
    if-ge v0, v5, :cond_b6

    aget-object v6, v4, v0

    .line 190
    if-eqz v6, :cond_9d

    iget-boolean v7, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_9b} :catch_113

    if-eqz v7, :cond_a0

    .line 189
    :cond_9d
    :goto_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 192
    :cond_a0
    :try_start_a0
    iget-object v6, v6, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->id:Ljava/lang/String;

    invoke-static {v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v6

    .line 193
    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9d

    iget-object v7, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b3} :catch_b4

    goto :goto_9d

    .line 194
    :catch_b4
    move-exception v6

    goto :goto_9d

    .line 199
    :cond_b6
    :try_start_b6
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModDev;->ITEMS:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_ba
    if-ge v0, v5, :cond_de

    aget-object v1, v4, v0

    .line 200
    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    .line 201
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v6, v6, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v6, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->getQuantityOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v6

    if-gtz v6, :cond_db

    .line 202
    sget-object v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v6, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v6, v6, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v6, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->forceAddObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)V

    .line 199
    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 205
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

    .line 206
    :cond_f1
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->storageManager:Lfr/testudo/spacecorsair/storage/StorageManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/storage/StorageManager;->save()V

    .line 207
    const-string v0, "DEV kit unlocked: the DEV Prototype X-0 is in your Ships screen and the DEV Overclock Laser, DEV Phase Shield and DEV Swarm Missile are in your inventory. The X-0 fires a Phase Pulse every 6 seconds."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 209
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

    .line 210
    :catch_113
    move-exception v0

    .line 211
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
    .line 235
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

    .line 237
    :goto_1c
    return v0

    .line 236
    :catch_1d
    move-exception v0

    .line 237
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static testV30(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 19

    .prologue
    .line 259
    :try_start_0
    const-string v2, "corsair_spawn"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_d5

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Spawn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d5

    .line 261
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Spawn:Ljava/lang/String;

    .line 262
    sget v3, Lfr/testudo/spacecorsair/mod/ModDev;->spawnN:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModDev;->spawnN:I

    .line 263
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 264
    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 265
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

    .line 267
    const/4 v2, 0x0

    aget-object v2, v4, v2

    .line 268
    const-string v6, "albatros"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlbatros(I)Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    move-result-object v2

    .line 274
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

    .line 275
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

    .line 276
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 277
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setIaDisabled()V

    .line 278
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 265
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2d

    :cond_98
    const/4 v2, 0x1

    goto :goto_39

    .line 269
    :cond_9a
    const-string v6, "blatte"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienBlatte(I)Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    move-result-object v2

    goto :goto_4a

    .line 270
    :cond_a7
    const-string v6, "frelon"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newFrelon(I)Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-result-object v2

    goto :goto_4a

    .line 271
    :cond_b4
    const-string v6, "ufo"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c1

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newUfo(I)Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    move-result-object v2

    goto :goto_4a

    .line 272
    :cond_c1
    const-string v6, "defensor"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newDefensor(I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-result-object v2

    goto/16 :goto_4a

    .line 273
    :cond_cf
    invoke-static {v5}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisFactory;->newAlienRat(I)Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    move-result-object v2

    goto/16 :goto_4a

    .line 282
    :cond_d5
    const-string v2, "corsair_kill"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v4

    .line 283
    if-eqz v4, :cond_122

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Kill:Z

    if-nez v2, :cond_122

    .line 284
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v5, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 285
    const/4 v2, 0x0

    move v3, v2

    :goto_eb
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_122

    .line 286
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 287
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

    .line 288
    const/4 v6, 0x0

    iput-boolean v6, v2, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    .line 289
    iget v6, v2, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v6, v0, v7}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 285
    :cond_11e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_eb

    .line 293
    :cond_122
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModDev;->t30Kill:Z

    .line 295
    const-string v2, "corsair_wreckhit"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 296
    if-eqz v3, :cond_182

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Wreck:Z

    if-nez v2, :cond_182

    .line 297
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

    .line 298
    check-cast v2, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 299
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

    .line 364
    :catch_168
    move-exception v2

    .line 365
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

    .line 367
    :goto_181
    return-void

    .line 302
    :cond_182
    :try_start_182
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Wreck:Z

    .line 304
    const-string v2, "corsair_wreckshot"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v13

    .line 305
    if-eqz v13, :cond_31d

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t33Shot:Z

    if-nez v2, :cond_31d

    .line 306
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 307
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

    .line 308
    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModWreck;

    move-object v11, v0

    .line 309
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

    .line 310
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

    .line 311
    const/4 v2, 0x0

    move v12, v2

    :goto_1e4
    const/4 v2, 0x6

    if-ge v12, v2, :cond_1a0

    .line 312
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v16, v2, v4

    .line 313
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

    .line 314
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 315
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

    .line 316
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

    .line 317
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

    .line 318
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_1e4

    .line 321
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

    .line 332
    :cond_287
    :goto_287
    sput-boolean v13, Lfr/testudo/spacecorsair/mod/ModDev;->t33Shot:Z

    .line 334
    const-string v2, "corsair_shieldpct"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_2d0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Shield:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d0

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v3, :cond_2d0

    .line 336
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Shield:Ljava/lang/String;

    .line 337
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

    .line 338
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

    .line 341
    :cond_2d0
    const-string v2, "corsair_derelict"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    if-eqz v2, :cond_2ef

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Derelict:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2ef

    .line 343
    sput-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Derelict:Ljava/lang/String;

    .line 344
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModDerelict;->testPlace(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V

    .line 347
    :cond_2ef
    const-string v2, "corsair_capfight"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 348
    if-eqz v3, :cond_3c8

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Cap:Z

    if-nez v2, :cond_3c8

    .line 349
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

    .line 350
    iget v5, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v6, 0x3e947ae1    # 0.29f

    mul-float/2addr v5, v6

    iput v5, v2, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    .line 351
    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->attackPlayerIfItNotTheCaseAlready()V

    goto :goto_305

    .line 322
    :cond_31d
    if-nez v13, :cond_287

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t33Shot:Z

    if-eqz v2, :cond_287

    .line 323
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

    .line 324
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/mod/ModWreck;

    .line 325
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 326
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

    .line 327
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

    .line 328
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

    .line 327
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32d

    .line 328
    :cond_3be
    const-string v2, "cut"

    goto :goto_3a5

    .line 330
    :cond_3c1
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->shotFrom:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto/16 :goto_287

    .line 354
    :cond_3c8
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Cap:Z

    .line 356
    const-string v2, "corsair_die"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v3

    .line 357
    if-eqz v3, :cond_404

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModDev;->t30Die:Z

    if-nez v2, :cond_404

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v2, :cond_404

    .line 358
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->invincible:Z

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    const/4 v4, 0x0

    iput v4, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v4, 0x47c35000    # 100000.0f

    invoke-static {v2, v4}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    .line 361
    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    add-float/2addr v4, v5

    if-eqz v2, :cond_408

    :goto_3fe
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 363
    :cond_404
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModDev;->t30Die:Z
    :try_end_406
    .catch Ljava/lang/Throwable; {:try_start_182 .. :try_end_406} :catch_168

    goto/16 :goto_181

    :cond_408
    move-object/from16 v2, p0

    .line 361
    goto :goto_3fe
.end method

.method public static testValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 218
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

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    .line 228
    :goto_1f
    return-object v1

    .line 220
    :cond_20
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_40

    .line 222
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3b

    move-result-object v0

    .line 223
    if-nez v0, :cond_36

    move-object v0, v1

    .line 225
    :goto_31
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_40

    move-object v1, v0

    .line 223
    goto :goto_1f

    :cond_36
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    move-result-object v0

    goto :goto_31

    .line 225
    :catchall_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 226
    throw v0
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_40} :catch_40

    .line 227
    :catch_40
    move-exception v0

    goto :goto_1f
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 377
    sget v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    .line 378
    sget v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    if-lez v0, :cond_d

    .line 411
    :cond_c
    :goto_c
    return-void

    .line 379
    :cond_d
    const/16 v0, 0x1770

    sput v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulseTimer:I

    .line 381
    :try_start_11
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v0, :cond_1c

    new-instance v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    .line 382
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iput-object p0, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 383
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->level:I

    .line 384
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const v1, 0x44bb8000    # 1500.0f

    iget v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    int-to-float v3, v3

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 385
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->destroyedOnImpact:Z

    .line 386
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->ignoreImactDecalOnTarget:Z

    .line 387
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->mass:F

    .line 388
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 389
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->resolveAlteration()V

    move v1, v2

    move v0, v2

    .line 391
    :goto_50
    const/16 v2, 0xc

    if-ge v1, v2, :cond_62

    .line 392
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x44c80000    # 1600.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->findEnemy(Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v2

    .line 393
    if-eqz v2, :cond_62

    iget-boolean v3, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v3, :cond_af

    .line 398
    :cond_62
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModDev;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 399
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModDev;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42700000    # 60.0f

    const/high16 v4, 0x44c80000    # 1600.0f

    const/high16 v5, 0x44160000    # 600.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v1

    .line 400
    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, v1, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 401
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 402
    const v2, 0x3eb33333    # 0.35f

    iput v2, v1, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 403
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    if-lez v0, :cond_c

    .line 405
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playShockWave()V

    .line 406
    const-string v0, "PHASE PULSE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3eb33333    # 0.35f

    invoke-static {p0, v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_c

    .line 408
    :catch_ac
    move-exception v0

    goto/16 :goto_c

    .line 394
    :cond_af
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModDev;->pulse:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    .line 396
    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_b8} :catch_ac

    if-eqz v2, :cond_62

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_50
.end method
