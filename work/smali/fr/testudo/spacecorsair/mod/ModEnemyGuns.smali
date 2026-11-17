.class public final Lfr/testudo/spacecorsair/mod/ModEnemyGuns;
.super Ljava/lang/Object;
.source "ModEnemyGuns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;
    }
.end annotation


# static fields
.field static final ACID_FRAC:F = 0.1f

.field static final ACID_MS:J = 0x7d0L

.field static final BURST_DMG:F = 0.25f

.field static final BURST_LIFE:J = 0x1c2L

.field static final BURST_N:I = 0x5

.field static final BURST_RANGE:F = 250.0f

.field static final BURST_STEP:F = 15.0f

.field static final GAIN:[F

.field static final HELION:I = 0x5

.field static final HOME_CONE:F = 60.0f

.field static final HOME_DEG_S:F = 30.0f

.field static final HOME_RANGE:F = 1500.0f

.field static final HULL_X:F = 0.7f

.field static final ION_JUMP:F = 450.0f

.field static final ION_JUMP_DMG:F = 0.6f

.field static final ION_MS:J = 0x7d0L

.field static final IRONCLAD:I = 0x4

.field static final KRETARI:I = 0x2

.field static final MARK_MS:J = 0x258L

.field private static final NONE:[I

.field static final PITCH:[F

.field static final REAVER:I = 0x1

.field static final RING_MS:J = 0x320L

.field static final RING_R:F = 220.0f

.field static final SHIELD_X:F = 1.5f

.field static final SPARTAN:I = 0x0

.field static final SZ:[Ljava/lang/String;

.field static final VARN:I = 0x3

.field static final WARDEN:I = 0x6

.field static final WH:[[F

.field private static acidDps:F

.field private static acidFrom:Lfr/testudo/spacecorsair/business/Element;

.field private static acidNext:J

.field private static acidUntil:J

.field private static final bits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;",
            ">;"
        }
    .end annotation
.end field

.field private static final bitsS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final has:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final held:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;",
            ">;"
        }
    .end annotation
.end field

.field private static ionUntil:J

.field private static final ironclad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;",
            ">;"
        }
    .end annotation
.end field

.field private static final ironcladS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final kretari:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;",
            ">;"
        }
    .end annotation
.end field

.field private static final kretariS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final lanceDmg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final lanceHit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Set",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final lanceS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final lances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;",
            ">;"
        }
    .end annotation
.end field

.field private static final logAt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static logCheck:J

.field private static logOn:Ljava/lang/Boolean;

.field private static final reaver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;",
            ">;"
        }
    .end annotation
.end field

.field private static final reaverS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final released:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final shrapnel:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static swapN:I

.field private static final who:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_c2

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->PITCH:[F

    .line 40
    new-array v0, v3, [F

    fill-array-data v0, :array_d4

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->GAIN:[F

    .line 42
    new-array v0, v3, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_de

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_e6

    aput-object v1, v0, v5

    new-array v1, v2, [F

    fill-array-data v1, :array_ee

    aput-object v1, v0, v2

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->WH:[[F

    .line 59
    new-array v0, v3, [I

    fill-array-data v0, :array_f6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->NONE:[I

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->who:Ljava/util/WeakHashMap;

    .line 95
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->released:Ljava/util/WeakHashMap;

    .line 96
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretariS:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironcladS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bitsS:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceHit:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceDmg:Ljava/util/ArrayList;

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->logAt:Ljava/util/HashMap;

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->has:Ljava/util/HashMap;

    .line 416
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_s"

    aput-object v1, v0, v4

    const-string v1, "_m"

    aput-object v1, v0, v5

    const-string v1, "_l"

    aput-object v1, v0, v2

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->SZ:[Ljava/lang/String;

    return-void

    .line 38
    :array_c2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8f5c29    # 1.12f
        0x3f3851ec    # 0.72f
        0x3f733333    # 0.95f
        0x3f6147ae    # 0.88f
        0x3f87ae14    # 1.06f
        0x3f59999a    # 0.85f
    .end array-data

    .line 40
    :array_d4
    .array-data 4
        0x3eb33333    # 0.35f
        0x3f0ccccd    # 0.55f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 42
    :array_de
    .array-data 4
        0x41800000    # 16.0f
        0x42000000    # 32.0f
    .end array-data

    :array_e6
    .array-data 4
        0x41c00000    # 24.0f
        0x42400000    # 48.0f
    .end array-data

    :array_ee
    .array-data 4
        0x42080000    # 34.0f
        0x42880000    # 68.0f
    .end array-data

    .line 59
    :array_f6
    .array-data 4
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alive(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)Z
    .registers 7

    .prologue
    .line 196
    if-eqz p0, :cond_1a

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->removed:Z

    if-nez v0, :cond_1a

    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v0, p1, :cond_1a

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static art(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;
    .registers 3

    .prologue
    .line 419
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->has:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 420
    if-nez v0, :cond_1a

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->has:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    :goto_24
    return-object v0

    .line 420
    :cond_25
    const/4 v0, 0x0

    goto :goto_11

    .line 421
    :cond_27
    const/4 v0, 0x0

    goto :goto_24
.end method

.method static bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 20

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v2

    .line 427
    const/4 v3, 0x0

    aget v3, v2, v3

    if-gez v3, :cond_f

    const/4 v2, 0x0

    .line 456
    :goto_e
    return-object v2

    .line 428
    :cond_f
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v17

    .line 429
    if-gez v17, :cond_17

    const/4 v2, 0x0

    goto :goto_e

    .line 431
    :cond_17
    const/4 v3, 0x0

    :try_start_18
    aget v4, v2, v3

    const/4 v3, 0x1

    aget v18, v2, v3

    .line 432
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 433
    const/4 v3, 0x3

    if-ne v4, v3, :cond_165

    const/4 v3, 0x4

    move/from16 v0, v17

    if-ne v0, v3, :cond_165

    .line 434
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModWeapons;->enemyRamp()F

    move-result v2

    .line 435
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    .line 436
    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v5, v2, v5

    if-lez v5, :cond_52

    const-string v5, "varn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "varn ramp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_52
    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v2, v6

    sub-float v2, v5, v2

    move v10, v2

    move v9, v2

    move v6, v3

    .line 439
    :goto_5d
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 440
    if-eqz v7, :cond_bd

    const-string v2, "fx_shrapnel_reaver"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->art(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 442
    :goto_6d
    if-eqz v2, :cond_122

    .line 443
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->WH:[[F

    aget-object v3, v3, v18

    const/4 v5, 0x0

    aget v3, v3, v5

    mul-float v5, v3, v6

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->WH:[[F

    aget-object v3, v3, v18

    const/4 v11, 0x1

    aget v3, v3, v11

    mul-float/2addr v6, v3

    .line 444
    if-eqz v7, :cond_f5

    const/high16 v3, 0x41900000    # 18.0f

    move v6, v3

    move v5, v3

    .line 446
    :cond_86
    :goto_86
    if-eqz v7, :cond_101

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    move-object/from16 v0, p0

    iget v10, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 448
    :goto_b0
    if-lez v18, :cond_b9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->trail(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;I)V

    .line 449
    :cond_b9
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    goto/16 :goto_e

    .line 441
    :cond_bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proj_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v3, v3, v4

    iget-object v3, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x6

    if-ne v4, v2, :cond_f2

    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_f2

    const-string v2, "_arc"

    :goto_dc
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->SZ:[Ljava/lang/String;

    aget-object v3, v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->art(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    goto/16 :goto_6d

    :cond_f2
    const-string v2, ""

    goto :goto_dc

    .line 445
    :cond_f5
    const/4 v3, 0x4

    if-ne v4, v3, :cond_86

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v5, v3

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v6, v3

    goto :goto_86

    .line 447
    :cond_101
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto :goto_b0

    .line 455
    :catch_11e
    move-exception v2

    .line 456
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 451
    :cond_122
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v6, v2

    if-lez v2, :cond_14e

    .line 452
    const-string v2, "fx_core"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x41f00000    # 30.0f

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v11, 0x3eb33333    # 0.35f

    mul-float/2addr v9, v11

    const v11, 0x3e99999a    # 0.3f

    mul-float/2addr v10, v11

    const v11, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 454
    :cond_14e
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_160

    const/4 v2, 0x1

    move v3, v2

    :goto_155
    if-lez v18, :cond_163

    const/4 v2, 0x1

    :goto_158
    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;ZZ)Lfr/testudo/spacecorsair/display/Drawable;
    :try_end_15d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_15d} :catch_11e

    move-result-object v2

    goto/16 :goto_e

    :cond_160
    const/4 v2, 0x0

    move v3, v2

    goto :goto_155

    :cond_163
    const/4 v2, 0x0

    goto :goto_158

    :cond_165
    move v6, v2

    goto/16 :goto_5d
.end method

.method private static burst(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 20

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v12, v2

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v4, v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v13, v2

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v2

    .line 318
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 319
    const/4 v2, 0x0

    move v11, v2

    :goto_4a
    const/4 v2, 0x5

    if-ge v11, v2, :cond_c0

    .line 320
    int-to-float v2, v11

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v2, v4

    const/high16 v4, 0x41700000    # 15.0f

    mul-float/2addr v2, v4

    add-float v14, v13, v2

    .line 321
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    const/4 v4, 0x6

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    move-object/from16 v0, p0

    iget v8, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    move-object/from16 v0, p0

    iget v9, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    const/4 v10, 0x1

    aget-object v10, v5, v10

    move-object/from16 v5, p1

    .line 322
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 323
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 324
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v5, 0x0

    neg-float v6, v12

    invoke-virtual {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    float-to-double v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 325
    iput v14, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 326
    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    iput v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 327
    const-wide/16 v4, 0x1c2

    iput-wide v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 328
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->released:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bitsS:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_4a

    .line 333
    :cond_c0
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v2

    if-eqz v2, :cond_e8

    const/4 v2, 0x2

    move v3, v2

    .line 334
    :goto_c8
    const-string v2, "fx_spark"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f1

    const/high16 v9, 0x42f00000    # 120.0f

    :goto_d5
    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0ccccd    # 0.55f

    const/high16 v12, 0x3e800000    # 0.25f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 335
    return-void

    .line 333
    :cond_e8
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    move v3, v2

    goto :goto_c8

    .line 334
    :cond_f1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_f7

    const/high16 v9, 0x42a00000    # 80.0f

    goto :goto_d5

    :cond_f7
    const/high16 v9, 0x42480000    # 50.0f

    goto :goto_d5
.end method

.method static damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 380
    cmpg-float v0, p1, v2

    if-lez v0, :cond_d

    if-eqz p2, :cond_d

    if-eqz p0, :cond_d

    :try_start_9
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_e

    .line 387
    :cond_d
    :goto_d
    return p1

    .line 381
    :cond_e
    iget-object v0, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 382
    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 383
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4b

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 384
    :goto_31
    const-string v1, "helion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "helion x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_49} :catch_4f

    .line 385
    mul-float/2addr p1, v0

    goto :goto_d

    .line 383
    :cond_4b
    const v0, 0x3f333333    # 0.7f

    goto :goto_31

    .line 386
    :catch_4f
    move-exception v0

    goto :goto_d
.end method

.method static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 25

    .prologue
    .line 463
    const/4 v2, 0x0

    move/from16 v21, v2

    :goto_3
    :try_start_3
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_d9

    .line 464
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;

    move-object v10, v0

    .line 465
    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_23

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_28

    .line 463
    :cond_23
    :goto_23
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto :goto_3

    .line 466
    :cond_28
    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->ox:F

    add-float/2addr v2, v3

    iget-object v3, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v4, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->oy:F

    add-float/2addr v3, v4

    .line 467
    iget-object v4, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v4, v4

    iget-object v6, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v5, v4

    .line 468
    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v4, v5, v4

    if-ltz v4, :cond_23

    .line 469
    const v4, 0x453b8000    # 3000.0f

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v5

    iget-object v7, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-wide v8, v7, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    long-to-float v7, v8

    mul-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 470
    const/high16 v4, 0x3f800000    # 1.0f

    iget-wide v8, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    long-to-float v7, v8

    const/high16 v8, 0x44160000    # 600.0f

    div-float/2addr v7, v8

    sub-float v7, v4, v7

    .line 471
    iget v4, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    if-nez v4, :cond_cc

    const v4, 0x3eb33333    # 0.35f

    :goto_76
    const v8, 0x3e99999a    # 0.3f

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    mul-float v9, v4, v7

    .line 472
    iget-object v4, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v4, v5

    mul-float/2addr v4, v6

    add-float/2addr v4, v2

    iget-object v7, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v7, v7, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float v5, v7, v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    const v6, 0x3f0ccccd    # 0.55f

    const v7, 0x3f733333    # 0.95f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v9}, Lfr/testudo/spacecorsair/mod/ModFx;->line(FFFFFFFF)V

    .line 473
    iget v4, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    if-lez v4, :cond_23

    iget-wide v4, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_23

    const-string v10, "fx_glow"

    const/high16 v13, 0x42200000    # 40.0f

    const/high16 v14, 0x42200000    # 40.0f

    const/4 v15, 0x0

    const v16, 0x3f0ccccd    # 0.55f

    const v17, 0x3f733333    # 0.95f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v20, 0x1

    move v11, v2

    move v12, v3

    move/from16 v19, v9

    invoke-static/range {v10 .. v20}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_23

    .line 496
    :catch_ca
    move-exception v2

    .line 499
    :cond_cb
    return-void

    .line 471
    :cond_cc
    iget v4, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_d5

    const v4, 0x3f19999a    # 0.6f

    goto :goto_76

    :cond_d5
    const v4, 0x3f666666    # 0.9f

    goto :goto_76

    .line 475
    :cond_d9
    if-eqz p0, :cond_cb

    .line 476
    const/4 v5, 0x0

    .line 477
    const/4 v2, 0x0

    move/from16 v23, v2

    :goto_df
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_cb

    .line 478
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 479
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironcladS:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/business/Element;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->alive(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)Z

    move-result v3

    if-nez v3, :cond_10b

    move-object v2, v5

    .line 477
    :goto_105
    add-int/lit8 v3, v23, 0x1

    move/from16 v23, v3

    move-object v5, v2

    goto :goto_df

    .line 480
    :cond_10b
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v6, v3

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 481
    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v3, v6, v3

    if-gez v3, :cond_123

    move-object v2, v5

    goto :goto_105

    .line 482
    :cond_123
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v3, v6

    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v4, v6

    .line 483
    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v8, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v9, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v8, v9

    .line 484
    mul-float/2addr v7, v3

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    .line 485
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_14d

    move-object v2, v5

    goto :goto_105

    .line 486
    :cond_14d
    iget-object v8, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v8

    iget-object v8, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v8

    .line 487
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v8, v3

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v10, v10, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v10, v4

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    const-wide v10, 0x406b800000000000L    # 220.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_178

    move-object v2, v5

    goto :goto_105

    .line 488
    :cond_178
    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v8

    div-float v6, v7, v6

    .line 489
    const/high16 v7, 0x44480000    # 800.0f

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_1f7

    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    long-to-float v2, v8

    cmpl-float v2, v6, v2

    if-lez v2, :cond_18e

    move-object v2, v5

    goto/16 :goto_105

    .line 490
    :cond_18e
    const v2, 0x3eb33333    # 0.35f

    const v7, 0x3f19999a    # 0.6f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x44480000    # 800.0f

    div-float v9, v6, v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float v11, v2, v7

    .line 491
    const-string v2, "ring"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ironclad ring ms="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    if-nez v5, :cond_1f5

    const-string v2, "tele_cap_ironclad"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 493
    :goto_1bf
    if-eqz v2, :cond_1da

    const/high16 v5, 0x43dc0000    # 440.0f

    const/high16 v6, 0x43dc0000    # 440.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e99999a    # 0.3f

    const v10, 0x3e19999a    # 0.15f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto/16 :goto_105

    .line 494
    :cond_1da
    const-string v12, "fx_ring"

    const/high16 v15, 0x43dc0000    # 440.0f

    const/high16 v16, 0x43dc0000    # 440.0f

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3e99999a    # 0.3f

    const v20, 0x3e19999a    # 0.15f

    const/16 v22, 0x1

    move v13, v3

    move v14, v4

    move/from16 v21, v11

    invoke-static/range {v12 .. v22}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V
    :try_end_1f3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1f3} :catch_ca

    goto/16 :goto_105

    :cond_1f5
    move-object v2, v5

    goto :goto_1bf

    :cond_1f7
    move-object v2, v5

    goto/16 :goto_105
.end method

.method static flak(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    .line 272
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method static ionStopped()Z
    .registers 4

    .prologue
    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ionUntil:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static key(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    if-ltz p0, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    if-ge p0, v0, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v0, v0, p0

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    :goto_d
    return-object v0

    :cond_e
    const-string v0, "?"

    goto :goto_d
.end method

.method static lance(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 282
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->destroyedOnImpact:Z

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->mass:F

    .line 284
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 285
    if-ltz v0, :cond_22

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceHit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceDmg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 286
    :cond_22
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceHit:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceDmg:Ljava/util/ArrayList;

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x30

    if-le v0, v1, :cond_7c

    .line 288
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_68

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->destroyedOnImpact:Z

    .line 289
    :cond_68
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceHit:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceDmg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 291
    :cond_7c
    return-void
.end method

.method static lanceRepeat(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 295
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 296
    if-ltz v2, :cond_15

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_15

    if-nez p1, :cond_17

    :cond_15
    move v0, v1

    .line 299
    :goto_16
    return v0

    .line 297
    :cond_17
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceHit:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceDmg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    move v0, v1

    goto :goto_16

    .line 298
    :cond_35
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    .line 299
    const/4 v0, 0x1

    goto :goto_16
.end method

.method private static lanceTick()V
    .registers 4

    .prologue
    .line 303
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_9
    if-ltz v2, :cond_58

    .line 304
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 305
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/Element;

    const/4 v3, 0x3

    invoke-static {v0, v1, v3}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->alive(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)Z

    move-result v1

    if-nez v1, :cond_49

    .line 306
    if-eqz v0, :cond_31

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_31

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->destroyedOnImpact:Z

    .line 307
    :cond_31
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceHit:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceDmg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    :goto_45
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_9

    .line 310
    :cond_49
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceDmg:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    goto :goto_45

    .line 312
    :cond_58
    return-void
.end method

.method static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 398
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 399
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->logOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->logCheck:J

    sub-long v0, v2, v0

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-lez v0, :cond_20

    :cond_12
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->logCheck:J

    const-string v0, "corsair_egunlog"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->logOn:Ljava/lang/Boolean;

    .line 400
    :cond_20
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->logOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    .line 408
    :cond_28
    :goto_28
    return-void

    .line 401
    :cond_29
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->logAt:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 402
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v4, 0xbb8

    cmp-long v0, v0, v4

    if-ltz v0, :cond_28

    .line 403
    :cond_3f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->logAt:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v0, "CorsairMod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "egun "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_60} :catch_61

    goto :goto_28

    .line 405
    :catch_61
    move-exception v0

    goto :goto_28
.end method

.method static onImpact(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 11

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v1, 0x0

    .line 341
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 342
    if-eqz v5, :cond_b

    if-eq p1, v5, :cond_c

    .line 370
    :cond_b
    :goto_b
    return-void

    .line 343
    :cond_c
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 345
    const/4 v4, 0x2

    if-ne v0, v4, :cond_62

    const/4 v4, 0x1

    if-ne p2, v4, :cond_62

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 346
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidUntil:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_60

    sget v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidDps:F

    :goto_2f
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidDps:F

    .line 347
    add-long v0, v2, v6

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidUntil:J

    .line 348
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidFrom:Lfr/testudo/spacecorsair/business/Element;

    .line 349
    const-string v0, "acid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kretari acid dps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidDps:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 367
    :catch_5e
    move-exception v0

    goto :goto_b

    .line 346
    :cond_60
    const/4 v0, 0x0

    goto :goto_2f

    .line 350
    :cond_62
    const/4 v4, 0x6

    if-ne v0, v4, :cond_b

    const/4 v0, 0x5

    if-ne p2, v0, :cond_b

    .line 351
    add-long/2addr v2, v6

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ionUntil:J

    .line 352
    const-string v0, "ion"

    const-string v2, "warden ion regen paused"

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->playerDrones()[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v6

    .line 354
    const/4 v2, 0x0

    .line 355
    const/high16 v0, 0x43e10000    # 450.0f

    move v4, v1

    .line 356
    :goto_7a
    if-eqz v6, :cond_9a

    array-length v1, v6

    if-ge v4, v1, :cond_9a

    .line 357
    aget-object v3, v6, v4

    .line 358
    if-eqz v3, :cond_87

    iget-boolean v1, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v1, :cond_8b

    .line 356
    :cond_87
    :goto_87
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_7a

    .line 359
    :cond_8b
    iget-object v1, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 360
    cmpg-float v7, v1, v0

    if-gez v7, :cond_87

    move v0, v1

    move-object v2, v3

    goto :goto_87

    .line 362
    :cond_9a
    if-eqz v2, :cond_b

    .line 363
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v2, v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 364
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v1, v3, v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->addArc(FFFF)V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_ba} :catch_5e

    goto/16 :goto_b
.end method

.method public static onLevel()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 184
    :goto_13
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_38

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->destroyedOnImpact:Z

    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 185
    :cond_3c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceHit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceDmg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretariS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironcladS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    :goto_64
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 189
    :cond_7a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bitsS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->who:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 191
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidUntil:J

    .line 192
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ionUntil:J

    .line 193
    return-void
.end method

.method static shooter(Lfr/testudo/spacecorsair/business/Element;)[I
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 64
    if-eqz p0, :cond_8

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_b

    :cond_8
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->NONE:[I

    .line 86
    :cond_a
    :goto_a
    return-object v0

    .line 65
    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->who:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 66
    if-nez v0, :cond_a

    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->NONE:[I

    .line 70
    :try_start_17
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v3

    if-nez v3, :cond_23

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_23
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->NONE:[I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_25} :catch_4e

    move v1, v2

    .line 85
    :cond_26
    :goto_26
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->NONE:[I

    if-ne v0, v2, :cond_2c

    if-eqz v1, :cond_a

    :cond_2c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->who:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 71
    :cond_32
    :try_start_32
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v2, :cond_52

    .line 72
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModStationGuns;->factionOfSender(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v2

    .line 73
    if-gez v2, :cond_3f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->NONE:[I

    goto :goto_26

    :cond_3f
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4d} :catch_4e

    goto :goto_26

    .line 82
    :catch_4e
    move-exception v0

    .line 83
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->NONE:[I

    goto :goto_26

    .line 74
    :cond_52
    :try_start_52
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 75
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeFactionOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v2

    .line 76
    if-gez v2, :cond_61

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->NONE:[I

    goto :goto_26

    :cond_61
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->size(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v0, v2

    goto :goto_26

    .line 78
    :cond_73
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_26

    instance-of v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    if-nez v3, :cond_26

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v3, 0x0

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v3

    const/4 v2, 0x1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->size(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_98} :catch_4e

    goto :goto_26
.end method

.method private static size(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 90
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWreck;->sizeClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v2

    .line 91
    if-gt v2, v0, :cond_a

    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0

    :cond_a
    if-eq v2, v1, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method private static sound(Lfr/testudo/spacecorsair/business/player/PlayerShip;IIIFF)V
    .registers 12

    .prologue
    .line 170
    if-nez p0, :cond_3

    .line 174
    :cond_2
    :goto_2
    return-void

    .line 171
    :cond_3
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, p4

    float-to-double v0, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, p5

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 172
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x459c4000    # 5000.0f

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->GAIN:[F

    aget v1, v1, p3

    mul-float/2addr v0, v1

    .line 173
    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModWeapons;->SOUND:[Ljava/lang/String;

    aget-object v1, v1, p2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->PITCH:[F

    aget v2, v2, p1

    const v3, 0x3f75c28f    # 0.96f

    const v4, 0x3f851eb8    # 1.04f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    mul-float/2addr v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->GAP:[J

    aget-wide v4, v3, p2

    invoke-static {v1, v0, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto :goto_2
.end method

.method public static swap(Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p0, :cond_8

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 167
    :cond_8
    :goto_8
    return-void

    .line 118
    :cond_9
    :try_start_9
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v13, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 119
    const/4 v12, 0x0

    :goto_e
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_8

    .line 120
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 121
    instance-of v3, v2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-nez v3, :cond_22

    move v2, v12

    .line 119
    :goto_1f
    add-int/lit8 v12, v2, 0x1

    goto :goto_e

    .line 122
    :cond_22
    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    move-object v11, v0

    .line 123
    invoke-static {v11}, Lfr/testudo/spacecorsair/mod/ModLance;->enemyShot(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v3

    .line 124
    if-eqz v3, :cond_33

    move-object/from16 v0, p0

    invoke-interface {v0, v12, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v12

    goto :goto_1f

    .line 125
    :cond_33
    iget-object v3, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v14

    .line 126
    const/4 v3, 0x0

    aget v3, v14, v3

    if-gez v3, :cond_40

    move v2, v12

    goto :goto_1f

    .line 127
    :cond_40
    instance-of v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    if-nez v3, :cond_48

    instance-of v3, v2, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;

    if-eqz v3, :cond_9d

    .line 128
    :cond_48
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v3, 0x0

    aget v3, v14, v3

    aget-object v2, v2, v3

    .line 129
    sget v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->swapN:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->swapN:I

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v10, v2, v3

    .line 130
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    iget v3, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->damage:F

    const/4 v4, 0x6

    iget-object v5, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->r:F

    iget v8, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->g:F

    iget v9, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->b:F

    sget-object v15, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iget v10, v10, Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;->fam:I

    aget-object v10, v15, v10

    .line 131
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 132
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 133
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 134
    iget v3, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 135
    iget v3, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->level:I

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 136
    iget-wide v4, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    iput-wide v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 137
    move-object/from16 v0, p0

    invoke-interface {v0, v12, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->released:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_9d
    instance-of v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-nez v3, :cond_a4

    move v2, v12

    goto/16 :goto_1f

    .line 143
    :cond_a4
    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 144
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v4

    .line 145
    if-ltz v4, :cond_187

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    move v2, v12

    goto/16 :goto_1f

    .line 146
    :cond_b7
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->released:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c2

    move v2, v12

    goto/16 :goto_1f

    .line 147
    :cond_c2
    const/4 v3, 0x0

    aget v3, v14, v3

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fire"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fire "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->key(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fam="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v14, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " kind="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, v14, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-nez v3, :cond_160

    if-nez v4, :cond_160

    .line 150
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;-><init>()V

    .line 151
    iput-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v4, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iput-object v4, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    const-wide/16 v4, 0x258

    iput-wide v4, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    const/4 v4, 0x1

    aget v4, v14, v4

    iput v4, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    .line 152
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v4, v5

    iput v4, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->ox:F

    .line 153
    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v4

    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->oy:F

    .line 154
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 156
    add-int/lit8 v2, v12, -0x1

    .line 157
    goto/16 :goto_1f

    .line 159
    :cond_160
    const/4 v5, 0x1

    if-ne v3, v5, :cond_18a

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18a

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    iget-object v6, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_172
    :goto_172
    const/4 v5, 0x2

    aget v5, v14, v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_187

    const/4 v5, 0x1

    aget v5, v14, v5

    iget-object v6, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object v2, v13

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->sound(Lfr/testudo/spacecorsair/business/player/PlayerShip;IIIFF)V

    :cond_187
    move v2, v12

    goto/16 :goto_1f

    .line 160
    :cond_18a
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1a0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a0

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretariS:Ljava/util/ArrayList;

    iget-object v6, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_172

    .line 164
    :catch_19d
    move-exception v2

    goto/16 :goto_8

    .line 161
    :cond_1a0
    const/4 v5, 0x4

    if-ne v3, v5, :cond_172

    const/4 v5, 0x2

    if-ne v4, v5, :cond_172

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_172

    const/4 v5, 0x2

    aget v5, v14, v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_172

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironcladS:Ljava/util/ArrayList;

    iget-object v6, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1be
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1be} :catch_19d

    goto :goto_172
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 22

    .prologue
    .line 201
    if-eqz p0, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_9

    .line 267
    :cond_8
    :goto_8
    return-void

    .line 202
    :cond_9
    :try_start_9
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    move-object/from16 v17, v0

    .line 204
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v16, v2

    :goto_1b
    if-ltz v16, :cond_e9

    .line 205
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;

    move-object v9, v0

    .line 206
    iget-wide v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    sub-long v2, v2, p1

    iput-wide v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    .line 207
    iget-object v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_39

    iget-object v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_45

    :cond_39
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 204
    :cond_40
    :goto_40
    add-int/lit8 v2, v16, -0x1

    move/from16 v16, v2

    goto :goto_1b

    .line 208
    :cond_45
    iget-wide v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_40

    .line 209
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 210
    iget-object v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v4, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->ox:F

    add-float/2addr v3, v4

    iget-object v4, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v5, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->oy:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 211
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->released:Ljava/util/WeakHashMap;

    iget-object v3, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget-object v3, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    iget-object v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->sound(Lfr/testudo/spacecorsair/business/player/PlayerShip;IIIFF)V

    .line 214
    const-string v2, "mark"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "marked shot released size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    if-lez v2, :cond_40

    .line 216
    const-string v2, "fx_glow"

    iget-object v3, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43200000    # 160.0f

    const/high16 v8, 0x41a00000    # 20.0f

    iget v9, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_e6

    const/high16 v9, 0x42b40000    # 90.0f

    :goto_d1
    const v10, 0x3f0ccccd    # 0.55f

    const v11, 0x3f733333    # 0.95f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto/16 :goto_40

    .line 264
    :catch_e3
    move-exception v2

    goto/16 :goto_8

    .line 216
    :cond_e6
    const/high16 v9, 0x42480000    # 50.0f

    goto :goto_d1

    .line 219
    :cond_e9
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_f2
    if-ltz v4, :cond_151

    .line 220
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 221
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/business/Element;

    .line 222
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->alive(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)Z

    move-result v5

    if-nez v5, :cond_119

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    :cond_115
    :goto_115
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_f2

    .line 223
    :cond_119
    iget-object v5, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    const/high16 v6, 0x437a0000    # 250.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_115

    .line 224
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 225
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->burst(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)V

    .line 226
    const-string v3, "burst"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reaver burst dmg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_115

    .line 228
    :cond_151
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->lanceTick()V

    .line 230
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_15d
    if-ltz v4, :cond_184

    .line 231
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironcladS:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/business/Element;

    const/4 v5, 0x2

    invoke-static {v2, v3, v5}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->alive(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)Z

    move-result v2

    if-nez v2, :cond_180

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironcladS:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    :cond_180
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_15d

    .line 232
    :cond_184
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_18d
    if-ltz v4, :cond_1bf

    .line 233
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bitsS:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/business/Element;

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->alive(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)Z

    move-result v2

    if-nez v2, :cond_1bb

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bitsS:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 232
    :cond_1bb
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_18d

    .line 235
    :cond_1bf
    const/high16 v2, 0x41f00000    # 30.0f

    move-wide/from16 v0, p1

    long-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v5, v2, v3

    .line 236
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_1d2
    if-ltz v4, :cond_295

    .line 237
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 238
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretariS:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/business/Element;

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->alive(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)Z

    move-result v3

    if-nez v3, :cond_1f9

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretariS:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    :cond_1f5
    :goto_1f5
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_1d2

    .line 239
    :cond_1f9
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v7, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v6, v7

    .line 240
    mul-float v7, v3, v3

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    const v8, 0x4a095440    # 2250000.0f

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1f5

    .line 241
    iget-object v7, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v8, v7

    iget-object v7, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v7, v8

    .line 242
    const v8, 0x3c23d70a    # 0.01f

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_1f5

    .line 243
    iget-object v8, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v8, v8

    iget-object v10, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v10, v10, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v10, v10

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 244
    float-to-double v10, v3

    neg-float v3, v6

    float-to-double v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v3, v10

    .line 245
    sub-float/2addr v3, v8

    .line 246
    :goto_252
    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_25c

    const/high16 v6, 0x43b40000    # 360.0f

    sub-float/2addr v3, v6

    goto :goto_252

    .line 247
    :cond_25c
    :goto_25c
    const/high16 v6, -0x3ccc0000    # -180.0f

    cmpg-float v6, v3, v6

    if-gez v6, :cond_266

    const/high16 v6, 0x43b40000    # 360.0f

    add-float/2addr v3, v6

    goto :goto_25c

    .line 248
    :cond_266
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x42700000    # 60.0f

    cmpl-float v6, v6, v9

    if-gtz v6, :cond_1f5

    .line 249
    neg-float v6, v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v8

    .line 250
    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 251
    iget-object v6, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    neg-float v8, v8

    mul-float/2addr v7, v8

    invoke-virtual {v6, v10, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 252
    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    goto/16 :goto_1f5

    .line 255
    :cond_295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 256
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidUntil:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_307

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidNext:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_307

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v4, :cond_307

    .line 257
    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidNext:J

    .line 258
    sget v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidDps:F

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidFrom:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_310

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidFrom:Lfr/testudo/spacecorsair/business/Element;

    :goto_2bb
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 259
    const-string v2, "fx_acid_kretari"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_313

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v4, -0x3e100000    # -30.0f

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, -0x3e100000    # -30.0f

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x428c0000    # 70.0f

    const/high16 v6, 0x428c0000    # 70.0f

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    const v8, 0x3f0ccccd    # 0.55f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e99999a    # 0.3f

    const v11, 0x3f333333    # 0.7f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 263
    :cond_307
    :goto_307
    if-nez v17, :cond_8

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_8

    :cond_310
    move-object/from16 v2, p0

    .line 258
    goto :goto_2bb

    .line 261
    :cond_313
    const-string v2, "fx_glow"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v4, -0x3e100000    # -30.0f

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, -0x3e100000    # -30.0f

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43960000    # 300.0f

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v9, 0x42700000    # 60.0f

    const v10, 0x3f0ccccd    # 0.55f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3e99999a    # 0.3f

    const v13, 0x3f333333    # 0.7f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V
    :try_end_34b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_34b} :catch_e3

    goto :goto_307
.end method
