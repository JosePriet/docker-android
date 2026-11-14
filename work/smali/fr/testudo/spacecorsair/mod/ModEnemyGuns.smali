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

    fill-array-data v0, :array_a0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->PITCH:[F

    .line 40
    new-array v0, v3, [F

    fill-array-data v0, :array_b2

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->GAIN:[F

    .line 42
    new-array v0, v3, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_bc

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_c4

    aput-object v1, v0, v5

    new-array v1, v2, [F

    fill-array-data v1, :array_cc

    aput-object v1, v0, v2

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->WH:[[F

    .line 59
    new-array v0, v3, [I

    fill-array-data v0, :array_d4

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

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->has:Ljava/util/HashMap;

    .line 336
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
    nop

    :array_a0
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
    :array_b2
    .array-data 4
        0x3eb33333    # 0.35f
        0x3f0ccccd    # 0.55f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 42
    :array_bc
    .array-data 4
        0x41800000    # 16.0f
        0x42000000    # 32.0f
    .end array-data

    :array_c4
    .array-data 4
        0x41c00000    # 24.0f
        0x42400000    # 48.0f
    .end array-data

    :array_cc
    .array-data 4
        0x42080000    # 34.0f
        0x42880000    # 68.0f
    .end array-data

    .line 59
    :array_d4
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
    .line 191
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
    .line 339
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->has:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 340
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

    .line 341
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    :goto_24
    return-object v0

    .line 340
    :cond_25
    const/4 v0, 0x0

    goto :goto_11

    .line 341
    :cond_27
    const/4 v0, 0x0

    goto :goto_24
.end method

.method static bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 20

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v2

    .line 347
    const/4 v3, 0x0

    aget v3, v2, v3

    if-gez v3, :cond_f

    const/4 v2, 0x0

    .line 375
    :goto_e
    return-object v2

    .line 348
    :cond_f
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v17

    .line 349
    if-gez v17, :cond_17

    const/4 v2, 0x0

    goto :goto_e

    .line 351
    :cond_17
    const/4 v3, 0x0

    :try_start_18
    aget v4, v2, v3

    const/4 v3, 0x1

    aget v18, v2, v3

    .line 352
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 353
    const/4 v3, 0x3

    if-ne v4, v3, :cond_147

    const/4 v3, 0x4

    move/from16 v0, v17

    if-ne v0, v3, :cond_147

    .line 354
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModWeapons;->enemyRamp()F

    move-result v2

    .line 355
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    .line 356
    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v2, v6

    sub-float v2, v5, v2

    move v10, v2

    move v9, v2

    move v6, v3

    .line 358
    :goto_3f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 359
    if-eqz v7, :cond_9f

    const-string v2, "fx_shrapnel_reaver"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->art(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 361
    :goto_4f
    if-eqz v2, :cond_104

    .line 362
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

    .line 363
    if-eqz v7, :cond_d7

    const/high16 v3, 0x41900000    # 18.0f

    move v6, v3

    move v5, v3

    .line 365
    :cond_68
    :goto_68
    if-eqz v7, :cond_e3

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

    .line 367
    :goto_92
    if-lez v18, :cond_9b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->trail(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;I)V

    .line 368
    :cond_9b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFx;->EMPTY:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    goto/16 :goto_e

    .line 360
    :cond_9f
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

    if-ne v4, v2, :cond_d4

    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_d4

    const-string v2, "_arc"

    :goto_be
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

    goto/16 :goto_4f

    :cond_d4
    const-string v2, ""

    goto :goto_be

    .line 364
    :cond_d7
    const/4 v3, 0x4

    if-ne v4, v3, :cond_68

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v5, v3

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v6, v3

    goto :goto_68

    .line 366
    :cond_e3
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

    goto :goto_92

    .line 374
    :catch_100
    move-exception v2

    .line 375
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 370
    :cond_104
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v6, v2

    if-lez v2, :cond_130

    .line 371
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

    .line 373
    :cond_130
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_142

    const/4 v2, 0x1

    move v3, v2

    :goto_137
    if-lez v18, :cond_145

    const/4 v2, 0x1

    :goto_13a
    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;ZZ)Lfr/testudo/spacecorsair/display/Drawable;
    :try_end_13f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_13f} :catch_100

    move-result-object v2

    goto/16 :goto_e

    :cond_142
    const/4 v2, 0x0

    move v3, v2

    goto :goto_137

    :cond_145
    const/4 v2, 0x0

    goto :goto_13a

    :cond_147
    move v6, v2

    goto/16 :goto_3f
.end method

.method private static burst(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)V
    .registers 20

    .prologue
    .line 262
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

    .line 263
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

    .line 264
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

    .line 265
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 266
    const/4 v2, 0x0

    move v11, v2

    :goto_4a
    const/4 v2, 0x5

    if-ge v11, v2, :cond_c0

    .line 267
    int-to-float v2, v11

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v2, v4

    const/high16 v4, 0x41700000    # 15.0f

    mul-float/2addr v2, v4

    add-float v14, v13, v2

    .line 268
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

    .line 269
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 270
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 271
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v5, 0x0

    neg-float v6, v12

    invoke-virtual {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    float-to-double v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 272
    iput v14, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 273
    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    iput v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 274
    const-wide/16 v4, 0x1c2

    iput-wide v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 275
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->released:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bitsS:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_4a

    .line 280
    :cond_c0
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v2, v3

    .line 281
    const-string v2, "fx_spark"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e7

    const/high16 v9, 0x42f00000    # 120.0f

    :goto_d4
    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0ccccd    # 0.55f

    const/high16 v12, 0x3e800000    # 0.25f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 282
    return-void

    .line 281
    :cond_e7
    const/4 v4, 0x1

    if-ne v3, v4, :cond_ed

    const/high16 v9, 0x42a00000    # 80.0f

    goto :goto_d4

    :cond_ed
    const/high16 v9, 0x42480000    # 50.0f

    goto :goto_d4
.end method

.method static damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 325
    cmpg-float v0, p1, v2

    if-lez v0, :cond_d

    if-eqz p2, :cond_d

    if-eqz p0, :cond_d

    :try_start_9
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_e

    .line 330
    :cond_d
    :goto_d
    return p1

    .line 326
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

    .line 327
    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 328
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_2b} :catch_37

    cmpl-float v0, v0, v2

    if-lez v0, :cond_33

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_31
    mul-float/2addr p1, v0

    goto :goto_d

    :cond_33
    const v0, 0x3f333333    # 0.7f

    goto :goto_31

    .line 329
    :catch_37
    move-exception v0

    goto :goto_d
.end method

.method static draw(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 25

    .prologue
    .line 382
    const/4 v2, 0x0

    move/from16 v21, v2

    :goto_3
    :try_start_3
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_d9

    .line 383
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;

    move-object v10, v0

    .line 384
    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_23

    iget-object v2, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_28

    .line 382
    :cond_23
    :goto_23
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto :goto_3

    .line 385
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

    .line 386
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

    .line 387
    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v4, v5, v4

    if-ltz v4, :cond_23

    .line 388
    const v4, 0x453b8000    # 3000.0f

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v5

    iget-object v7, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-wide v8, v7, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    long-to-float v7, v8

    mul-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 389
    const/high16 v4, 0x3f800000    # 1.0f

    iget-wide v8, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    long-to-float v7, v8

    const/high16 v8, 0x44160000    # 600.0f

    div-float/2addr v7, v8

    sub-float v7, v4, v7

    .line 390
    iget v4, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    if-nez v4, :cond_cc

    const v4, 0x3eb33333    # 0.35f

    :goto_76
    const v8, 0x3e99999a    # 0.3f

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    mul-float v9, v4, v7

    .line 391
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

    .line 392
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

    .line 414
    :catch_ca
    move-exception v2

    .line 417
    :cond_cb
    return-void

    .line 390
    :cond_cc
    iget v4, v10, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_d5

    const v4, 0x3f19999a    # 0.6f

    goto :goto_76

    :cond_d5
    const v4, 0x3f666666    # 0.9f

    goto :goto_76

    .line 394
    :cond_d9
    if-eqz p0, :cond_cb

    .line 395
    const/4 v5, 0x0

    .line 396
    const/4 v2, 0x0

    move/from16 v23, v2

    :goto_df
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_cb

    .line 397
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 398
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

    .line 396
    :goto_105
    add-int/lit8 v3, v23, 0x1

    move/from16 v23, v3

    move-object v5, v2

    goto :goto_df

    .line 399
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

    .line 400
    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v3, v6, v3

    if-gez v3, :cond_123

    move-object v2, v5

    goto :goto_105

    .line 401
    :cond_123
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v3, v6

    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v4, v6

    .line 402
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

    .line 403
    mul-float/2addr v7, v3

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    .line 404
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_14d

    move-object v2, v5

    goto :goto_105

    .line 405
    :cond_14d
    iget-object v8, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v8

    iget-object v8, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v8

    .line 406
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

    .line 407
    :cond_178
    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v8

    div-float v6, v7, v6

    .line 408
    const/high16 v7, 0x44480000    # 800.0f

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_1de

    iget-wide v8, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    long-to-float v2, v8

    cmpl-float v2, v6, v2

    if-lez v2, :cond_18e

    move-object v2, v5

    goto/16 :goto_105

    .line 409
    :cond_18e
    const v2, 0x3eb33333    # 0.35f

    const v7, 0x3f19999a    # 0.6f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x44480000    # 800.0f

    div-float/2addr v6, v9

    sub-float v6, v8, v6

    mul-float/2addr v6, v7

    add-float v11, v2, v6

    .line 410
    if-nez v5, :cond_1dc

    const-string v2, "tele_cap_ironclad"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 411
    :goto_1a6
    if-eqz v2, :cond_1c1

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

    .line 412
    :cond_1c1
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
    :try_end_1da
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1da} :catch_ca

    goto/16 :goto_105

    :cond_1dc
    move-object v2, v5

    goto :goto_1a6

    :cond_1de
    move-object v2, v5

    goto/16 :goto_105
.end method

.method static ionStopped()Z
    .registers 4

    .prologue
    .line 319
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

.method static onImpact(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)V
    .registers 11

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v1, 0x0

    .line 288
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v5, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 289
    if-eqz v5, :cond_b

    if-eq p1, v5, :cond_c

    .line 315
    :cond_b
    :goto_b
    return-void

    .line 290
    :cond_c
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 292
    const/4 v4, 0x2

    if-ne v0, v4, :cond_48

    const/4 v4, 0x1

    if-ne p2, v4, :cond_48

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 293
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidUntil:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_46

    sget v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidDps:F

    :goto_2f
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidDps:F

    .line 294
    add-long v0, v2, v6

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidUntil:J

    .line 295
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidFrom:Lfr/testudo/spacecorsair/business/Element;

    goto :goto_b

    .line 312
    :catch_44
    move-exception v0

    goto :goto_b

    .line 293
    :cond_46
    const/4 v0, 0x0

    goto :goto_2f

    .line 296
    :cond_48
    const/4 v4, 0x6

    if-ne v0, v4, :cond_b

    const/4 v0, 0x5

    if-ne p2, v0, :cond_b

    .line 297
    add-long/2addr v2, v6

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ionUntil:J

    .line 298
    invoke-static {}, Lfr/testudo/spacecorsair/mod/Mod;->playerDrones()[Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v6

    .line 299
    const/4 v2, 0x0

    .line 300
    const/high16 v0, 0x43e10000    # 450.0f

    move v4, v1

    .line 301
    :goto_59
    if-eqz v6, :cond_79

    array-length v1, v6

    if-ge v4, v1, :cond_79

    .line 302
    aget-object v3, v6, v4

    .line 303
    if-eqz v3, :cond_66

    iget-boolean v1, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v1, :cond_6a

    .line 301
    :cond_66
    :goto_66
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_59

    .line 304
    :cond_6a
    iget-object v1, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 305
    cmpg-float v7, v1, v0

    if-gez v7, :cond_66

    move v0, v1

    move-object v2, v3

    goto :goto_66

    .line 307
    :cond_79
    if-eqz v2, :cond_b

    .line 308
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->damage:F

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v2, v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 309
    iget-object v0, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, v5, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v0, v1, v3, v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->addArc(FFFF)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_99} :catch_44

    goto/16 :goto_b
.end method

.method public static onLevel()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretariS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironcladS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    const/4 v0, 0x0

    :goto_26
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 184
    :cond_3c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bitsS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->who:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 186
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidUntil:J

    .line 187
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ionUntil:J

    .line 188
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
    .line 167
    if-nez p0, :cond_3

    .line 171
    :cond_2
    :goto_2
    return-void

    .line 168
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

    .line 169
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

    .line 170
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

    .line 164
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
    iget-object v3, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shooter(Lfr/testudo/spacecorsair/business/Element;)[I

    move-result-object v14

    .line 124
    const/4 v3, 0x0

    aget v3, v14, v3

    if-gez v3, :cond_33

    move v2, v12

    goto :goto_1f

    .line 125
    :cond_33
    instance-of v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyLaser;

    if-nez v3, :cond_3b

    instance-of v3, v2, Lfr/testudo/spacecorsair/business/projectiles/AlienLaser;

    if-eqz v3, :cond_90

    .line 126
    :cond_3b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCapitals;->GUNS:[[Lfr/testudo/spacecorsair/mod/ModCapitals$Gun;

    const/4 v3, 0x0

    aget v3, v14, v3

    aget-object v2, v2, v3

    .line 127
    sget v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->swapN:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->swapN:I

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v10, v2, v3

    .line 128
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

    .line 129
    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 130
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 131
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 132
    iget v3, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->spin:F

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 133
    iget v3, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->level:I

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->level:I

    .line 134
    iget-wide v4, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->lifeTimeInMilli:J

    iput-wide v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 135
    move-object/from16 v0, p0

    invoke-interface {v0, v12, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->released:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_90
    instance-of v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-nez v3, :cond_96

    move v2, v12

    goto :goto_1f

    .line 141
    :cond_96
    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 142
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v4

    .line 143
    if-ltz v4, :cond_11e

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    move v2, v12

    goto/16 :goto_1f

    .line 144
    :cond_a9
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->released:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b4

    move v2, v12

    goto/16 :goto_1f

    .line 145
    :cond_b4
    const/4 v3, 0x0

    aget v3, v14, v3

    .line 146
    if-nez v3, :cond_f7

    if-nez v4, :cond_f7

    .line 147
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;

    invoke-direct {v3}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;-><init>()V

    .line 148
    iput-object v2, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    iget-object v4, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iput-object v4, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    const-wide/16 v4, 0x258

    iput-wide v4, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    const/4 v4, 0x1

    aget v4, v14, v4

    iput v4, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    .line 149
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v5, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v4, v5

    iput v4, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->ox:F

    .line 150
    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v4, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v4, v4, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v4

    iput v2, v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->oy:F

    .line 151
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 153
    add-int/lit8 v2, v12, -0x1

    .line 154
    goto/16 :goto_1f

    .line 156
    :cond_f7
    const/4 v5, 0x1

    if-ne v3, v5, :cond_121

    const/4 v5, 0x1

    if-ne v4, v5, :cond_121

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    iget-object v6, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_109
    :goto_109
    const/4 v5, 0x2

    aget v5, v14, v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_11e

    const/4 v5, 0x1

    aget v5, v14, v5

    iget-object v6, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object v2, v13

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->sound(Lfr/testudo/spacecorsair/business/player/PlayerShip;IIIFF)V

    :cond_11e
    move v2, v12

    goto/16 :goto_1f

    .line 157
    :cond_121
    const/4 v5, 0x2

    if-ne v3, v5, :cond_137

    const/4 v5, 0x1

    if-ne v4, v5, :cond_137

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretariS:Ljava/util/ArrayList;

    iget-object v6, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_109

    .line 161
    :catch_134
    move-exception v2

    goto/16 :goto_8

    .line 158
    :cond_137
    const/4 v5, 0x4

    if-ne v3, v5, :cond_109

    const/4 v5, 0x2

    if-ne v4, v5, :cond_109

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_109

    const/4 v5, 0x2

    aget v5, v14, v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_109

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironcladS:Ljava/util/ArrayList;

    iget-object v6, v11, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_155
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_155} :catch_134

    goto :goto_109
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 22

    .prologue
    .line 196
    if-eqz p0, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_9

    .line 259
    :cond_8
    :goto_8
    return-void

    .line 197
    :cond_9
    :try_start_9
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    move-object/from16 v17, v0

    .line 199
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v16, v2

    :goto_1b
    if-ltz v16, :cond_cf

    .line 200
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;

    move-object v9, v0

    .line 201
    iget-wide v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    sub-long v2, v2, p1

    iput-wide v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    .line 202
    iget-object v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_39

    iget-object v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->s:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_45

    :cond_39
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 199
    :cond_40
    :goto_40
    add-int/lit8 v2, v16, -0x1

    move/from16 v16, v2

    goto :goto_1b

    .line 203
    :cond_45
    iget-wide v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->left:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_40

    .line 204
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 205
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

    .line 206
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->released:Ljava/util/WeakHashMap;

    iget-object v3, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    iget-object v3, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->b:Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
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

    .line 209
    iget v2, v9, Lfr/testudo/spacecorsair/mod/ModEnemyGuns$Held;->size:I

    if-lez v2, :cond_40

    .line 210
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

    if-ne v9, v10, :cond_cc

    const/high16 v9, 0x42b40000    # 90.0f

    :goto_b7
    const v10, 0x3f0ccccd    # 0.55f

    const v11, 0x3f733333    # 0.95f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto/16 :goto_40

    .line 256
    :catch_c9
    move-exception v2

    goto/16 :goto_8

    .line 210
    :cond_cc
    const/high16 v9, 0x42480000    # 50.0f

    goto :goto_b7

    .line 213
    :cond_cf
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_d8
    if-ltz v4, :cond_11d

    .line 214
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 215
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/business/Element;

    .line 216
    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->alive(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)Z

    move-result v5

    if-nez v5, :cond_ff

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 213
    :cond_fb
    :goto_fb
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_d8

    .line 217
    :cond_ff
    iget-object v5, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v5

    const/high16 v6, 0x437a0000    # 250.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_fb

    .line 218
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaver:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->reaverS:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->burst(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_fb

    .line 222
    :cond_11d
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_126
    if-ltz v4, :cond_14d

    .line 223
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

    if-nez v2, :cond_149

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironclad:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->ironcladS:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 222
    :cond_149
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_126

    .line 224
    :cond_14d
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_156
    if-ltz v4, :cond_188

    .line 225
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

    if-nez v2, :cond_184

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->shrapnel:Ljava/util/WeakHashMap;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bits:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->bitsS:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    :cond_184
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_156

    .line 227
    :cond_188
    const/high16 v2, 0x41f00000    # 30.0f

    move-wide/from16 v0, p1

    long-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v5, v2, v3

    .line 228
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_19b
    if-ltz v4, :cond_25e

    .line 229
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 230
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretariS:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/testudo/spacecorsair/business/Element;

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->alive(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Lfr/testudo/spacecorsair/business/Element;I)Z

    move-result v3

    if-nez v3, :cond_1c2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretari:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->kretariS:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    :cond_1be
    :goto_1be
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_19b

    .line 231
    :cond_1c2
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

    .line 232
    mul-float v7, v3, v3

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    const v8, 0x4a095440    # 2250000.0f

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1be

    .line 233
    iget-object v7, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v8, v7

    iget-object v7, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v7, v8

    .line 234
    const v8, 0x3c23d70a    # 0.01f

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_1be

    .line 235
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

    .line 236
    float-to-double v10, v3

    neg-float v3, v6

    float-to-double v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v3, v10

    .line 237
    sub-float/2addr v3, v8

    .line 238
    :goto_21b
    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_225

    const/high16 v6, 0x43b40000    # 360.0f

    sub-float/2addr v3, v6

    goto :goto_21b

    .line 239
    :cond_225
    :goto_225
    const/high16 v6, -0x3ccc0000    # -180.0f

    cmpg-float v6, v3, v6

    if-gez v6, :cond_22f

    const/high16 v6, 0x43b40000    # 360.0f

    add-float/2addr v3, v6

    goto :goto_225

    .line 240
    :cond_22f
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v9, 0x42700000    # 60.0f

    cmpl-float v6, v6, v9

    if-gtz v6, :cond_1be

    .line 241
    neg-float v6, v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v8

    .line 242
    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 243
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

    .line 244
    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    goto/16 :goto_1be

    .line 247
    :cond_25e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 248
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidUntil:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2d0

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidNext:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2d0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v4, :cond_2d0

    .line 249
    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidNext:J

    .line 250
    sget v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidDps:F

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidFrom:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_2d9

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->acidFrom:Lfr/testudo/spacecorsair/business/Element;

    :goto_284
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 251
    const-string v2, "fx_acid_kretari"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_2dc

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

    .line 255
    :cond_2d0
    :goto_2d0
    if-nez v17, :cond_8

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModEnemyGuns;->held:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_8

    :cond_2d9
    move-object/from16 v2, p0

    .line 250
    goto :goto_284

    .line 253
    :cond_2dc
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
    :try_end_314
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_314} :catch_c9

    goto :goto_2d0
.end method
