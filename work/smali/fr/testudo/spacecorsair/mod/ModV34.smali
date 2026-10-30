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

.field static final RAIL:I = 0x0

.field public static final RARE_K:[F

.field public static final RARE_P:[F

.field public static final SLOT_NAMES:[Ljava/lang/String;

.field public static final SOFT_CAP:I = 0x320

.field public static final STAT_CAP:I = 0x3e8

.field public static final STAT_LEVEL:I = 0xa

.field static final STOCK_CLASS:I = 0x1

.field public static final TIER_F:[F

.field static final UNDER_FIRE:F = 0.85f

.field static final UNDER_FIRE_MS:J = 0xbb8L

.field static final WINDOW:I = 0x3c

.field static final bigShield:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "[F>;"
        }
    .end annotation
.end field

.field private static booted:Z

.field private static cur:J

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

.field private static lastCredit:J

.field private static lastMs:J

.field private static minMs:J

.field private static perMin:[J

.field private static ring:I

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

.field private static final stockLvOf:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static tracked:I

.field private static want:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 95
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArts:Ljava/util/HashMap;

    .line 133
    new-array v0, v3, [F

    fill-array-data v0, :array_5a

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->RARE_P:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_64

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->RARE_K:[F

    .line 171
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->lastCredit:J

    .line 268
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    .line 302
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_6e

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    .line 370
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 418
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->stockLvOf:Ljava/util/WeakHashMap;

    .line 419
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    .line 526
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

    const-string v1, "XL"

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->SLOT_NAMES:[Ljava/lang/String;

    return-void

    .line 133
    :array_5a
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_64
    .array-data 4
        0x41480000    # 12.5f
        0x40000000    # 2.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 302
    :array_6e
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

.method public static baseHull(I)F
    .registers 6

    .prologue
    .line 344
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienRatSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    .line 345
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->UfoSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    .line 346
    const/4 v2, 0x0

    array-length v3, v0

    array-length v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 347
    aget-object v0, v0, v2

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    aget-object v1, v1, v2

    iget v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_23

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 349
    :goto_22
    return v0

    .line 348
    :catch_23
    move-exception v0

    .line 349
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_22
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

    .line 507
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 508
    if-nez v0, :cond_3c

    move v2, v3

    :goto_d
    if-nez v0, :cond_41

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->statBase(I)I

    move-result v1

    .line 509
    :goto_17
    if-eqz v0, :cond_31

    array-length v4, v0

    if-le v4, v5, :cond_31

    const/4 v4, 0x2

    aget v4, v0, v4

    if-ne v4, v3, :cond_31

    .line 510
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v4, 0x40200000    # 2.5f

    div-float/2addr v3, v4

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 511
    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v4, 0x3fc00000    # 1.5f

    div-float/2addr v3, v4

    iput v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 512
    add-int/lit16 v1, v1, -0x96

    .line 514
    :cond_31
    if-eqz v0, :cond_45

    array-length v3, v0

    if-le v3, v5, :cond_45

    const/4 v3, 0x2

    aget v0, v0, v3

    if-ne v0, v5, :cond_45

    .line 523
    :goto_3b
    return-void

    .line 508
    :cond_3c
    const/4 v1, 0x0

    aget v1, v0, v1

    move v2, v1

    goto :goto_d

    :cond_41
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_17

    .line 515
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

    .line 516
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 517
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 518
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 519
    const/4 v0, 0x4

    invoke-static {p0, v2, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_76} :catch_77

    goto :goto_3b

    .line 520
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

    .line 306
    packed-switch p0, :pswitch_data_1c

    .line 314
    :goto_5
    :pswitch_5
    return v0

    .line 307
    :pswitch_6
    const v0, 0x3f19999a    # 0.6f

    goto :goto_5

    .line 309
    :pswitch_a
    const v0, 0x3fcccccd    # 1.6f

    goto :goto_5

    .line 310
    :pswitch_e
    const v0, 0x400ccccd    # 2.2f

    goto :goto_5

    .line 311
    :pswitch_12
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_5

    .line 312
    :pswitch_15
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_5

    .line 313
    :pswitch_18
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_5

    .line 306
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
    .line 643
    const/high16 v0, 0x3f800000    # 1.0f

    .line 644
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 645
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModCounterData;->beats(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    .line 648
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    if-ltz p2, :cond_2b

    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModCounterData;->weaponTaken(Ljava/lang/String;I)F

    move-result v1

    mul-float/2addr v0, v1

    .line 649
    :cond_2b
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 646
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
    .line 367
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

    .line 683
    if-eqz p2, :cond_9

    if-eqz p0, :cond_9

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_a

    .line 700
    :cond_9
    :goto_9
    return p1

    .line 684
    :cond_a
    :try_start_a
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 685
    if-eqz v1, :cond_9

    .line 686
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

    .line 687
    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 688
    const-string v1, "EVADED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    move p1, v0

    .line 689
    goto :goto_9

    .line 691
    :cond_42
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v2

    .line 692
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v0

    .line 693
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

    .line 694
    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_77

    .line 695
    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->weaponRule(Ljava/lang/String;I)F

    move-result v1

    mul-float/2addr v0, v1

    .line 696
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

    .line 698
    goto :goto_9

    .line 699
    :catch_79
    move-exception v0

    goto :goto_9
.end method

.method public static deathFee(I)I
    .registers 2

    .prologue
    .line 160
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->hourlyIncome(I)F

    move-result v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->deathFee(IF)I

    move-result v0

    return v0
.end method

.method public static deathFee(IF)I
    .registers 6

    .prologue
    .line 164
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->bounty(I)F

    move-result v0

    .line 165
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v2, p1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static difficult(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_11

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_d
    move v2, v0

    .line 298
    :cond_e
    :goto_e
    return v2

    :cond_f
    move v0, v2

    .line 296
    goto :goto_d

    .line 297
    :cond_11
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_e

    move-object v0, p0

    .line 298
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
    .line 292
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

    .line 479
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 480
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

    .line 481
    :cond_22
    array-length v1, v0

    if-le v1, v3, :cond_26

    .line 499
    :cond_25
    :goto_25
    return-void

    .line 482
    :cond_26
    const/4 v1, 0x4

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 483
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

    .line 484
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 485
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 486
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 487
    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModV34;->retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V

    .line 489
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stockClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    .line 490
    if-ltz v0, :cond_25

    const/4 v1, 0x6

    if-ge v0, v1, :cond_25

    .line 491
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v0

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 492
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 493
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->stockLvOf:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 494
    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_91
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModV34;->giveShield(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V

    goto :goto_25

    .line 496
    :catch_99
    move-exception v0

    goto :goto_25

    .line 494
    :cond_9b
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9e} :catch_99

    move-result v0

    goto :goto_91
.end method

.method static factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 566
    if-nez p0, :cond_5

    :try_start_2
    const-string v0, ""

    .line 583
    :cond_4
    :goto_4
    return-object v0

    .line 567
    :cond_5
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_10

    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 568
    :cond_10
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v0

    .line 569
    if-nez v0, :cond_4

    .line 570
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_25

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    if-eqz v1, :cond_25

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    goto :goto_4

    .line 572
    :cond_25
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;

    if-eqz v0, :cond_36

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 573
    :cond_36
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_57

    .line 574
    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 575
    if-eqz v0, :cond_57

    .line 576
    const-string v1, "Reaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v0, "reaver"

    goto :goto_4

    .line 577
    :cond_4b
    const-string v1, "Kre\'tari"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "kretari"
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_55} :catch_56

    goto :goto_4

    .line 580
    :catch_56
    move-exception v0

    .line 583
    :cond_57
    const-string v0, ""

    goto :goto_4
.end method

.method public static fits(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 551
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->weaponSize(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    .line 552
    if-gez v1, :cond_8

    .line 556
    :cond_7
    :goto_7
    return v0

    .line 553
    :cond_8
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    .line 554
    if-ltz v2, :cond_7

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->slotOf(I)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_20

    move-result v2

    if-le v1, v2, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    .line 555
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

.method static giveShield(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    .registers 11

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 424
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->enemyClass(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)I

    move-result v0

    .line 426
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stockClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v1

    .line 427
    if-ltz v1, :cond_1e

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v2, :cond_1e

    const/4 v0, 0x6

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 428
    :cond_1e
    if-lt v0, v7, :cond_24

    instance-of v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v1, :cond_25

    .line 431
    :cond_24
    :goto_24
    return-void

    .line 429
    :cond_25
    invoke-static {p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldStats(III)[F

    move-result-object v0

    .line 430
    if-eqz v0, :cond_24

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    const/4 v2, 0x5

    new-array v2, v2, [F

    aget v3, v0, v4

    aput v3, v2, v4

    aget v3, v0, v4

    aput v3, v2, v6

    const/4 v3, 0x2

    aget v0, v0, v6

    aput v0, v2, v3

    aput v5, v2, v7

    const/4 v0, 0x4

    aput v5, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24
.end method

.method public static hourlyIncome(I)F
    .registers 9

    .prologue
    .line 175
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->loadIncome()V

    .line 176
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModV34;->cur:J

    .line 177
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    array-length v4, v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v4, :cond_11

    aget-wide v6, v1, v0

    add-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 178
    :cond_11
    long-to-float v0, v2

    sget v1, Lfr/testudo/spacecorsair/mod/ModV34;->tracked:I

    rsub-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->income(I)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method static incomeTick(J)V
    .registers 12

    .prologue
    const/16 v8, 0x3c

    const-wide/16 v2, 0x0

    .line 200
    :try_start_4
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->lastMs:J

    sub-long v0, p0, v0

    const-wide/16 v4, 0x3e8

    cmp-long v0, v0, v4

    if-gez v0, :cond_f

    .line 222
    :cond_e
    :goto_e
    return-void

    .line 201
    :cond_f
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->lastMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_90

    move-wide v0, v2

    .line 202
    :goto_16
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModV34;->lastMs:J

    .line 203
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->loadIncome()V

    .line 204
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v4

    .line 205
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModV34;->lastCredit:J

    cmp-long v2, v6, v2

    if-ltz v2, :cond_3a

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModV34;->lastCredit:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_3a

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModV34;->cur:J

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModV34;->lastCredit:J

    sub-long v6, v4, v6

    add-long/2addr v2, v6

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModV34;->cur:J

    .line 206
    :cond_3a
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModV34;->lastCredit:J

    .line 207
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModV34;->minMs:J

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->minMs:J

    .line 208
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->minMs:J

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    .line 209
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->minMs:J

    .line 210
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    sget v1, Lfr/testudo/spacecorsair/mod/ModV34;->ring:I

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModV34;->cur:J

    aput-wide v2, v0, v1

    .line 211
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->cur:J

    .line 212
    sget v0, Lfr/testudo/spacecorsair/mod/ModV34;->ring:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3c

    sput v0, Lfr/testudo/spacecorsair/mod/ModV34;->ring:I

    .line 213
    const/16 v0, 0x3c

    sget v1, Lfr/testudo/spacecorsair/mod/ModV34;->tracked:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModV34;->tracked:I

    .line 214
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 215
    if-eqz v2, :cond_e

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_7b
    if-ge v1, v8, :cond_9f

    if-lez v1, :cond_9c

    const-string v0, ","

    :goto_81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    aget-wide v4, v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7b

    .line 201
    :cond_90
    const-wide/16 v0, 0x7d0

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModV34;->lastMs:J

    sub-long v4, p0, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto/16 :goto_16

    .line 217
    :cond_9c
    const-string v0, ""

    goto :goto_81

    .line 218
    :cond_9f
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v37_income"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v37_income_n"

    sget v2, Lfr/testudo/spacecorsair/mod/ModV34;->tracked:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v37_income_i"

    sget v2, Lfr/testudo/spacecorsair/mod/ModV34;->ring:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_c0} :catch_c2

    goto/16 :goto_e

    .line 219
    :catch_c2
    move-exception v0

    goto/16 :goto_e
.end method

.method public static levelShield()F
    .registers 1

    .prologue
    .line 226
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerLevel()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->levelShield(I)F

    move-result v0

    return v0
.end method

.method public static levelShield(I)F
    .registers 5

    .prologue
    .line 230
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a    # 0.01f

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x11

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static loadIncome()V
    .registers 8

    .prologue
    const/16 v7, 0x3c

    const/4 v1, 0x0

    .line 182
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    if-eqz v0, :cond_8

    .line 195
    :cond_7
    :goto_7
    return-void

    .line 183
    :cond_8
    new-array v0, v7, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    .line 185
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_7

    .line 187
    const-string v2, "v37_income"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 188
    const/16 v3, 0x3c

    const-string v4, "v37_income_n"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModV34;->tracked:I

    .line 189
    const/4 v3, 0x0

    const/16 v4, 0x3b

    const-string v5, "v37_income_i"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModV34;->ring:I

    move v0, v1

    .line 190
    :goto_44
    if-ge v0, v7, :cond_7

    array-length v3, v2

    if-ge v0, v3, :cond_7

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5b

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v0
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_5b} :catch_5e

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 191
    :catch_5e
    move-exception v0

    .line 192
    new-array v0, v7, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    .line 193
    sput v1, Lfr/testudo/spacecorsair/mod/ModV34;->tracked:I

    goto :goto_7
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

    .line 619
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Ljava/lang/String;

    move-result-object v1

    .line 620
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v2

    .line 621
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

    .line 623
    :cond_1a
    :goto_1a
    return v0

    .line 622
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method public static offFactionRate(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    const v3, 0x3f19999a    # 0.6f

    .line 630
    :try_start_3
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    div-float/2addr v0, v3

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    .line 631
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootSpeed:F

    mul-float/2addr v0, v3

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootSpeed:F

    .line 632
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v1, v1

    if-ge v0, v1, :cond_35

    .line 633
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v2, v2, v0

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    .line 634
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v0

    iget v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F

    mul-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_31} :catch_34

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 636
    :catch_34
    move-exception v0

    .line 639
    :cond_35
    return-void
.end method

.method static ownFamily(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 588
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 595
    :cond_b
    :goto_b
    return v0

    .line 589
    :cond_c
    const-string v2, "spartan"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz p1, :cond_b

    move v0, v1

    goto :goto_b

    .line 590
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

    .line 591
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

    .line 592
    :cond_3c
    const-string v2, "varn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x4

    if-eq p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 593
    :cond_49
    const-string v2, "ironclad"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 594
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

    .line 595
    goto :goto_b
.end method

.method public static pilot(II)F
    .registers 8

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 285
    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    .line 286
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

    .line 287
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
    .line 264
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

    .line 608
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

    .line 614
    :cond_17
    :goto_17
    return-void

    .line 609
    :cond_18
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    .line 610
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

    .line 611
    :catch_3b
    move-exception v0

    goto :goto_17
.end method

.method public static rareSalvage(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;I)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 138
    :try_start_2
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_24

    :cond_e
    move v2, v0

    .line 139
    :goto_f
    if-eqz v2, :cond_26

    const/4 v0, 0x2

    .line 140
    :cond_12
    :goto_12
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->RARE_P:[F

    aget v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->RARE_K:[F

    aget v0, v2, v0

    .line 141
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v1

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2c

    .line 151
    :goto_23
    return-void

    :cond_24
    move v2, v1

    .line 138
    goto :goto_f

    .line 139
    :cond_26
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-nez v2, :cond_12

    move v0, v1

    goto :goto_12

    .line 142
    :cond_2c
    const/4 v1, 0x1

    int-to-float v2, p1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 143
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 144
    const/4 v1, 0x1

    invoke-static {v1, p0}, Lfr/testudo/spacecorsair/mod/ModV35;->addParts(ILfr/testudo/spacecorsair/business/Element;)V

    .line 145
    invoke-static {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 146
    :goto_4a
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    .line 147
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

    .line 146
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 148
    :catch_81
    move-exception v0

    goto :goto_23

    .line 145
    :cond_83
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object p0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_87} :catch_81

    goto :goto_4a
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

.method public static regen(FFJ)F
    .registers 8

    .prologue
    .line 447
    mul-float v1, p0, p1

    const-wide/16 v2, 0xbb8

    cmp-long v0, p2, v2

    if-gez v0, :cond_d

    const v0, 0x3f59999a    # 0.85f

    :goto_b
    mul-float/2addr v0, v1

    return v0

    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_b
.end method

.method static retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    .registers 7

    .prologue
    .line 355
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    aget v0, v0, p2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    aget v1, v1, p1

    div-float/2addr v0, v1

    .line 356
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_10

    .line 363
    :cond_f
    :goto_f
    return-void

    .line 357
    :cond_10
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v1, v0

    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 358
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    .line 359
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v1, :cond_f

    .line 360
    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 361
    if-eqz v1, :cond_f

    iget v2, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v0, v1, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v0, v1, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    goto :goto_f
.end method

.method public static scale(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 13

    .prologue
    .line 380
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stockClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 381
    if-ltz v3, :cond_b2

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->baseHull(I)F

    move-result v2

    .line 382
    :goto_e
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1e

    .line 383
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 384
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 386
    :cond_1e
    sget v2, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    if-le v2, v3, :cond_36

    .line 387
    const/16 v2, 0x28

    sget v3, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 388
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 390
    :cond_36
    const/4 v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 391
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v3

    .line 392
    const/4 v2, 0x1

    const/4 v5, 0x4

    div-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 393
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v5, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV34;->statBase(I)I

    move-result v8

    aput v8, v6, v7

    invoke-virtual {v2, p0, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v6

    .line 395
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v2, v6

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 396
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 397
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    int-to-float v2, v2

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 398
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v2, v6

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 399
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v2, :cond_a1

    .line 400
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-object v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 401
    if-eqz v2, :cond_a1

    iget v7, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v6, v7

    iput v6, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v6, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v6, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 403
    :cond_a1
    const/4 v2, 0x1

    invoke-static {p0, v2, v5}, Lfr/testudo/spacecorsair/mod/ModV34;->retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V

    .line 404
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->stockLvOf:Ljava/util/WeakHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {p0, v4, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->giveShield(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b1} :catch_b6

    .line 409
    :goto_b1
    return-void

    .line 381
    :cond_b2
    const/high16 v2, -0x40800000    # -1.0f

    goto/16 :goto_e

    .line 406
    :catch_b6
    move-exception v2

    goto :goto_b1
.end method

.method static shieldAbsorb(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 460
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 461
    if-eqz v0, :cond_10

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_11

    .line 465
    :cond_10
    :goto_10
    return p1

    .line 462
    :cond_11
    if-eqz p2, :cond_25

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_25

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_25

    const/4 v1, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-float v2, v2

    aput v2, v0, v1

    .line 463
    :cond_25
    aget v1, v0, v4

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 464
    aget v2, v0, v4

    sub-float/2addr v2, v1

    aput v2, v0, v4

    .line 465
    sub-float/2addr p1, v1

    goto :goto_10
.end method

.method static shieldDraw(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 470
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 471
    if-eqz v0, :cond_19

    aget v1, v0, v2

    cmpg-float v1, v1, v5

    if-lez v1, :cond_19

    aget v1, v0, v10

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_1a

    .line 474
    :cond_19
    :goto_19
    return-void

    .line 472
    :cond_1a
    aget v1, v0, v10

    aget v0, v0, v2

    div-float v4, v1, v0

    const v0, 0x3f933333    # 1.15f

    mul-float v3, p1, v0

    .line 473
    const-string v0, "shield_shell"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3df5c28f    # 0.12f

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float/2addr v4, v11

    add-float/2addr v9, v4

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto :goto_19
.end method

.method public static shieldStats(III)[F
    .registers 8

    .prologue
    .line 436
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 437
    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v1, v0, v1

    .line 438
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v2

    mul-float/2addr v2, v0

    .line 439
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    iget v4, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->capacity:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    aput v4, v0, v3

    const/4 v3, 0x1

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;->reloadBySec:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, v0, v3
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 441
    :goto_2a
    return-object v0

    .line 440
    :catch_2b
    move-exception v0

    .line 441
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method static shieldTick(Lfr/testudo/spacecorsair/business/Element;J)V
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 452
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 453
    if-nez v0, :cond_d

    .line 456
    :goto_c
    return-void

    .line 454
    :cond_d
    aget v1, v0, v8

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3c

    const/4 v1, 0x0

    aget v1, v0, v1

    aget v2, v0, v9

    const/4 v3, 0x2

    aget v3, v0, v3

    const/high16 v4, 0x3f000000    # 0.5f

    aget v5, v0, v8

    float-to-long v6, v5

    sub-long v6, p1, v6

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x4

    aget v5, v0, v5

    float-to-long v6, v5

    sub-long v6, p1, v6

    invoke-static {v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModV34;->regen(FFJ)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v9

    .line 455
    :cond_3c
    long-to-float v1, p1

    aput v1, v0, v8

    goto :goto_c
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

.method public static skillDamage(FIIZZD)F
    .registers 10

    .prologue
    .line 672
    if-eqz p3, :cond_d

    .line 673
    invoke-static {p2, p1}, Lfr/testudo/spacecorsair/mod/ModV34;->dodge(II)F

    move-result v0

    .line 674
    if-eqz p4, :cond_13

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr p0, v0

    .line 677
    :cond_d
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModV34;->pilot(II)F

    move-result v0

    mul-float/2addr v0, p0

    :goto_12
    return v0

    .line 675
    :cond_13
    float-to-double v0, v0

    cmpg-double v0, p5, v0

    if-gez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V
    .registers 15

    .prologue
    const/4 v10, 0x0

    .line 657
    if-eqz p0, :cond_7

    cmpg-float v2, p2, v10

    if-gtz v2, :cond_8

    .line 668
    :cond_7
    :goto_7
    return-void

    .line 659
    :cond_8
    if-eqz p1, :cond_53

    :try_start_a
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v4

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v5

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_4c

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->difficult(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v6, 0x1

    :goto_1d
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    move v3, p2

    move v7, p3

    invoke-static/range {v3 .. v9}, Lfr/testudo/spacecorsair/mod/ModV34;->skillDamage(FIIZZD)F
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_26} :catch_50

    move-result v3

    .line 660
    :goto_27
    cmpg-float v2, v3, v10

    if-gtz v2, :cond_4e

    .line 661
    :try_start_2b
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v2, :cond_7

    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-object v2, v0

    const-string v4, "EVADED"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_44} :catch_45

    goto :goto_7

    .line 664
    :catch_45
    move-exception v2

    move v2, v3

    .line 667
    :goto_47
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_7

    .line 659
    :cond_4c
    const/4 v6, 0x0

    goto :goto_1d

    :cond_4e
    move v2, v3

    .line 666
    goto :goto_47

    .line 664
    :catch_50
    move-exception v2

    move v2, p2

    goto :goto_47

    :cond_53
    move v3, p2

    goto :goto_27
.end method

.method public static slotOf(I)I
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 530
    packed-switch p0, :pswitch_data_c

    .line 535
    :goto_4
    :pswitch_4
    return v0

    .line 531
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 533
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 534
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 530
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

.method public static stat(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    .line 271
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 275
    :goto_3
    return v0

    .line 272
    :cond_4
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerStat()I

    move-result v0

    goto :goto_3

    .line 273
    :cond_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 274
    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_3

    .line 275
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
    .line 238
    const/16 v0, 0xa

    if-ge p0, v0, :cond_6

    const/4 v0, 0x0

    .line 239
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

.method public static stockClass(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 327
    if-nez p0, :cond_4

    .line 335
    :cond_3
    :goto_3
    return v0

    .line 328
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 329
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    if-eq v1, v2, :cond_10

    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    if-ne v1, v2, :cond_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 330
    :cond_12
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    if-eq v1, v2, :cond_1a

    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    if-ne v1, v2, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_3

    .line 331
    :cond_1c
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    if-ne v1, v2, :cond_22

    const/4 v0, 0x2

    goto :goto_3

    .line 332
    :cond_22
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-ne v1, v2, :cond_28

    const/4 v0, 0x3

    goto :goto_3

    .line 333
    :cond_28
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-ne v1, v2, :cond_2e

    const/4 v0, 0x4

    goto :goto_3

    .line 334
    :cond_2e
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    if-ne v1, v2, :cond_3

    const/4 v0, 0x5

    goto :goto_3
.end method

.method static storiesDone()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 257
    if-nez v3, :cond_9

    move v0, v1

    .line 260
    :cond_8
    return v0

    .line 259
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

    .line 244
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v4, v0

    move v0, v1

    move v2, v1

    .line 245
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

    .line 246
    :cond_1c
    return v2
.end method

.method public static storyDone(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 251
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
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

    .line 253
    :cond_25
    return-void
.end method

.method public static tier(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    .line 279
    if-nez p0, :cond_7

    const/4 v0, 0x0

    .line 280
    :goto_3
    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_6
    return v0

    .line 279
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_3

    .line 280
    :cond_10
    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_6
.end method

.method public static want(I)V
    .registers 1

    .prologue
    .line 374
    sput p0, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 375
    return-void
.end method

.method public static weaponRule(Ljava/lang/String;I)F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 600
    if-gez p1, :cond_5

    .line 602
    :cond_4
    :goto_4
    return v0

    .line 601
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    const v0, 0x3f59999a    # 0.85f

    goto :goto_4

    .line 602
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
    .line 541
    if-nez p0, :cond_e

    const/4 v0, 0x0

    move-object v2, v0

    .line 542
    :goto_4
    if-eqz v2, :cond_c

    iget-object v0, v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    if-eq v0, v1, :cond_14

    :cond_c
    const/4 v1, -0x1

    .line 545
    :cond_d
    return v1

    .line 541
    :cond_e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 543
    :cond_14
    const/4 v1, 0x0

    .line 544
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
