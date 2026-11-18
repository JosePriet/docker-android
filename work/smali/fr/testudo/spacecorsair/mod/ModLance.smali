.class public final Lfr/testudo/spacecorsair/mod/ModLance;
.super Ljava/lang/Object;
.source "ModLance.java"


# static fields
.field public static final BASE:Ljava/lang/String; = "modPhoenixLance"

.field static final BOSS_CHANCE:F = 1.0f

.field static final BURN_FRAC:F = 0.25f

.field static final BURN_MS:J = 0xbb8L

.field static final COOL_MS:J = 0xbb8L

.field static final DPS:[F

.field static final ELITE_CHANCE:F = 0.25f

.field static final ENEMY_BURN:F = 0.3f

.field static final ENEMY_RAMP:F = 1.0f

.field static final HEAT_MS:J = 0x2328L

.field static final HULL_RAMP:F = 1.0f

.field static final LAVA:[F

.field static final LEVEL:[I

.field static final MK:[Ljava/lang/String;

.field static final PRICE:[I

.field static final P_PROMPT:Ljava/lang/String; = "lance_prompted"

.field static final P_UNLOCK:Ljava/lang/String; = "lance_unlocked"

.field static final RAMP_GAP_MS:J = 0x258L

.field static final RAMP_MS:J = 0xfa0L

.field static final RANGE_F:F = 0.9f

.field static final RELOAD_MS:I = 0x50

.field static final SPECS:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

.field static final SPEED:F = -30.0f

.field static final SWEEP:F = 0.5f

.field static final TAG:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

.field static final TYPES:[Ljava/lang/String;

.field private static blob:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static burnDps:F

.field private static burnNext:J

.field private static burnTarget:Lfr/testudo/spacecorsair/business/Element;

.field private static burnUntil:J

.field private static coolUntil:J

.field private static final d:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final eBolts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;",
            ">;"
        }
    .end annotation
.end field

.field private static eBurnDps:F

.field private static eBurnFrom:Lfr/testudo/spacecorsair/business/Element;

.field private static eBurnNext:J

.field private static eBurnUntil:J

.field private static eRampFrom:Lfr/testudo/spacecorsair/business/Element;

.field private static eRampLast:J

.field private static eRampSince:J

.field private static final eSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static fireMs:J

.field private static heat:F

.field private static final hit:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final holder:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static lastHit:J

.field private static lastShot:J

.field private static final live:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static promptAfter:J

.field private static rampLast:J

.field private static rampSince:J

.field private static rampTarget:Lfr/testudo/spacecorsair/business/Element;

.field private static final slowed:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/player/PlayerCanon;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final stockedAt:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/world/station/Station;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static testGiven:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/high16 v10, 0x447a0000    # 1000.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x3

    .line 43
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "modPhoenixLance"

    aput-object v2, v0, v1

    const-string v2, "modPhoenixLanceMk2"

    aput-object v2, v0, v8

    const-string v2, "modPhoenixLanceMk3"

    aput-object v2, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->TYPES:[Ljava/lang/String;

    .line 44
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "Mk I"

    aput-object v2, v0, v1

    const-string v2, "Mk II"

    aput-object v2, v0, v8

    const-string v2, "Mk III"

    aput-object v2, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->MK:[Ljava/lang/String;

    .line 46
    new-array v0, v7, [I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_REQ:[I

    aget v2, v2, v9

    aput v2, v0, v1

    const/16 v2, 0x1e

    aput v2, v0, v8

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_REQ:[I

    aget v2, v2, v7

    aput v2, v0, v9

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->LEVEL:[I

    .line 48
    new-array v0, v7, [I

    fill-array-data v0, :array_102

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->PRICE:[I

    .line 51
    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->DPS:[F

    .line 59
    new-array v0, v7, [F

    fill-array-data v0, :array_10c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->LAVA:[F

    .line 62
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->TAG:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 63
    new-array v0, v7, [Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->SPECS:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModWeapons;->STAT:[[F

    aget-object v2, v0, v7

    move v0, v1

    .line 67
    :goto_5c
    if-ge v0, v7, :cond_c2

    .line 68
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLance;->DPS:[F

    const/high16 v4, 0x40400000    # 3.0f

    aget v5, v2, v1

    mul-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_MULT:[F

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    mul-float/2addr v4, v10

    aget v5, v2, v8

    div-float/2addr v4, v5

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float/2addr v4, v5

    aput v4, v3, v0

    .line 69
    new-instance v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;-><init>()V

    .line 70
    sget-object v4, Lfr/testudo/spacecorsair/business/loot/LootRarety;->LEGENDARY:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    iput-object v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->rarety:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    .line 71
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->LEVEL:[I

    aget v4, v4, v0

    iput v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->level:I

    .line 72
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->DPS:[F

    aget v4, v4, v0

    const/high16 v5, 0x42a00000    # 80.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->damage:I

    .line 73
    const/16 v4, 0x50

    iput v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->reload:I

    .line 74
    const/16 v4, 0x64

    iput v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->precision:I

    .line 75
    const/high16 v4, -0x3e100000    # -30.0f

    iput v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->bulletSpeed:F

    .line 76
    const/4 v4, 0x5

    iput v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->heatBySec:I

    .line 77
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->LAVA:[F

    aget v4, v4, v1

    iput v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->r:F

    .line 78
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->LAVA:[F

    aget v4, v4, v8

    iput v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->g:F

    .line 79
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->LAVA:[F

    aget v4, v4, v9

    iput v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->b:F

    .line 80
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->TAG:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v4, v3, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 81
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->SPECS:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aput-object v3, v4, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 197
    :cond_c2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->stockedAt:Ljava/util/WeakHashMap;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->live:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->hit:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 265
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->slowed:Ljava/util/WeakHashMap;

    .line 376
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->d:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 427
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->holder:Ljava/util/WeakHashMap;

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eSenders:Ljava/util/ArrayList;

    return-void

    .line 48
    :array_102
    .array-data 4
        0x5b8d8
        0xd59f8
        0x1e8480
    .end array-data

    .line 59
    :array_10c
    .array-data 4
        0x3f800000    # 1.0f
        0x3ed70a3d    # 0.42f
        0x3da3d70a    # 0.08f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowShot(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/Object;)Z
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModLance;->isLance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eq v0, p0, :cond_11

    :cond_f
    move v0, v2

    .line 286
    :goto_10
    return v0

    .line 275
    :cond_11
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLance;->mounted(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_10

    .line 276
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 277
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLance;->coolUntil:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_25

    move v0, v1

    goto :goto_10

    .line 278
    :cond_25
    check-cast p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 279
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->LAVA:[F

    aget v0, v0, v1

    iput v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->LAVA:[F

    aget v0, v0, v2

    iput v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->LAVA:[F

    const/4 v3, 0x2

    aget v0, v0, v3

    iput v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->a:F

    .line 280
    iget-wide v6, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    long-to-float v0, v6

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v0, v3

    float-to-long v6, v0

    iput-wide v6, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 281
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLance;->lastShot:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x190

    cmp-long v0, v6, v8

    if-lez v0, :cond_56

    const-wide/16 v6, 0x0

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModLance;->fireMs:J

    .line 282
    :cond_56
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->lastShot:J

    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->live:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->live:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x28

    if-le v0, v3, :cond_6c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->live:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 285
    :cond_6c
    const-string v0, "wpn_disint"

    const v1, 0x3f0ccccd    # 0.55f

    const v3, 0x3f1eb852    # 0.62f

    const v4, 0x3f7851ec    # 0.97f

    const v5, 0x3f83d70a    # 1.03f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x6e

    invoke-static {v0, v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    move v0, v2

    .line 286
    goto :goto_10
.end method

.method private static beam(FFFFFFFJ)V
    .registers 30

    .prologue
    .line 407
    const v2, 0x3f6b851f    # 0.92f

    const v3, 0x3da3d70a    # 0.08f

    move-wide/from16 v0, p7

    long-to-double v4, v0

    const-wide v6, 0x4056800000000000L    # 90.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v13, v2, v3

    .line 408
    const-string v2, "fx_beam"

    const v3, 0x4019999a    # 2.4f

    mul-float v7, p4, v3

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3e800000    # 0.25f

    const v10, 0x3d4ccccd    # 0.05f

    const v3, 0x3ee66666    # 0.45f

    mul-float v11, v3, p5

    const/4 v12, 0x1

    move/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 409
    const-string v2, "fx_lance"

    mul-float v7, p4, v13

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3ed70a3d    # 0.42f

    const v10, 0x3da3d70a    # 0.08f

    const v3, 0x3f59999a    # 0.85f

    mul-float v11, v3, p5

    const/4 v12, 0x1

    move/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 410
    const-string v2, "fx_lance"

    const v3, 0x3eb33333    # 0.35f

    mul-float v3, v3, p4

    mul-float v7, v3, v13

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f733333    # 0.95f

    const v10, 0x3f333333    # 0.7f

    const v3, 0x3f733333    # 0.95f

    mul-float v11, v3, p5

    const/4 v12, 0x1

    move/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 411
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpg-double v2, v2, v4

    if-gez v2, :cond_130

    .line 412
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    .line 413
    sub-float v3, p2, p0

    sub-float v4, p3, p1

    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 414
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_130

    .line 415
    div-float v16, v3, v5

    div-float v17, v4, v5

    .line 416
    mul-float/2addr v3, v2

    add-float v18, p0, v3

    mul-float/2addr v2, v4

    add-float v19, p1, v2

    .line 417
    const-string v2, "fx_smoke"

    move/from16 v0, p4

    neg-float v3, v0

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    const v4, 0x3e99999a    # 0.3f

    mul-float v4, v4, p4

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    add-float v3, v3, v18

    move/from16 v0, p4

    neg-float v4, v0

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    const v5, 0x3e99999a    # 0.3f

    mul-float v5, v5, p4

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    add-float v4, v4, v19

    const/high16 v5, 0x43960000    # 300.0f

    mul-float v5, v5, v16

    const/high16 v6, 0x43960000    # 300.0f

    mul-float v6, v6, v17

    const/high16 v7, 0x43af0000    # 350.0f

    const v8, 0x3e99999a    # 0.3f

    mul-float v8, v8, p4

    const v9, 0x3e4ccccd    # 0.2f

    mul-float v9, v9, p4

    const/high16 v10, 0x3e800000    # 0.25f

    const v11, 0x3da3d70a    # 0.08f

    const v12, 0x3ca3d70a    # 0.02f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 418
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_130

    const-string v2, "fx_glow"

    mul-float v3, v17, p4

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    sub-float v3, v18, v3

    mul-float v4, v16, p4

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v5

    add-float v4, v4, v19

    move/from16 v0, v17

    neg-float v5, v0

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x42700000    # 60.0f

    mul-float v6, v6, v16

    const/high16 v7, 0x43fa0000    # 500.0f

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v8, v8, p4

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3dcccccd    # 0.1f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 421
    :cond_130
    return-void
.end method

.method static bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x42080000    # 34.0f

    .line 370
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLance;->isLance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 373
    :cond_9
    :goto_9
    return-object v0

    .line 371
    :cond_a
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->blob:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-nez v1, :cond_17

    const-string v1, "fx_glow"

    const/4 v2, 0x1

    invoke-static {v1, v3, v3, v2}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->blob:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 372
    :cond_17
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->blob:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v1, :cond_24

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->blob:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const-string v2, "fx_glow"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFx;->rebind(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;)V

    .line 373
    :cond_24
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->blob:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v1, :cond_9

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->blob:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    goto :goto_9
.end method

.method public static desc(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 113
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLance;->tierOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    .line 114
    if-gez v0, :cond_8

    const/4 v0, 0x0

    .line 115
    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>Phoenix Lance</b>: a held stream of molten plasma that only the Monolith\'s phoenix form (form V) can mount. It replaces every turret with a single front turret."

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br><br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Damage per second: "

    .line 116
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->DPS:[F

    aget v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Shields take flat damage; on the hull the damage climbs to +100% after 4 s on one target."

    .line 117
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "The target keeps burning for 3 s after the beam leaves it."

    .line 118
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "9 s of fire overheats it: 3 s to vent."

    .line 119
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br><br><font color=\'#6ad0ff\'><b>Sold at:</b> "

    .line 120
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Laser shop (Spartan HQ), after the Spartan honour mission"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 24

    .prologue
    .line 381
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 382
    invoke-static {v10, v11}, Lfr/testudo/spacecorsair/mod/ModLance;->enemyDraw(J)V

    .line 383
    if-eqz p0, :cond_26

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLance;->mounted(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->lastShot:J

    sub-long v2, v10, v2

    const-wide/16 v4, 0xa0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v2, v2

    if-nez v2, :cond_27

    .line 404
    :cond_26
    :goto_26
    return-void

    .line 384
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iget-object v5, v2, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v2, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 386
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    sub-float v2, v3, v2

    .line 387
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLance;->d:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 388
    const/4 v3, 0x0

    .line 389
    const/4 v2, 0x0

    move v4, v2

    :goto_5f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->live:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_7f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->live:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5f

    .line 390
    :cond_7f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->d:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v4, v3

    add-float v5, v2, v4

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->d:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v4, v3

    add-float v6, v2, v4

    .line 391
    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModLance;->lastHit:J

    sub-long v8, v10, v8

    const-wide/16 v12, 0xc8

    cmp-long v2, v8, v12

    if-gez v2, :cond_178

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->hit:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    const/high16 v4, 0x43480000    # 200.0f

    add-float/2addr v4, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_178

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->hit:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->hit:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->hit:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 392
    :goto_be
    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_26

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v9, v2

    .line 394
    const/high16 v2, 0x41d00000    # 26.0f

    const v3, 0x3d8f5c29    # 0.07f

    mul-float/2addr v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    double-to-float v7, v12

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    mul-float v7, v2, v3

    .line 395
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v11}, Lfr/testudo/spacecorsair/mod/ModLance;->beam(FFFFFFFJ)V

    .line 396
    const-string v12, "fx_core"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v13, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->m:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v14, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v2, 0x40266666    # 2.6f

    mul-float v15, v7, v2

    const v2, 0x40266666    # 2.6f

    mul-float v16, v7, v2

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3f0ccccd    # 0.55f

    const v20, 0x3e19999a    # 0.15f

    const v21, 0x3f666666    # 0.9f

    const/16 v22, 0x1

    invoke-static/range {v12 .. v22}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 397
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->lastHit:J

    sub-long v2, v10, v2

    const-wide/16 v8, 0xc8

    cmp-long v2, v2, v8

    if-gez v2, :cond_26

    .line 398
    const-string v4, "fx_glow"

    const v2, 0x404ccccd    # 3.2f

    mul-float/2addr v2, v7

    const v3, 0x404ccccd    # 3.2f

    mul-float v8, v7, v3

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3ee66666    # 0.45f

    const v12, 0x3dcccccd    # 0.1f

    const v13, 0x3f59999a    # 0.85f

    const/4 v14, 0x1

    move v7, v2

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 399
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v8, 0x3fe3333333333333L    # 0.6

    cmpg-double v2, v2, v8

    if-gez v2, :cond_26

    const-string v4, "fx_spark"

    const/high16 v2, -0x3cb80000    # -200.0f

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    const/high16 v2, -0x3cb80000    # -200.0f

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v8

    const/high16 v9, 0x437a0000    # 250.0f

    const/high16 v10, 0x41600000    # 14.0f

    const/high16 v11, 0x40c00000    # 6.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f333333    # 0.7f

    const v14, 0x3e99999a    # 0.3f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v4 .. v17}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V
    :try_end_173
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_173} :catch_175

    goto/16 :goto_26

    .line 401
    :catch_175
    move-exception v2

    goto/16 :goto_26

    :cond_178
    move v2, v3

    goto/16 :goto_be
.end method

.method private static enemyDraw(J)V
    .registers 16

    .prologue
    const/4 v11, 0x0

    .line 508
    .line 509
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v12, v0

    move v10, v11

    :goto_b
    if-ltz v12, :cond_76

    const/4 v0, 0x6

    if-ge v10, v0, :cond_76

    .line 510
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 511
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->eSenders:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 512
    if-eqz v2, :cond_79

    iget-boolean v1, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_79

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->removed:Z

    if-eqz v1, :cond_31

    move v0, v10

    .line 509
    :goto_2c
    add-int/lit8 v1, v12, -0x1

    move v12, v1

    move v10, v0

    goto :goto_b

    .line 513
    :cond_31
    const/4 v3, 0x1

    .line 514
    add-int/lit8 v1, v12, 0x1

    :goto_34
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_77

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->eSenders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_49

    move v1, v11

    .line 515
    :goto_45
    if-nez v1, :cond_4c

    move v0, v10

    goto :goto_2c

    .line 514
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 516
    :cond_4c
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWreck;->sizeClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_73

    const/high16 v5, 0x42080000    # 34.0f

    .line 517
    :goto_55
    iget-object v1, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v7, v5, v0

    move-wide v8, p0

    invoke-static/range {v1 .. v9}, Lfr/testudo/spacecorsair/mod/ModLance;->beam(FFFFFFFJ)V

    .line 518
    add-int/lit8 v0, v10, 0x1

    goto :goto_2c

    .line 516
    :cond_73
    const/high16 v5, 0x41c00000    # 24.0f

    goto :goto_55

    .line 520
    :cond_76
    return-void

    :cond_77
    move v1, v3

    goto :goto_45

    :cond_79
    move v0, v10

    goto :goto_2c
.end method

.method private static enemyHit(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 18

    .prologue
    .line 482
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_9c

    iget-object v0, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9c

    const/4 v0, 0x1

    .line 483
    :goto_e
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->eRampFrom:Lfr/testudo/spacecorsair/business/Element;

    if-ne v1, v2, :cond_1e

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->eRampLast:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-lez v1, :cond_24

    :cond_1e
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->eRampFrom:Lfr/testudo/spacecorsair/business/Element;

    sput-wide p2, Lfr/testudo/spacecorsair/mod/ModLance;->eRampSince:J

    .line 484
    :cond_24
    sput-wide p2, Lfr/testudo/spacecorsair/mod/ModLance;->eRampLast:J

    .line 485
    if-eqz v0, :cond_2a

    sput-wide p2, Lfr/testudo/spacecorsair/mod/ModLance;->eRampSince:J

    .line 486
    :cond_2a
    const/high16 v0, 0x3f800000    # 1.0f

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->eRampSince:J

    sub-long v2, p2, v2

    long-to-float v1, v2

    const/high16 v2, 0x457a0000    # 4000.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 487
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 488
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnUntil:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_9f

    sget v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnDps:F

    :goto_4b
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    const v2, 0x453b8000    # 3000.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnDps:F

    .line 489
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnFrom:Lfr/testudo/spacecorsair/business/Element;

    .line 490
    const-wide/16 v0, 0xbb8

    add-long v0, v0, p2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnUntil:J

    .line 491
    const-string v0, "fx_fire"

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, -0x3e100000    # -30.0f

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, -0x3e100000    # -30.0f

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43af0000    # 350.0f

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const v10, 0x3df5c28f    # 0.12f

    const v11, 0x3f59999a    # 0.85f

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 492
    return-void

    .line 482
    :cond_9c
    const/4 v0, 0x0

    goto/16 :goto_e

    .line 488
    :cond_9f
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method static enemyShot(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 465
    if-eqz p0, :cond_16

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLance;->isLance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    instance-of v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-nez v1, :cond_17

    instance-of v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    if-nez v1, :cond_17

    instance-of v1, p0, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;

    if-nez v1, :cond_17

    .line 478
    :cond_16
    :goto_16
    return-object v0

    .line 466
    :cond_17
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLance;->holder(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 467
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    const/4 v2, 0x6

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLance;->LAVA:[F

    aget v5, v5, v9

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLance;->LAVA:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModLance;->LAVA:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModLance;->TAG:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 468
    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v0

    .line 469
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 470
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 471
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 472
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->level:I

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 473
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    iput-wide v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 474
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->eSenders:Ljava/util/ArrayList;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x18

    if-le v1, v2, :cond_78

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->eSenders:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 477
    :cond_78
    const-string v1, "wpn_disint"

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f0ccccd    # 0.55f

    const-wide/16 v4, 0x8c

    invoke-static {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto :goto_16
.end method

.method private static enemyTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 18

    .prologue
    .line 495
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_3d

    .line 496
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 497
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->removed:Z

    if-nez v2, :cond_2f

    iget-wide v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2f

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLance;->eSenders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2f

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->TAG:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    if-eq v0, v2, :cond_39

    :cond_2f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 495
    :cond_39
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 499
    :cond_3d
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnUntil:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_96

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnNext:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_96

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_96

    .line 500
    const-wide/16 v0, 0xfa

    add-long v0, v0, p1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnNext:J

    .line 501
    sget v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnDps:F

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, v0

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnFrom:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_97

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnFrom:Lfr/testudo/spacecorsair/business/Element;

    :goto_5e
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 502
    const-string v0, "fx_fire"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, -0x3e100000    # -30.0f

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, -0x3e100000    # -30.0f

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43c80000    # 400.0f

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v7, 0x428c0000    # 70.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3ee66666    # 0.45f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3f333333    # 0.7f

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 504
    :cond_96
    return-void

    :cond_97
    move-object v0, p0

    .line 501
    goto :goto_5e
.end method

.method static equipBlock(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLance;->tierOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    if-gez v1, :cond_8

    .line 182
    :cond_7
    :goto_7
    return-object v0

    .line 177
    :cond_8
    :try_start_8
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_7

    .line 178
    :cond_21
    const-string v1, "Phoenix Lance: only the Monolith\'s phoenix form (form V) can mount it."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_7

    .line 179
    :catch_28
    move-exception v1

    goto :goto_7
.end method

.method static forceHolder(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 460
    if-eqz p0, :cond_9

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->holder:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_9
    return-void
.end method

.method static holder(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 437
    if-eqz p0, :cond_8

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_9

    .line 455
    :cond_8
    :goto_8
    return v2

    .line 438
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->holder:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 439
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_8

    .line 443
    :cond_18
    :try_start_18
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_28

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/station/Station;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_26} :catch_b3

    if-eqz v0, :cond_74

    :cond_28
    move v0, v2

    :goto_29
    move v2, v0

    .line 451
    :goto_2a
    if-eqz v1, :cond_8

    .line 452
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->holder:Ljava/util/WeakHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    if-eqz v2, :cond_8

    const-string v0, "lance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enemy holder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " police="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " boss="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 444
    :cond_74
    :try_start_74
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_81

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->rank(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8f

    :cond_81
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_8d

    move v0, v1

    goto :goto_29

    :cond_8d
    move v0, v2

    goto :goto_29

    .line 445
    :cond_8f
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPoliceMonolith(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    move v0, v2

    goto :goto_29

    .line 446
    :cond_9b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->rank(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    if-ne v0, v1, :cond_af

    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_a4} :catch_b3

    move-result-wide v4

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpg-double v0, v4, v6

    if-gez v0, :cond_ac

    move v2, v1

    :cond_ac
    move v0, v2

    goto/16 :goto_29

    :cond_af
    move v1, v2

    move v0, v2

    .line 447
    goto/16 :goto_29

    .line 448
    :catch_b3
    move-exception v0

    goto/16 :goto_2a
.end method

.method static isLance(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 98
    if-nez p0, :cond_5

    .line 99
    :cond_4
    :goto_4
    return v0

    :cond_5
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLance;->TAG:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    if-eq v2, v3, :cond_1e

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->SPECS:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v2, v2, v0

    if-eq p0, v2, :cond_1e

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->SPECS:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v2, v2, v1

    if-eq p0, v2, :cond_1e

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->SPECS:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-ne p0, v2, :cond_4

    :cond_1e
    move v0, v1

    goto :goto_4
.end method

.method static isLance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 103
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-eqz v0, :cond_e

    check-cast p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->TAG:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static label(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 108
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLance;->tierOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    .line 109
    if-gez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phoenix Lance"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->MK:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method static monolith()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    .registers 1

    .prologue
    .line 138
    :try_start_0
    const-string v0, "hullMonolith"

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 140
    :goto_6
    return-object v0

    .line 139
    :catch_7
    move-exception v0

    .line 140
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static monolithImage()Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 166
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->monolith()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_13

    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v2, :cond_13

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->spec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->image:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$Image;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_14

    .line 169
    :cond_13
    :goto_13
    return-object v0

    .line 168
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method static mounted(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 188
    if-eqz p0, :cond_b

    :try_start_3
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLance;->isLance(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 192
    :cond_b
    :goto_b
    return v0

    .line 189
    :cond_c
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_b

    const-string v2, "monolith"

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_29} :catch_2f

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    .line 191
    :catch_2f
    move-exception v1

    goto :goto_b
.end method

.method static offerOpen()Z
    .registers 1

    .prologue
    .line 152
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-nez v0, :cond_10

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->phoenixReached()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->unlocked()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static onImpact(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 16

    .prologue
    .line 340
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLance;->isLance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 363
    :goto_9
    return v0

    .line 342
    :cond_a
    :try_start_a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 344
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v1, v0, :cond_b1

    .line 345
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldUp(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    .line 346
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->rampTarget:Lfr/testudo/spacecorsair/business/Element;

    if-ne p1, v4, :cond_28

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->rampLast:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x258

    cmp-long v4, v4, v6

    if-lez v4, :cond_2c

    :cond_28
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModLance;->rampTarget:Lfr/testudo/spacecorsair/business/Element;

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->rampSince:J

    .line 347
    :cond_2c
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->rampLast:J

    .line 348
    if-eqz v1, :cond_32

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->rampSince:J

    .line 349
    :cond_32
    const/high16 v1, 0x3f800000    # 1.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->rampSince:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    const/high16 v5, 0x457a0000    # 4000.0f

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 350
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    mul-float/2addr v1, v4

    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 351
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->lastHit:J

    .line 352
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->hit:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 353
    sput-object p1, Lfr/testudo/spacecorsair/mod/ModLance;->burnTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 354
    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->burnUntil:J

    .line 355
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->DPS:[F

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLance;->tier(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v0

    aget v0, v1, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModLance;->burnDps:F

    .line 356
    const-string v0, "fx_fire"

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, -0x3e600000    # -20.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, -0x3e600000    # -20.0f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, -0x3d600000    # -80.0f

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    const/high16 v4, -0x3d600000    # -80.0f

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v8, 0x428c0000    # 70.0f

    const/high16 v9, 0x42480000    # 50.0f

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f0ccccd    # 0.55f

    const v10, 0x3e19999a    # 0.15f

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 363
    :cond_ae
    :goto_ae
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 357
    :cond_b1
    if-ne p1, v0, :cond_ae

    .line 358
    invoke-static {p0, v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModLance;->enemyHit(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_b6} :catch_b7

    goto :goto_ae

    .line 360
    :catch_b7
    move-exception v0

    goto :goto_ae
.end method

.method static onLevel()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 523
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->live:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 524
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eBolts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 525
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->eSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->burnTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 527
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->eBurnUntil:J

    .line 528
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLance;->heat:F

    .line 529
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModLance;->coolUntil:J

    .line 530
    return-void
.end method

.method static onUnlock()V
    .registers 3

    .prologue
    .line 157
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lance_unlocked"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    :cond_14
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->stockedAt:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 160
    const-string v0, "lance"

    const-string v1, "unlocked"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method static phoenixReached()Z
    .registers 2

    .prologue
    .line 146
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->monolith()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_13

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 127
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static slowTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 9

    .prologue
    .line 202
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->testTick()V

    .line 203
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_d

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-eqz v1, :cond_e

    .line 218
    :cond_d
    :goto_d
    return-void

    .line 205
    :cond_e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->phoenixReached()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->unlocked()Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "lance_prompted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_60

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 207
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->promptAfter:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_34

    const-wide/16 v4, 0xfa0

    add-long/2addr v4, v2

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->promptAfter:J

    .line 208
    :cond_34
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->promptAfter:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_60

    if-eqz p0, :cond_60

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v1, :cond_60

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lance_prompted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    const-string v0, "Commander of SRS Aegis: Captain, the Republic has seen your Monolith rise in its phoenix form. Few crews ever earn that fire. Come to Spartan HQ: the council has a mission to honour you, and the Phoenix Lance waits for the one who completes it."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "spartan"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "lance"

    const-string v1, "prompt shown"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_60
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->unlocked()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->stock()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_d

    .line 215
    :catch_6a
    move-exception v0

    goto :goto_d
.end method

.method public static spec(I)Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;
    .registers 4

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLance;->SPECS:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static stock()V
    .registers 6

    .prologue
    .line 222
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 223
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_78

    .line 224
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 225
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v2, :cond_22

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->stockedAt:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 223
    :cond_22
    :goto_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 226
    :cond_26
    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 227
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lfr/testudo/spacecorsair/business/world/UniverseName;->SPARTAN_LASER_FACTORY:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 228
    const/4 v2, 0x1

    :goto_3f
    const/4 v4, 0x3

    if-ge v2, v4, :cond_56

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->inventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLance;->TYPES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v5

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->ofInfinite(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 229
    :cond_56
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLance;->stockedAt:Ljava/util/WeakHashMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v2, "lance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stocked at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 232
    :cond_78
    return-void
.end method

.method private static testTick()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 238
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModLance;->testGiven:Z

    if-nez v0, :cond_46

    const-string v0, "corsair_lance"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 239
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLance;->testGiven:Z

    .line 240
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_29

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lance_unlocked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lance_prompted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    :cond_29
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModLance;->TYPES:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->of(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    .line 243
    const-string v0, "lance"

    const-string v1, "test: unlocked, Mk III given"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_46
    const-string v0, "corsair_lancereset"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 246
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_82

    const-string v1, "lance_unlocked"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "lance_prompted"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 248
    :cond_64
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lance_unlocked"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lance_prompted"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModLance;->promptAfter:J

    .line 250
    const-string v0, "lance"

    const-string v1, "test: locked again"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_82
    return-void
.end method

.method static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 24

    .prologue
    .line 292
    if-eqz p0, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_9

    .line 336
    :cond_8
    :goto_8
    return-void

    .line 293
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 294
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModLance;->mounted(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v5

    .line 295
    if-eqz v5, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v4, :cond_41

    .line 296
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v7, v6

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v7, :cond_41

    aget-object v8, v6, v4

    .line 297
    if-eqz v8, :cond_2d

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModLance;->slowed:Ljava/util/WeakHashMap;

    invoke-virtual {v9, v8}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 296
    :cond_2d
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 298
    :cond_30
    iget v9, v8, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    iput v9, v8, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    .line 299
    sget-object v9, Lfr/testudo/spacecorsair/mod/ModLance;->slowed:Ljava/util/WeakHashMap;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v8, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 333
    :catch_3f
    move-exception v4

    goto :goto_8

    .line 302
    :cond_41
    if-eqz v5, :cond_c9

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLance;->lastShot:J

    sub-long v6, v18, v6

    const-wide/16 v8, 0xc8

    cmp-long v4, v6, v8

    if-gez v4, :cond_c9

    const/4 v4, 0x1

    .line 303
    :goto_4e
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLance;->coolUntil:J

    cmp-long v6, v18, v6

    if-ltz v6, :cond_cb

    if-eqz v4, :cond_cb

    .line 304
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->fireMs:J

    add-long v4, v4, p1

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->fireMs:J

    .line 305
    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lfr/testudo/spacecorsair/mod/ModLance;->heat:F

    move-wide/from16 v0, p1

    long-to-float v6, v0

    const v7, 0x460ca000    # 9000.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sput v4, Lfr/testudo/spacecorsair/mod/ModLance;->heat:F

    .line 306
    sget v4, Lfr/testudo/spacecorsair/mod/ModLance;->heat:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_9b

    .line 307
    const-wide/16 v4, 0xbb8

    add-long v4, v4, v18

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->coolUntil:J

    .line 308
    const-string v4, "LANCE VENTING"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 309
    const-string v4, "wpn_arty"

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3f19999a    # 0.6f

    const-wide/16 v8, 0x1f4

    invoke-static {v4, v5, v6, v8, v9}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 320
    :cond_9b
    :goto_9b
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->live:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    :goto_a4
    if-ltz v5, :cond_14f

    .line 321
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->live:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 322
    iget-boolean v6, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->removed:Z

    if-nez v6, :cond_c0

    iget-wide v6, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_c0

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_c5

    :cond_c0
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->live:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 320
    :cond_c5
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    goto :goto_a4

    .line 302
    :cond_c9
    const/4 v4, 0x0

    goto :goto_4e

    .line 311
    :cond_cb
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModLance;->coolUntil:J

    cmp-long v4, v18, v6

    if-ltz v4, :cond_e3

    .line 312
    const/4 v4, 0x0

    sget v5, Lfr/testudo/spacecorsair/mod/ModLance;->heat:F

    move-wide/from16 v0, p1

    long-to-float v6, v0

    const v7, 0x453b8000    # 3000.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sput v4, Lfr/testudo/spacecorsair/mod/ModLance;->heat:F

    goto :goto_9b

    .line 314
    :cond_e3
    const/4 v4, 0x0

    sget v6, Lfr/testudo/spacecorsair/mod/ModLance;->heat:F

    move-wide/from16 v0, p1

    long-to-float v7, v0

    const v8, 0x453b8000    # 3000.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sput v4, Lfr/testudo/spacecorsair/mod/ModLance;->heat:F

    .line 315
    if-eqz v5, :cond_9b

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9b

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v4, v4, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float v6, v4, v5

    .line 317
    const-string v4, "fx_fire"

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v7, v6

    invoke-static {v7, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v8, v6

    invoke-static {v8, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v6

    add-float/2addr v6, v7

    const/high16 v7, -0x3d900000    # -60.0f

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    const/high16 v8, -0x3d900000    # -60.0f

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v8, v9}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v8

    const/high16 v9, 0x43fa0000    # 500.0f

    const/high16 v10, 0x42200000    # 40.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f000000    # 0.5f

    const v14, 0x3e19999a    # 0.15f

    const v15, 0x3f333333    # 0.7f

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v4 .. v17}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto/16 :goto_9b

    .line 324
    :cond_14f
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->burnTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v4, :cond_16b

    .line 325
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->burnUntil:J

    cmp-long v4, v18, v4

    if-gez v4, :cond_168

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->burnTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v4, v4, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_168

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->burnTarget:Lfr/testudo/spacecorsair/business/Element;

    iget v4, v4, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_174

    :cond_168
    const/4 v4, 0x0

    sput-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->burnTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 332
    :cond_16b
    :goto_16b
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModLance;->enemyTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto/16 :goto_8

    .line 326
    :cond_174
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->burnNext:J

    cmp-long v4, v18, v4

    if-ltz v4, :cond_16b

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->lastHit:J

    sub-long v4, v18, v4

    const-wide/16 v6, 0x96

    cmp-long v4, v4, v6

    if-lez v4, :cond_16b

    .line 327
    const-wide/16 v4, 0xfa

    add-long v4, v4, v18

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModLance;->burnNext:J

    .line 328
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModLance;->burnTarget:Lfr/testudo/spacecorsair/business/Element;

    sget v5, Lfr/testudo/spacecorsair/mod/ModLance;->burnDps:F

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0, v6}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 329
    const-string v4, "fx_fire"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModLance;->burnTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v6, -0x3e100000    # -30.0f

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v6

    add-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModLance;->burnTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, -0x3e100000    # -30.0f

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    add-float/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x43c80000    # 400.0f

    const/high16 v10, 0x41f00000    # 30.0f

    const/high16 v11, 0x42a00000    # 80.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3ee66666    # 0.45f

    const v14, 0x3dcccccd    # 0.1f

    const v15, 0x3f4ccccd    # 0.8f

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v4 .. v17}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V
    :try_end_1d1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1d1} :catch_3f

    goto :goto_16b
.end method

.method static tier(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 268
    move v0, v1

    :goto_2
    const/4 v2, 0x3

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLance;->SPECS:[Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    aget-object v3, v3, v0

    if-ne v2, v3, :cond_e

    .line 269
    :goto_d
    return v0

    .line 268
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    move v0, v1

    .line 269
    goto :goto_d
.end method

.method static tierOf(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 91
    if-nez p0, :cond_4

    .line 94
    :cond_3
    :goto_3
    return v0

    .line 92
    :cond_4
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v2

    .line 93
    const/4 v1, 0x0

    :goto_9
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModLance;->TYPES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v0, v1

    goto :goto_3

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method static unlocked()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLance;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_10

    const-string v2, "lance_unlocked"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method
