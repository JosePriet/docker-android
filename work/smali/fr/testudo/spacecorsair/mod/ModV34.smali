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

.field public static final SOFT_CAP:I = 0x320

.field public static final STAT_CAP:I = 0x3e8

.field public static final STAT_LEVEL:I = 0xa

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
    .registers 1

    .prologue
    .line 94
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArts:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    .line 211
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    .line 218
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    return-void

    .line 211
    nop

    :array_22
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
    const/4 v5, 0x1

    .line 264
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 265
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    const/16 v3, 0x3e8

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->statBase(I)I

    move-result v0

    :goto_1e
    add-int/lit16 v0, v0, 0x12c

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v2, v5

    const/4 v0, 0x2

    aput v5, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void

    .line 265
    :cond_2d
    aget v0, v0, v5

    goto :goto_1e
.end method

.method public static bounty(I)F
    .registers 7

    .prologue
    .line 127
    const/4 v0, 0x0

    const/16 v1, 0x28

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 128
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

.method public static counter(Ljava/lang/String;Ljava/lang/String;I)F
    .registers 6

    .prologue
    .line 312
    const/high16 v0, 0x3f800000    # 1.0f

    .line 313
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 314
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModCounterData;->beats(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const v1, 0x3fc7ae15    # 1.5600001f

    mul-float/2addr v0, v1

    .line 317
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    if-ltz p2, :cond_2b

    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModCounterData;->weaponTaken(Ljava/lang/String;I)F

    move-result v1

    mul-float/2addr v0, v1

    .line 318
    :cond_2b
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 315
    :cond_38
    invoke-static {p1, p0}, Lfr/testudo/spacecorsair/mod/ModCounterData;->beats(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const v1, 0x3f0f5c29    # 0.56f

    mul-float/2addr v0, v1

    goto :goto_1e
.end method

.method public static curve(I)F
    .registers 5

    .prologue
    .line 215
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

    .line 324
    if-eqz p2, :cond_9

    if-eqz p0, :cond_9

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_a

    .line 338
    :cond_9
    :goto_9
    return p1

    .line 325
    :cond_a
    :try_start_a
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 326
    if-eqz v1, :cond_9

    .line 327
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

    .line 328
    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 329
    const-string v1, "EVADED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    move p1, v0

    .line 330
    goto :goto_9

    .line 332
    :cond_42
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v2

    .line 333
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v0

    .line 334
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

    .line 335
    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_69

    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->weaponRule(Ljava/lang/String;I)F
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_67} :catch_6b

    move-result v1

    mul-float/2addr v0, v1

    :cond_69
    move p1, v0

    .line 336
    goto :goto_9

    .line 337
    :catch_6b
    move-exception v0

    goto :goto_9
.end method

.method public static deathFee(I)I
    .registers 4

    .prologue
    .line 133
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->bounty(I)F

    move-result v0

    .line 134
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

    .line 205
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_11

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_d
    move v2, v0

    .line 207
    :cond_e
    :goto_e
    return v2

    :cond_f
    move v0, v2

    .line 205
    goto :goto_d

    .line 206
    :cond_11
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_e

    move-object v0, p0

    .line 207
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
    .line 201
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
    .registers 7

    .prologue
    const/4 v3, 0x2

    .line 250
    :try_start_1
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 251
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

    .line 252
    :cond_22
    array-length v1, v0

    if-le v1, v3, :cond_26

    .line 260
    :goto_25
    return-void

    .line 253
    :cond_26
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    aget v5, v0, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    aget v0, v0, v5

    add-int/lit16 v0, v0, 0x96

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v2, v3

    const/4 v0, 0x2

    const/4 v3, 0x1

    aput v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 255
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 256
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5f} :catch_60

    goto :goto_25

    .line 257
    :catch_60
    move-exception v0

    goto :goto_25
.end method

.method static factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 274
    if-nez p0, :cond_5

    :try_start_2
    const-string v0, ""

    .line 288
    :goto_4
    return-object v0

    .line 275
    :cond_5
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_10

    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 276
    :cond_10
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_1f

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    if-eqz v1, :cond_1f

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    goto :goto_4

    .line 278
    :cond_1f
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_40

    .line 279
    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 280
    if-eqz v0, :cond_40

    .line 281
    const-string v1, "Reaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v0, "reaver"

    goto :goto_4

    .line 282
    :cond_34
    const-string v1, "Kre\'tari"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "kretari"
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3e} :catch_3f

    goto :goto_4

    .line 285
    :catch_3f
    move-exception v0

    .line 288
    :cond_40
    const-string v0, ""

    goto :goto_4
.end method

.method public static freighter(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;)V
    .registers 9

    .prologue
    .line 100
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_10

    .line 108
    :cond_f
    :goto_f
    return-void

    .line 102
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
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

    .line 104
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

    .line 105
    :catch_47
    move-exception v0

    goto :goto_f
.end method

.method public static freighterArt(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;Lfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 8

    .prologue
    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    .line 113
    if-nez v0, :cond_b

    .line 121
    :cond_a
    :goto_a
    return-object p1

    .line 114
    :cond_b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArts:Ljava/util/HashMap;

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/display/Drawable;

    .line 115
    if-nez v1, :cond_37

    .line 116
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_a

    .line 118
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v4, v4

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    .line 119
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArts:Ljava/util/HashMap;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    move-object p1, v1

    .line 121
    goto :goto_a
.end method

.method public static levelShield()F
    .registers 5

    .prologue
    .line 139
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

.method static ownFamily(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 293
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 300
    :cond_b
    :goto_b
    return v0

    .line 294
    :cond_c
    const-string v2, "spartan"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz p1, :cond_b

    move v0, v1

    goto :goto_b

    .line 295
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

    .line 296
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

    .line 297
    :cond_3c
    const-string v2, "varn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x4

    if-eq p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 298
    :cond_49
    const-string v2, "ironclad"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 299
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

    .line 300
    goto :goto_b
.end method

.method public static pilot(II)F
    .registers 8

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 194
    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    .line 195
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

    .line 196
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
    .line 173
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

.method public static refundIndustrials(Lfr/testudo/spacecorsair/business/player/PlayerInfo;)V
    .registers 6

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    :try_start_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 80
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_8

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_8

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 84
    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->price:I

    add-int/2addr v0, v1

    move v1, v0

    .line 85
    goto :goto_8

    .line 86
    :cond_27
    if-gtz v1, :cond_2a

    .line 92
    :goto_29
    return-void

    .line 87
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 88
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
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5d} :catch_5e

    goto :goto_29

    .line 89
    :catch_5e
    move-exception v0

    goto :goto_29
.end method

.method public static scale(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 10

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 228
    :try_start_2
    sget v0, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    if-le v0, v1, :cond_1a

    .line 229
    const/16 v0, 0x28

    sget v1, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 230
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 232
    :cond_1a
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 233
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v0

    .line 234
    const/4 v1, 0x1

    const/4 v2, 0x4

    div-int/lit8 v3, v0, 0xc

    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 235
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->statBase(I)I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v0

    .line 237
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v2, v0

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 238
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 239
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 240
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    aget v3, v3, v1

    mul-float/2addr v0, v3

    mul-float/2addr v0, v2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 241
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    long-to-float v0, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    aget v1, v2, v1

    sub-float/2addr v1, v8

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v1, v8

    div-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_81} :catch_82

    .line 245
    :goto_81
    return-void

    .line 242
    :catch_82
    move-exception v0

    goto :goto_81
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

.method static stat(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    .line 180
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 184
    :goto_3
    return v0

    .line 181
    :cond_4
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerStat()I

    move-result v0

    goto :goto_3

    .line 182
    :cond_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 183
    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_3

    .line 184
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
    .line 147
    const/16 v0, 0xa

    if-ge p0, v0, :cond_6

    const/4 v0, 0x0

    .line 148
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

    .line 165
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 166
    if-nez v3, :cond_9

    move v0, v1

    .line 169
    :cond_8
    return v0

    .line 168
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

    .line 153
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v4, v0

    move v0, v1

    move v2, v1

    .line 154
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

    .line 155
    :cond_1c
    return v2
.end method

.method public static storyDone(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 160
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
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

    .line 162
    :cond_25
    return-void
.end method

.method static tier(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    .line 188
    if-nez p0, :cond_7

    const/4 v0, 0x0

    .line 189
    :goto_3
    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_6
    return v0

    .line 188
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_3

    .line 189
    :cond_10
    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_6
.end method

.method public static want(I)V
    .registers 1

    .prologue
    .line 222
    sput p0, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 223
    return-void
.end method

.method public static weaponRule(Ljava/lang/String;I)F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 305
    if-gez p1, :cond_5

    .line 307
    :cond_4
    :goto_4
    return v0

    .line 306
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    const v0, 0x3f59999a    # 0.85f

    goto :goto_4

    .line 307
    :cond_f
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModV34;->ownFamily(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    const v0, 0x3f19999a    # 0.6f

    goto :goto_4
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
