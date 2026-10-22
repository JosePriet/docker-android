.class public Lfr/testudo/spacecorsair/mod/ModV34;
.super Ljava/lang/Object;
.source "ModV34.java"


# static fields
.field static final ARC:I = 0x5

.field static final ARTY:I = 0x2

.field static final AUTO:I = 0x1

.field static final BLAST:I = 0x3

.field public static final CAP:I = 0x28

.field static final DISINT:I = 0x4

.field static final INCOME_BOUNTIES:F = 80.0f

.field static final RAIL:I = 0x0

.field public static final SLOT_NAMES:[Ljava/lang/String;

.field public static final SOFT_CAP:I = 0x320

.field public static final STAT_CAP:I = 0x3e8

.field public static final STAT_LEVEL:I = 0xa

.field static final STOCK_CLASS:I = 0x1

.field static final TIER_F:[F

.field private static booted:Z

.field private static final freighterArts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lfr/testudo/spacecorsair/display/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final freighters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lfr/testudo/spacecorsair/mod/ModShips$Hull;",
            ">;"
        }
    .end annotation
.end field

.field private static final state:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "[I>;"
        }
    .end annotation
.end field

.field private static want:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArts:Ljava/util/HashMap;

    .line 203
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    .line 237
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_3a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    .line 273
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 348
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "L"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "XL"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->SLOT_NAMES:[Ljava/lang/String;

    return-void

    .line 237
    :array_3a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
        0x3fa66666    # 1.3f
        0x3fc00000    # 1.5f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boot()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 54
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModV34;->booted:Z

    if-eqz v0, :cond_6

    .line 68
    :cond_5
    :goto_5
    return-void

    .line 55
    :cond_6
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModV34;->booted:Z

    .line 57
    :try_start_8
    const-class v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "levelMin"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v2, "levelMax"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 58
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v4, :cond_5

    aget-object v5, v3, v0

    .line 61
    sget-object v6, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v5, v6, :cond_32

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v5, v6, :cond_35

    .line 60
    :cond_32
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 62
    :cond_35
    iget v6, v5, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 63
    iget v6, v5, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_47} :catch_48

    goto :goto_32

    .line 65
    :catch_48
    move-exception v0

    goto :goto_5
.end method

.method public static boss(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x2

    .line 329
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 330
    if-nez v0, :cond_3c

    move v2, v3

    :goto_d
    if-nez v0, :cond_41

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->statBase(I)I

    move-result v1

    .line 331
    :goto_17
    if-eqz v0, :cond_31

    array-length v4, v0

    if-le v4, v5, :cond_31

    const/4 v4, 0x2

    aget v4, v0, v4

    if-ne v4, v3, :cond_31

    .line 332
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v4, 0x40200000    # 2.5f

    div-float/2addr v3, v4

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 333
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v4, 0x3fc00000    # 1.5f

    div-float/2addr v3, v4

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 334
    add-int/lit16 v1, v1, -0x96

    .line 336
    :cond_31
    if-eqz v0, :cond_45

    array-length v3, v0

    if-le v3, v5, :cond_45

    const/4 v3, 0x2

    aget v0, v0, v3

    if-ne v0, v5, :cond_45

    .line 345
    :goto_3b
    return-void

    .line 330
    :cond_3c
    const/4 v1, 0x0

    aget v1, v0, v1

    move v2, v1

    goto :goto_d

    :cond_41
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_17

    .line 337
    :cond_45
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    add-int/lit16 v1, v1, 0x12c

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v3, v4

    const/4 v1, 0x2

    const/4 v4, 0x2

    aput v4, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 339
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 340
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 341
    const/4 v0, 0x4

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_76} :catch_77

    goto :goto_3b

    .line 342
    :catch_77
    move-exception v0

    goto :goto_3b
.end method

.method public static bounty(I)F
    .registers 7

    .prologue
    .line 128
    const/4 v0, 0x0

    const/16 v1, 0x28

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 129
    const v1, 0x43b1c000    # 355.5f

    add-int/lit8 v0, v0, 0x1

    int-to-double v2, v0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static classFactor(I)F
    .registers 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 241
    packed-switch p0, :pswitch_data_1c

    .line 249
    :goto_5
    :pswitch_5
    return v0

    .line 242
    :pswitch_6
    const v0, 0x3f19999a    # 0.6f

    goto :goto_5

    .line 244
    :pswitch_a
    const v0, 0x3fcccccd    # 1.6f

    goto :goto_5

    .line 245
    :pswitch_e
    const v0, 0x400ccccd    # 2.2f

    goto :goto_5

    .line 246
    :pswitch_12
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_5

    .line 247
    :pswitch_15
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_5

    .line 248
    :pswitch_18
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_5

    .line 241
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public static counter(Ljava/lang/String;Ljava/lang/String;I)F
    .registers 6

    .prologue
    .line 463
    const/high16 v0, 0x3f800000    # 1.0f

    .line 464
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 465
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModCounterData;->beats(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    .line 468
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    if-ltz p2, :cond_2b

    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModCounterData;->weaponTaken(Ljava/lang/String;I)F

    move-result v1

    mul-float/2addr v0, v1

    .line 469
    :cond_2b
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 466
    :cond_38
    invoke-static {p1, p0}, Lfr/testudo/spacecorsair/mod/ModCounterData;->beats(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    goto :goto_1e
.end method

.method public static curve(I)F
    .registers 5

    .prologue
    .line 270
    const-wide v0, 0x3ff11eb851eb851fL    # 1.07

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0xf

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static damage(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 475
    if-eqz p2, :cond_9

    if-eqz p0, :cond_9

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_a

    .line 492
    :cond_9
    :goto_9
    return p1

    .line 476
    :cond_a
    :try_start_a
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 477
    if-eqz v1, :cond_9

    .line 478
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_42

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->difficult(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v4

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v5

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModV34;->dodge(II)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_42

    .line 479
    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 480
    const-string v1, "EVADED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    move p1, v0

    .line 481
    goto :goto_9

    .line 483
    :cond_42
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v2

    .line 484
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v4

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v5

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModV34;->pilot(II)F

    move-result v4

    mul-float/2addr v4, p1

    invoke-static {v3, v0, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->counter(Ljava/lang/String;Ljava/lang/String;I)F

    move-result v0

    mul-float/2addr v0, v4

    .line 486
    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_77

    .line 487
    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->weaponRule(Ljava/lang/String;I)F

    move-result v1

    mul-float/2addr v0, v1

    .line 488
    if-nez v2, :cond_77

    const-string v1, "spartan"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_70} :catch_79

    move-result v1

    if-eqz v1, :cond_77

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    :cond_77
    move p1, v0

    .line 490
    goto :goto_9

    .line 491
    :catch_79
    move-exception v0

    goto :goto_9
.end method

.method public static deathFee(I)I
    .registers 4

    .prologue
    .line 159
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->bounty(I)F

    move-result v0

    .line 160
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static difficult(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_11

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_d
    move v2, v0

    .line 233
    :cond_e
    :goto_e
    return v2

    :cond_f
    move v0, v2

    .line 231
    goto :goto_d

    .line 232
    :cond_11
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_e

    move-object v0, p0

    .line 233
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-nez v0, :cond_22

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_22
    move v2, v1

    goto :goto_e
.end method

.method public static dodge(II)F
    .registers 6

    .prologue
    .line 227
    const/4 v0, 0x0

    const/high16 v1, 0x3e800000    # 0.25f

    sub-int v2, p0, p1

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static elite(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 8

    .prologue
    const/4 v3, 0x2

    .line 309
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 310
    if-nez v0, :cond_22

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->statBase(I)I

    move-result v2

    aput v2, v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_22
    array-length v1, v0

    if-le v1, v3, :cond_26

    .line 321
    :goto_25
    return-void

    .line 312
    :cond_26
    const/4 v1, 0x4

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 313
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    const/4 v6, 0x1

    aget v6, v0, v6

    add-int/lit16 v6, v6, 0x96

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    aput v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 315
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 316
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 317
    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModV34;->retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_65} :catch_66

    goto :goto_25

    .line 318
    :catch_66
    move-exception v0

    goto :goto_25
.end method

.method static factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 388
    if-nez p0, :cond_5

    :try_start_2
    const-string v0, ""

    .line 403
    :goto_4
    return-object v0

    .line 389
    :cond_5
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_10

    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 390
    :cond_10
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_1f

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    if-eqz v1, :cond_1f

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    goto :goto_4

    .line 392
    :cond_1f
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    if-eqz v0, :cond_30

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 393
    :cond_30
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_51

    .line 394
    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 395
    if-eqz v0, :cond_51

    .line 396
    const-string v1, "Reaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v0, "reaver"

    goto :goto_4

    .line 397
    :cond_45
    const-string v1, "Kre\'tari"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "kretari"
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4f} :catch_50

    goto :goto_4

    .line 400
    :catch_50
    move-exception v0

    .line 403
    :cond_51
    const-string v0, ""

    goto :goto_4
.end method

.method public static fits(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 373
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->weaponSize(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    .line 374
    if-gez v1, :cond_8

    .line 378
    :cond_7
    :goto_7
    return v0

    .line 375
    :cond_8
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    .line 376
    if-ltz v2, :cond_7

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->slotOf(I)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_20

    move-result v2

    if-le v1, v2, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    .line 377
    :catch_20
    move-exception v1

    goto :goto_7
.end method

.method public static freighter(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;)V
    .registers 9

    .prologue
    .line 101
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_10

    .line 109
    :cond_f
    :goto_f
    return-void

    .line 103
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModShips;->HULLS:[Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v3, :cond_2a

    aget-object v4, v2, v0

    if-eqz v4, :cond_27

    iget v5, v4, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_27

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 105
    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_f

    .line 106
    :catch_47
    move-exception v0

    goto :goto_f
.end method

.method public static freighterArt(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;Lfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 8

    .prologue
    .line 113
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    .line 114
    if-nez v0, :cond_b

    .line 122
    :cond_a
    :goto_a
    return-object p1

    .line 115
    :cond_b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArts:Ljava/util/HashMap;

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/display/Drawable;

    .line 116
    if-nez v1, :cond_37

    .line 117
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_a

    .line 119
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v4, v4

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    .line 120
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArts:Ljava/util/HashMap;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    move-object p1, v1

    .line 122
    goto :goto_a
.end method

.method public static levelShield()F
    .registers 5

    .prologue
    .line 165
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a    # 0.01f

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerLevel()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x11

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static lvl(I)I
    .registers 3

    .prologue
    .line 46
    const/4 v0, 0x4

    if-gt p0, v0, :cond_9

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 47
    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x28

    add-int/lit8 v1, p0, -0x4

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_8
.end method

.method public static offFaction(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 439
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Ljava/lang/String;

    move-result-object v1

    .line 440
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v2

    .line 441
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1a

    if-ltz v2, :cond_1a

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->ownFamily(Ljava/lang/String;I)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_1b

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    .line 443
    :cond_1a
    :goto_1a
    return v0

    .line 442
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method public static offFactionRate(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    const v3, 0x3f19999a    # 0.6f

    .line 450
    :try_start_3
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    div-float/2addr v0, v3

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    .line 451
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootSpeed:F

    mul-float/2addr v0, v3

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootSpeed:F

    .line 452
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v1, v1

    if-ge v0, v1, :cond_35

    .line 453
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v2, v2, v0

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    .line 454
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v0

    iget v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F

    mul-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_31} :catch_34

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 456
    :catch_34
    move-exception v0

    .line 459
    :cond_35
    return-void
.end method

.method static ownFamily(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 408
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 415
    :cond_b
    :goto_b
    return v0

    .line 409
    :cond_c
    const-string v2, "spartan"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz p1, :cond_b

    move v0, v1

    goto :goto_b

    .line 410
    :cond_18
    const-string v2, "warden"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz p1, :cond_25

    const/4 v2, 0x5

    if-ne p1, v2, :cond_26

    :cond_25
    move v1, v0

    :cond_26
    move v0, v1

    goto :goto_b

    .line 411
    :cond_28
    const-string v2, "reaver"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "kretari"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_38
    if-eq p1, v0, :cond_b

    move v0, v1

    goto :goto_b

    .line 412
    :cond_3c
    const-string v2, "varn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x4

    if-eq p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 413
    :cond_49
    const-string v2, "ironclad"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 414
    :cond_56
    const-string v2, "helion"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v2, 0x3

    if-eq p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    :cond_63
    move v0, v1

    .line 415
    goto :goto_b
.end method

.method public static pilot(II)F
    .registers 8

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 220
    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    .line 221
    const v1, 0x3e99999a    # 0.3f

    sub-int v2, p1, p0

    add-int/lit16 v2, v2, -0xfa

    int-to-float v2, v2

    div-float/2addr v2, v3

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 222
    sub-float v1, v5, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method static playerLevel()I
    .registers 1

    .prologue
    .line 71
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static playerStat()I
    .registers 3

    .prologue
    .line 199
    const/16 v0, 0x3e8

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerLevel()I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->statBase(I)I

    move-result v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->storiesDone()I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->storyBonus(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static railReload(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    const v3, 0x3f666666    # 0.9f

    .line 428
    :try_start_3
    const-string v0, "warden"

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 434
    :cond_17
    :goto_17
    return-void

    .line 429
    :cond_18
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    .line 430
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    :goto_24
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v2, v2, v0

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_38} :catch_3b

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 431
    :catch_3b
    move-exception v0

    goto :goto_17
.end method

.method public static rareSalvage(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;I)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 138
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_21

    :cond_d
    move v2, v0

    .line 139
    :goto_e
    if-eqz v2, :cond_24

    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    :goto_13
    if-eqz v2, :cond_31

    const/high16 v0, 0x3f000000    # 0.5f

    .line 140
    :goto_17
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v1

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_3b

    .line 149
    :goto_20
    return-void

    .line 138
    :cond_21
    const/4 v0, 0x0

    move v2, v0

    goto :goto_e

    .line 139
    :cond_24
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_2c

    const/high16 v0, 0x3e800000    # 0.25f

    move v1, v0

    goto :goto_13

    :cond_2c
    const v0, 0x3d23d70a    # 0.04f

    move v1, v0

    goto :goto_13

    :cond_31
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v0, :cond_38

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_17

    :cond_38
    const/high16 v0, 0x41480000    # 12.5f

    goto :goto_17

    .line 141
    :cond_3b
    const/4 v1, 0x1

    int-to-float v2, p1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 143
    invoke-static {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 144
    :goto_55
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    .line 145
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newGoldMessage()Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " c "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "RARE SALVAGE"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Lfr/testudo/spacecorsair/display/GoldTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v0

    .line 144
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 146
    :catch_8c
    move-exception v0

    goto :goto_20

    .line 143
    :cond_8e
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object p0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_92} :catch_8c

    goto :goto_55
.end method

.method public static refundIndustrials(Lfr/testudo/spacecorsair/business/player/PlayerInfo;)V
    .registers 8

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 81
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v4

    .line 82
    if-eqz v4, :cond_d

    iget v5, v4, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_d

    .line 83
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->price:I

    add-int/2addr v0, v1

    move v1, v0

    .line 85
    goto :goto_d

    .line 86
    :cond_2c
    if-gtz v1, :cond_2f

    .line 93
    :goto_2e
    return-void

    .line 87
    :cond_2f
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Industrial ship retired. Refund: "

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cr. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Fitted gear stays on your pilot."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_67} :catch_68

    goto :goto_2e

    .line 90
    :catch_68
    move-exception v0

    goto :goto_2e
.end method

.method static retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    .registers 7

    .prologue
    .line 258
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    aget v0, v0, p2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    aget v1, v1, p1

    div-float/2addr v0, v1

    .line 259
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_10

    .line 266
    :cond_f
    :goto_f
    return-void

    .line 260
    :cond_10
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v1, v0

    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 261
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    .line 262
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v1, :cond_f

    .line 263
    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 264
    if-eqz v1, :cond_f

    iget v2, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v0, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    goto :goto_f
.end method

.method public static scale(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 11

    .prologue
    .line 283
    :try_start_0
    sget v2, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    if-le v2, v3, :cond_18

    .line 284
    const/16 v2, 0x28

    sget v3, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 285
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 287
    :cond_18
    const/4 v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 288
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v2

    .line 289
    const/4 v3, 0x1

    const/4 v4, 0x4

    div-int/lit8 v5, v2, 0xc

    add-int/lit8 v5, v5, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 290
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->statBase(I)I

    move-result v7

    aput v7, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v5

    mul-float/2addr v4, v5

    .line 292
    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v5, v4

    iput v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 293
    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 294
    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    int-to-float v5, v5

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 295
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v2, v4

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 296
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v2, :cond_89

    .line 297
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-object v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 298
    if-eqz v2, :cond_89

    iget v5, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v4, v5

    iput v4, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v4, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v4, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 300
    :cond_89
    const/4 v2, 0x1

    invoke-static {p0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8d} :catch_8e

    .line 304
    :goto_8d
    return-void

    .line 301
    :catch_8e
    move-exception v2

    goto :goto_8d
.end method

.method public static shipLife()[I
    .registers 10

    .prologue
    .line 38
    const/16 v0, 0x18

    new-array v2, v0, [I

    fill-array-data v2, :array_36

    .line 39
    const/16 v0, 0x29

    new-array v3, v0, [I

    .line 40
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    const/16 v0, 0x28

    if-gt v1, v0, :cond_34

    array-length v0, v2

    if-ge v1, v0, :cond_1c

    aget v0, v2, v1

    :goto_16
    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_1c
    const-wide v4, 0x40c3ba0000000000L    # 10100.0

    const-wide v6, 0x3ff11eb851eb851fL    # 1.07

    add-int/lit8 v0, v1, -0x17

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    goto :goto_16

    .line 41
    :cond_34
    return-object v3

    .line 38
    nop

    :array_36
    .array-data 4
        0x12c
        0x15e
        0x190
        0x1c2
        0x1f4
        0x226
        0x258
        0x28a
        0x2bc
        0x320
        0x384
        0x44c
        0x514
        0x640
        0x76c
        0x9c4
        0xbb8
        0xe74
        0x1194
        0x15e0
        0x19c8
        0x1f40
        0x23f0
        0x2774
    .end array-data
.end method

.method public static slotOf(I)I
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 352
    packed-switch p0, :pswitch_data_c

    .line 357
    :goto_4
    :pswitch_4
    return v0

    .line 353
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 355
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 356
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 352
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method static stat(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    .line 206
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 210
    :goto_3
    return v0

    .line 207
    :cond_4
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerStat()I

    move-result v0

    goto :goto_3

    .line 208
    :cond_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 209
    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_3

    .line 210
    :cond_1b
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getLevel()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->statBase(I)I

    move-result v0

    goto :goto_3
.end method

.method public static statBase(I)I
    .registers 3

    .prologue
    .line 173
    const/16 v0, 0xa

    if-ge p0, v0, :cond_6

    const/4 v0, 0x0

    .line 174
    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x1e

    add-int/lit8 v1, p0, -0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x320

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_5
.end method

.method static storiesDone()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 192
    if-nez v3, :cond_9

    move v0, v1

    .line 195
    :cond_8
    return v0

    .line 194
    :cond_9
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_e
    if-ge v2, v5, :cond_8

    aget-object v6, v4, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "v34_story_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2d

    add-int/lit8 v0, v0, 0x1

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method public static storyBonus(I)I
    .registers 8

    .prologue
    const/16 v6, 0xc8

    const/4 v1, 0x0

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v4, v0

    move v0, v1

    move v2, v1

    .line 180
    :goto_8
    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_1c

    div-int v5, v6, v4

    rem-int v3, v6, v4

    if-ge v0, v3, :cond_1a

    const/4 v3, 0x1

    :goto_15
    add-int/2addr v3, v5

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    move v3, v1

    goto :goto_15

    .line 181
    :cond_1c
    return v2
.end method

.method public static storyDone(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 186
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v34_story_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    :cond_25
    return-void
.end method

.method static tier(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    .line 214
    if-nez p0, :cond_7

    const/4 v0, 0x0

    .line 215
    :goto_3
    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_6
    return v0

    .line 214
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_3

    .line 215
    :cond_10
    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_6
.end method

.method public static want(I)V
    .registers 1

    .prologue
    .line 277
    sput p0, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 278
    return-void
.end method

.method public static weaponRule(Ljava/lang/String;I)F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 420
    if-gez p1, :cond_5

    .line 422
    :cond_4
    :goto_4
    return v0

    .line 421
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    const v0, 0x3f59999a    # 0.85f

    goto :goto_4

    .line 422
    :cond_f
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModV34;->ownFamily(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    const v0, 0x3f19999a    # 0.6f

    goto :goto_4
.end method

.method public static weaponSize(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I
    .registers 6

    .prologue
    .line 363
    if-nez p0, :cond_e

    const/4 v0, 0x0

    move-object v2, v0

    .line 364
    :goto_4
    if-eqz v2, :cond_c

    iget-object v0, v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    if-eq v0, v1, :cond_14

    :cond_c
    const/4 v1, -0x1

    .line 367
    :cond_d
    return v1

    .line 363
    :cond_e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 365
    :cond_14
    const/4 v1, 0x0

    .line 366
    const/4 v0, 0x1

    :goto_16
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_REQ:[I

    array-length v3, v3

    if-ge v0, v3, :cond_d

    iget v3, v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModSpecs;->TIER_REQ:[I

    aget v4, v4, v0

    if-lt v3, v4, :cond_24

    move v1, v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public static xpCap()[J
    .registers 10

    .prologue
    .line 30
    const/16 v0, 0x11

    new-array v3, v0, [J

    fill-array-data v3, :array_34

    .line 31
    const/16 v0, 0x29

    new-array v4, v0, [J

    .line 32
    const/4 v0, 0x0

    move v2, v0

    :goto_d
    const/16 v0, 0x28

    if-gt v2, v0, :cond_33

    array-length v0, v3

    if-ge v2, v0, :cond_1c

    aget-wide v0, v3, v2

    :goto_16
    aput-wide v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_1c
    const-wide v0, 0x40e2110000000000L    # 37000.0

    const-wide v6, 0x3ff0cccccccccccdL    # 1.05

    add-int/lit8 v5, v2, -0x10

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    goto :goto_16

    .line 33
    :cond_33
    return-object v4

    .line 30
    :array_34
    .array-data 8
        0x4b0
        0x514
        0x640
        0xaf0
        0x1194
        0x1388
        0x1f40
        0x2ee0
        0x3a98
        0x3e80
        0x4650
        0x4e20
        0x55f0
        0x61a8
        0x7148
        0x84d0
        0x9088
    .end array-data
.end method
