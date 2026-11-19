.class public Lfr/testudo/spacecorsair/mod/ModV34;
.super Ljava/lang/Object;
.source "ModV34.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModV34$Sh;
    }
.end annotation


# static fields
.field static final ARC:I = 0x5

.field static final ARTY:I = 0x2

.field static final AUTO:I = 0x1

.field static final BLAST:I = 0x3

.field public static final CAP:I = 0x28

.field static final DISINT:I = 0x4

.field public static final DMG_SPLIT:F = 0.4f

.field static final FIT_NEUTRAL:I = 0x2

.field static final FIT_NONE:I = 0x0

.field static final FIT_OFF:I = 0x3

.field static final FIT_OK:I = 0x1

.field static final RAIL:I = 0x0

.field public static final RARE_K:[F

.field public static final RARE_P:[F

.field static final RELEVEL_KEY:Ljava/lang/String; = "v57_xp_relevel"

.field public static final SHIELD_SPLIT:F = 0.35f

.field static final SHIP_FIX:[Ljava/lang/String;

.field static final SHIP_FIX_LV:[I

.field static final SHIP_FIX_PRICE:[I

.field public static final SHIP_LEVEL_CAP:I = 0x20

.field public static final SLOT_NAMES:[Ljava/lang/String;

.field public static final SOFT_CAP:I = 0x320

.field public static final STAT_CAP:I = 0x3e8

.field public static final STAT_LEVEL:I = 0xa

.field static final STOCK_CLASS:I = 0x1

.field public static final TIER_F:[F

.field static final UNDER_FIRE:F = 0.85f

.field static final UNDER_FIRE_MS:J = 0xbb8L

.field static final WINDOW:I = 0x3c

.field public static final XP_ABOVE:F = 15.0f

.field public static final XP_BELOW:F = 10.0f

.field static final XP_V57:[J

.field static final bigShield:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Lfr/testudo/spacecorsair/mod/ModV34$Sh;",
            ">;"
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

.field private static shLogs:I

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

.field private static final stockElite:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;"
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
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 33
    const/16 v0, 0x29

    new-array v0, v0, [J

    fill-array-data v0, :array_84

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->XP_V57:[J

    .line 163
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "policeShip"

    aput-object v1, v0, v4

    const-string v1, "megatronShip"

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->SHIP_FIX:[Ljava/lang/String;

    .line 164
    new-array v0, v2, [I

    fill-array-data v0, :array_12c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->SHIP_FIX_LV:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_134

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->SHIP_FIX_PRICE:[I

    .line 233
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArts:Ljava/util/HashMap;

    .line 271
    new-array v0, v3, [F

    fill-array-data v0, :array_13c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->RARE_P:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_146

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->RARE_K:[F

    .line 310
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->lastCredit:J

    .line 407
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    .line 441
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_150

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    .line 522
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 572
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->stockLvOf:Ljava/util/WeakHashMap;

    .line 586
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->stockElite:Ljava/util/ArrayList;

    .line 806
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "S"

    aput-object v1, v0, v4

    const-string v1, "M"

    aput-object v1, v0, v5

    const-string v1, "L"

    aput-object v1, v0, v2

    const-string v1, "XL"

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->SLOT_NAMES:[Ljava/lang/String;

    return-void

    .line 33
    :array_84
    .array-data 8
        0x4b0
        0x514
        0x640
        0xaf0
        0xbb8
        0xc1c
        0xce4
        0xd48
        0xe10
        0xe74
        0xf3c
        0x1068
        0x1194
        0x1964
        0x1af4
        0x1c84
        0x24b8
        0x2904
        0x2e7c
        0x32c8
        0x3908
        0x3cf0
        0x4330
        0x47e0
        0x4cf4
        0x558c
        0x5b68
        0x61a8
        0x6aa4
        0x7210
        0x7a44
        0x8b74
        0x9538
        0x9fc4
        0xb98c
        0xc6d4
        0xd480
        0xfcbc
        0x10e50
        0x12110
        0x13880
    .end array-data

    .line 164
    :array_12c
    .array-data 4
        0xc
        0x14
    .end array-data

    :array_134
    .array-data 4
        0x30d40
        0x7a120
    .end array-data

    .line 271
    :array_13c
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_146
    .array-data 4
        0x41480000    # 12.5f
        0x40000000    # 2.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 441
    :array_150
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
    .line 495
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->alienRatSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    .line 496
    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->UfoSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    .line 497
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

    .line 498
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

    .line 500
    :goto_22
    return v0

    .line 499
    :catch_23
    move-exception v0

    .line 500
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_22
.end method

.method public static boot()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 122
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModV34;->booted:Z

    if-eqz v0, :cond_6

    .line 139
    :goto_5
    return-void

    .line 123
    :cond_6
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModV34;->booted:Z

    .line 125
    :try_start_8
    const-class v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "levelMin"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v2, "levelMax"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 126
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v4, :cond_4c

    aget-object v5, v3, v0

    .line 129
    sget-object v6, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v5, v6, :cond_32

    sget-object v6, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-ne v5, v6, :cond_35

    .line 128
    :cond_32
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 130
    :cond_35
    iget v6, v5, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    iget v7, v5, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    .line 131
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v8

    invoke-virtual {v1, v5, v8}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 132
    invoke-static {v7}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 133
    invoke-static {v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModV34;->range(Lfr/testudo/spacecorsair/game/levels/LevelId;II)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_4a} :catch_4b

    goto :goto_32

    .line 135
    :catch_4b
    move-exception v0

    .line 138
    :cond_4c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->ships()V

    goto :goto_5
.end method

.method public static boss(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 9

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/4 v6, 0x2

    .line 777
    :try_start_4
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 778
    if-nez v0, :cond_76

    move v3, v2

    :goto_f
    if-nez v0, :cond_7b

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->statBase(I)I

    move-result v1

    .line 779
    :goto_19
    if-eqz v0, :cond_6b

    array-length v4, v0

    if-le v4, v6, :cond_6b

    const/4 v4, 0x2

    aget v4, v0, v4

    if-ne v4, v2, :cond_6b

    .line 780
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v4, 0x40200000    # 2.5f

    div-float/2addr v2, v4

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 781
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v4, 0x3fc00000    # 1.5f

    div-float/2addr v2, v4

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 782
    const v2, 0x3f2aaaab

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->gunsMul(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;F)V

    .line 783
    add-int/lit16 v2, v1, -0x96

    .line 785
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stockClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v1

    .line 786
    if-ltz v1, :cond_6a

    const/4 v4, 0x6

    if-ge v1, v4, :cond_6a

    .line 787
    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v5

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v1

    div-float v1, v5, v1

    div-float v1, v4, v1

    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 788
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->stockLvOf:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 789
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_62
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {p0, v1, v4, v5}, Lfr/testudo/spacecorsair/mod/ModV34;->giveShield(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;IIZ)V

    :cond_6a
    move v1, v2

    .line 792
    :cond_6b
    if-eqz v0, :cond_84

    array-length v2, v0

    if-le v2, v6, :cond_84

    const/4 v2, 0x2

    aget v0, v0, v2

    if-ne v0, v6, :cond_84

    .line 803
    :goto_75
    return-void

    .line 778
    :cond_76
    const/4 v1, 0x0

    aget v1, v0, v1

    move v3, v1

    goto :goto_f

    :cond_7b
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_19

    .line 789
    :cond_7f
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    goto :goto_62

    .line 793
    :cond_84
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v2, v4

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    add-int/lit16 v1, v1, 0x12c

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v2, v4

    const/4 v1, 0x2

    const/4 v4, 0x2

    aput v4, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 795
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 796
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v0, v7

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 797
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->gunsMul(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;F)V

    .line 798
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->syncBeam(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V

    .line 799
    const/4 v0, 0x4

    invoke-static {p0, v3, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_bb} :catch_bc

    goto :goto_75

    .line 800
    :catch_bc
    move-exception v0

    goto :goto_75
.end method

.method public static bounty(I)F
    .registers 7

    .prologue
    .line 266
    const/4 v0, 0x0

    const/16 v1, 0x28

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 267
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

.method private static charge(Lfr/testudo/spacecorsair/business/Element;J)Lfr/testudo/spacecorsair/mod/ModV34$Sh;
    .registers 12

    .prologue
    .line 625
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    .line 626
    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 629
    :goto_b
    return-object v0

    .line 627
    :cond_c
    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->last:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_37

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->last:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_37

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->last:J

    sub-long v4, p1, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->hit:J

    sub-long v6, p1, v6

    invoke-static {v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModV34;->regen(FFJ)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    .line 628
    :cond_37
    iput-wide p1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->last:J

    goto :goto_b
.end method

.method public static classFactor(I)F
    .registers 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 445
    packed-switch p0, :pswitch_data_1c

    .line 453
    :goto_5
    :pswitch_5
    return v0

    .line 446
    :pswitch_6
    const v0, 0x3f19999a    # 0.6f

    goto :goto_5

    .line 448
    :pswitch_a
    const v0, 0x3fcccccd    # 1.6f

    goto :goto_5

    .line 449
    :pswitch_e
    const v0, 0x400ccccd    # 2.2f

    goto :goto_5

    .line 450
    :pswitch_12
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_5

    .line 451
    :pswitch_15
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_5

    .line 452
    :pswitch_18
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_5

    .line 445
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
    .line 985
    const/high16 v0, 0x3f800000    # 1.0f

    .line 986
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 987
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModCounterData;->beats(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    .line 990
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    if-ltz p2, :cond_2b

    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModCounterData;->weaponTaken(Ljava/lang/String;I)F

    move-result v1

    mul-float/2addr v0, v1

    .line 991
    :cond_2b
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 988
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
    .line 519
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
    .registers 11

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1036
    if-eqz p2, :cond_b

    if-eqz p0, :cond_b

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_c

    .line 1056
    :cond_b
    :goto_b
    return p1

    .line 1037
    :cond_c
    :try_start_c
    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 1038
    if-eqz v2, :cond_b

    .line 1039
    iget-boolean v3, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v3, :cond_44

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->difficult(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v6

    invoke-static {v3, v6}, Lfr/testudo/spacecorsair/mod/ModV34;->dodge(II)F

    move-result v3

    float-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_44

    .line 1040
    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 1041
    const-string v1, "EVADED"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    move p1, v0

    .line 1042
    goto :goto_b

    .line 1046
    :cond_44
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_87

    :cond_50
    const/4 v0, 0x1

    .line 1047
    :goto_51
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v3

    .line 1048
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v5

    .line 1049
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v6

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v7

    invoke-static {v6, v7}, Lfr/testudo/spacecorsair/mod/ModV34;->pilot(II)F

    move-result v6

    mul-float/2addr v6, p1

    if-eqz v0, :cond_89

    move v0, v1

    :goto_6d
    mul-float/2addr v0, v6

    .line 1050
    iget-boolean v1, v2, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_85

    .line 1051
    invoke-static {v4, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->weaponRule(Ljava/lang/String;I)F

    move-result v1

    mul-float/2addr v0, v1

    .line 1052
    if-nez v3, :cond_85

    const-string v1, "spartan"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    :cond_85
    move p1, v0

    .line 1054
    goto :goto_b

    .line 1046
    :cond_87
    const/4 v0, 0x0

    goto :goto_51

    .line 1049
    :cond_89
    invoke-static {v4, v5, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->counter(Ljava/lang/String;Ljava/lang/String;I)F
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_8c} :catch_8e

    move-result v0

    goto :goto_6d

    .line 1055
    :catch_8e
    move-exception v0

    goto/16 :goto_b
.end method

.method public static deathFee(I)I
    .registers 2

    .prologue
    .line 299
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->hourlyIncome(I)F

    move-result v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->deathFee(IF)I

    move-result v0

    return v0
.end method

.method public static deathFee(IF)I
    .registers 6

    .prologue
    .line 303
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->bounty(I)F

    move-result v0

    .line 304
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

    .line 435
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_11

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_d
    move v2, v0

    .line 437
    :cond_e
    :goto_e
    return v2

    :cond_f
    move v0, v2

    .line 435
    goto :goto_d

    .line 436
    :cond_11
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_e

    move-object v0, p0

    .line 437
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

.method public static dmgClass(I)F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 461
    if-gez p0, :cond_5

    :goto_4
    return v0

    :cond_5
    const v1, 0x3ecccccd    # 0.4f

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v2

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_4
.end method

.method public static dodge(II)F
    .registers 6

    .prologue
    .line 431
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
    .registers 9

    .prologue
    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v3, 0x2

    .line 747
    :try_start_3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 748
    if-nez v0, :cond_24

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

    .line 749
    :cond_24
    array-length v1, v0

    if-le v1, v3, :cond_28

    .line 769
    :cond_27
    :goto_27
    return-void

    .line 750
    :cond_28
    const/4 v1, 0x4

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 751
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

    .line 752
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 753
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 754
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v2, v7

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 755
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->gunsMul(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;F)V

    .line 756
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->stockElite:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_67} :catch_a7

    :try_start_67
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModV34;->stockElite:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_aa

    .line 757
    const/4 v2, 0x0

    :try_start_6e
    aget v0, v0, v2

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModV34;->retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V

    .line 759
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stockClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    .line 760
    if-ltz v0, :cond_27

    const/4 v1, 0x6

    if-ge v0, v1, :cond_27

    .line 761
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v0

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 762
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 763
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->stockLvOf:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 764
    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_9f
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v1

    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModV34;->giveShield(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_a6} :catch_a7

    goto :goto_27

    .line 766
    :catch_a7
    move-exception v0

    goto/16 :goto_27

    .line 756
    :catchall_aa
    move-exception v0

    :try_start_ab
    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    :try_start_ac
    throw v0

    .line 764
    :cond_ad
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_b0} :catch_a7

    move-result v0

    goto :goto_9f
.end method

.method static factionName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 924
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_16

    aget-object v3, v1, v0

    iget-object v4, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v0, v3, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 925
    :cond_16
    return-object p0

    .line 924
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method static factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 846
    if-nez p0, :cond_5

    :try_start_2
    const-string v0, ""

    .line 865
    :cond_4
    :goto_4
    return-object v0

    .line 847
    :cond_5
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_10

    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 848
    :cond_10
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModSector;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v0

    .line 849
    if-nez v0, :cond_4

    .line 850
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_25

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    if-eqz v1, :cond_25

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;->f:Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    goto :goto_4

    .line 852
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

    .line 853
    :cond_36
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_67

    .line 854
    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 855
    if-eqz v0, :cond_67

    .line 856
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModFleet;->typeOfName(Ljava/lang/String;)Lfr/testudo/spacecorsair/mod/ModFleet$Type;

    move-result-object v1

    .line 857
    if-eqz v1, :cond_50

    iget-boolean v0, v1, Lfr/testudo/spacecorsair/mod/ModFleet$Type;->kretari:Z

    if-eqz v0, :cond_4d

    const-string v0, "kretari"

    goto :goto_4

    :cond_4d
    const-string v0, "reaver"

    goto :goto_4

    .line 858
    :cond_50
    const-string v1, "Reaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const-string v0, "reaver"

    goto :goto_4

    .line 859
    :cond_5b
    const-string v1, "Kre\'tari"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "kretari"
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_65} :catch_66

    goto :goto_4

    .line 862
    :catch_66
    move-exception v0

    .line 865
    :cond_67
    const-string v0, ""

    goto :goto_4
.end method

.method static favored(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    const/4 v0, 0x0

    :goto_6
    const/4 v2, 0x6

    if-ge v0, v2, :cond_29

    .line 932
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->ownFamily(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 931
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 933
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1d

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    :cond_1d
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 936
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fitLine(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 941
    if-ne p1, v3, :cond_14

    const-string v0, "FITS: %s weapon family"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->trf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 944
    :goto_13
    return-object v0

    .line 942
    :cond_14
    if-ne p1, v1, :cond_1d

    const-string v0, "Neutral hull: -15% damage with faction weapons"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 943
    :cond_1d
    const/4 v0, 0x3

    if-ne p1, v0, :cond_35

    const-string v0, "OFF-FACTION: -40%% damage, -40%% fire rate, -40%% range, no hull weapon bonuses. %s hulls use %s."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->favored(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModLang;->trf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 944
    :cond_35
    const-string v0, ""

    goto :goto_13
.end method

.method static fitMult(I)[F
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 910
    if-ne p0, v1, :cond_9

    new-array v0, v1, [F

    fill-array-data v0, :array_18

    .line 912
    :goto_8
    return-object v0

    .line 911
    :cond_9
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    new-array v0, v1, [F

    fill-array-data v0, :array_20

    goto :goto_8

    .line 912
    :cond_12
    new-array v0, v1, [F

    fill-array-data v0, :array_28

    goto :goto_8

    .line 910
    :array_18
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    .line 911
    :array_20
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
    .end array-data

    .line 912
    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static fitState(Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I
    .registers 4

    .prologue
    .line 902
    if-nez p1, :cond_7

    const/4 v0, -0x1

    .line 903
    :goto_3
    if-gez v0, :cond_c

    const/4 v0, 0x0

    .line 905
    :goto_6
    return v0

    .line 902
    :cond_7
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v0

    goto :goto_3

    .line 904
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x2

    goto :goto_6

    .line 905
    :cond_14
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->ownFamily(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_6

    :cond_1c
    const/4 v0, 0x3

    goto :goto_6
.end method

.method public static fits(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 831
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->weaponSize(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v1

    .line 832
    if-gez v1, :cond_8

    .line 836
    :cond_7
    :goto_7
    return v0

    .line 833
    :cond_8
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModShips;->cls(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    .line 834
    if-ltz v2, :cond_7

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->slotOf(I)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_20

    move-result v2

    if-le v1, v2, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    .line 835
    :catch_20
    move-exception v1

    goto :goto_7
.end method

.method public static freighter(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;)V
    .registers 9

    .prologue
    .line 239
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_10

    .line 247
    :cond_f
    :goto_f
    return-void

    .line 241
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
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

    .line 243
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

    .line 244
    :catch_47
    move-exception v0

    goto :goto_f
.end method

.method public static freighterArt(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;Lfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 8

    .prologue
    .line 251
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->freighters:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    .line 252
    if-nez v0, :cond_b

    .line 260
    :cond_a
    :goto_a
    return-object p1

    .line 253
    :cond_b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArts:Ljava/util/HashMap;

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/display/Drawable;

    .line 254
    if-nez v1, :cond_37

    .line 255
    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 256
    if-eqz v2, :cond_a

    .line 257
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v4, v4

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->size:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    .line 258
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArts:Ljava/util/HashMap;

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    move-object p1, v1

    .line 260
    goto :goto_a
.end method

.method static gearHullKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 893
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    .line 894
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerGear:Lfr/testudo/spacecorsair/business/player/PlayerGear;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerGear;->playerShip:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/mod/ModShips$Hull;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 896
    :goto_18
    return-object v0

    .line 895
    :catch_19
    move-exception v0

    .line 896
    const-string v0, ""

    goto :goto_18
.end method

.method static giveShield(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    .registers 4

    .prologue
    .line 590
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    invoke-static {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->giveShield(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;IIZ)V

    return-void
.end method

.method static giveShield(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;IIZ)V
    .registers 7

    .prologue
    .line 593
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->enemyClass(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)I

    move-result v0

    .line 595
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stockClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v1

    .line 596
    if-ltz v1, :cond_18

    if-eqz p3, :cond_18

    const/4 v0, 0x6

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 597
    :cond_18
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1f

    instance-of v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v1, :cond_20

    .line 604
    :cond_1f
    :goto_1f
    return-void

    .line 598
    :cond_20
    invoke-static {p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldStats(III)[F

    move-result-object v0

    .line 599
    if-eqz v0, :cond_1f

    .line 600
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModV34$Sh;-><init>()V

    .line 601
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    iput v2, v1, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    .line 602
    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    .line 603
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f
.end method

.method static gunsMul(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;F)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 665
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_a

    if-nez p0, :cond_b

    .line 675
    :cond_a
    return-void

    .line 666
    :cond_b
    const/4 v1, 0x0

    .line 667
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-eqz v2, :cond_3c

    .line 668
    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    .line 669
    const/4 v1, 0x3

    new-array v1, v1, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v2, v1, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v3, v1, v2

    .line 673
    :cond_22
    :goto_22
    if-eqz v1, :cond_a

    .line 674
    array-length v2, v1

    :goto_25
    if-ge v0, v2, :cond_a

    aget-object v3, v1, v0

    if-eqz v3, :cond_39

    iget v4, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shootDamage:I

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 670
    :cond_3c
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    if-eqz v2, :cond_22

    .line 671
    new-array v1, v5, [Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    aput-object v2, v1, v0

    goto :goto_22
.end method

.method public static hourlyIncome(I)F
    .registers 9

    .prologue
    .line 314
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->loadIncome()V

    .line 315
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModV34;->cur:J

    .line 316
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    array-length v4, v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v4, :cond_11

    aget-wide v6, v1, v0

    add-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 317
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

    .line 339
    :try_start_4
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->lastMs:J

    sub-long v0, p0, v0

    const-wide/16 v4, 0x3e8

    cmp-long v0, v0, v4

    if-gez v0, :cond_f

    .line 361
    :cond_e
    :goto_e
    return-void

    .line 340
    :cond_f
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->lastMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_90

    move-wide v0, v2

    .line 341
    :goto_16
    sput-wide p0, Lfr/testudo/spacecorsair/mod/ModV34;->lastMs:J

    .line 342
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->loadIncome()V

    .line 343
    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v4, v4, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v4

    .line 344
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

    .line 345
    :cond_3a
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModV34;->lastCredit:J

    .line 346
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModV34;->minMs:J

    add-long/2addr v0, v2

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->minMs:J

    .line 347
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->minMs:J

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    .line 348
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->minMs:J

    .line 349
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    sget v1, Lfr/testudo/spacecorsair/mod/ModV34;->ring:I

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModV34;->cur:J

    aput-wide v2, v0, v1

    .line 350
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModV34;->cur:J

    .line 351
    sget v0, Lfr/testudo/spacecorsair/mod/ModV34;->ring:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3c

    sput v0, Lfr/testudo/spacecorsair/mod/ModV34;->ring:I

    .line 352
    const/16 v0, 0x3c

    sget v1, Lfr/testudo/spacecorsair/mod/ModV34;->tracked:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModV34;->tracked:I

    .line 353
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_e

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
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

    .line 340
    :cond_90
    const-wide/16 v0, 0x7d0

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModV34;->lastMs:J

    sub-long v4, p0, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto/16 :goto_16

    .line 356
    :cond_9c
    const-string v0, ""

    goto :goto_81

    .line 357
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

    .line 358
    :catch_c2
    move-exception v0

    goto/16 :goto_e
.end method

.method public static levelOf(J[J)[J
    .registers 13

    .prologue
    const/16 v8, 0x28

    const/4 v3, 0x0

    .line 66
    move v2, v3

    move-wide v0, p0

    .line 67
    :goto_5
    if-ge v2, v8, :cond_13

    aget-wide v4, p2, v2

    cmp-long v4, v0, v4

    if-ltz v4, :cond_13

    aget-wide v4, p2, v2

    sub-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 68
    :cond_13
    const/4 v4, 0x2

    new-array v4, v4, [J

    int-to-long v6, v2

    aput-wide v6, v4, v3

    const/4 v3, 0x1

    if-lt v2, v8, :cond_1e

    const-wide/16 v0, 0x0

    :cond_1e
    aput-wide v0, v4, v3

    return-object v4
.end method

.method public static levelShield()F
    .registers 1

    .prologue
    .line 365
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerLevel()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->levelShield(I)F

    move-result v0

    return v0
.end method

.method public static levelShield(I)F
    .registers 5

    .prologue
    .line 369
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

    .line 321
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    if-eqz v0, :cond_8

    .line 334
    :cond_7
    :goto_7
    return-void

    .line 322
    :cond_8
    new-array v0, v7, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    .line 324
    :try_start_c
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_7

    .line 326
    const-string v2, "v37_income"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 327
    const/16 v3, 0x3c

    const-string v4, "v37_income_n"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModV34;->tracked:I

    .line 328
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

    .line 329
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

    .line 330
    :catch_5e
    move-exception v0

    .line 331
    new-array v0, v7, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->perMin:[J

    .line 332
    sput v1, Lfr/testudo/spacecorsair/mod/ModV34;->tracked:I

    goto :goto_7
.end method

.method public static lvl(I)I
    .registers 3

    .prologue
    .line 114
    const/4 v0, 0x4

    if-gt p0, v0, :cond_9

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 115
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

.method public static mitigedXp(II)F
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerLevel()I

    move-result v1

    sub-int v2, p0, v1

    .line 58
    int-to-float v3, p1

    if-gez v2, :cond_19

    const/high16 v1, 0x41200000    # 10.0f

    :goto_c
    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    .line 59
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1c

    :goto_18
    return v0

    .line 58
    :cond_19
    const/high16 v1, 0x41700000    # 15.0f

    goto :goto_c

    :cond_1c
    move v0, v1

    .line 59
    goto :goto_18
.end method

.method public static offFaction(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 961
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModShips;->factionKey(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Ljava/lang/String;

    move-result-object v1

    .line 962
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v2

    .line 963
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

    .line 965
    :cond_1a
    :goto_1a
    return v0

    .line 964
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method public static offFactionRate(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    const v3, 0x3f19999a    # 0.6f

    .line 972
    :try_start_3
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    div-float/2addr v0, v3

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    .line 973
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootSpeed:F

    mul-float/2addr v0, v3

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shootSpeed:F

    .line 974
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v1, v1

    if-ge v0, v1, :cond_35

    .line 975
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v2, v2, v0

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    .line 976
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v1, v1, v0

    iget v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F

    mul-float/2addr v2, v3

    iput v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_31} :catch_34

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 978
    :catch_34
    move-exception v0

    .line 981
    :cond_35
    return-void
.end method

.method static ownFamily(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 870
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 877
    :cond_b
    :goto_b
    return v0

    .line 871
    :cond_c
    const-string v2, "spartan"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz p1, :cond_b

    move v0, v1

    goto :goto_b

    .line 872
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

    .line 873
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

    .line 874
    :cond_3c
    const-string v2, "varn"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x4

    if-eq p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 875
    :cond_49
    const-string v2, "ironclad"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 876
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

    .line 877
    goto :goto_b
.end method

.method public static ownedShip(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 156
    if-eqz p0, :cond_1a

    :try_start_3
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_16} :catch_1b

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    .line 158
    :cond_1a
    :goto_1a
    return v0

    .line 157
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method public static pilot(II)F
    .registers 8

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 424
    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    .line 425
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

    .line 426
    sub-float v1, v5, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method static playerLevel()I
    .registers 1

    .prologue
    .line 209
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
    .line 403
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

.method static railBonus(Ljava/lang/String;Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)[F
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 917
    if-eqz p1, :cond_9

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v0

    if-eqz v0, :cond_f

    :cond_9
    new-array v0, v1, [F

    fill-array-data v0, :array_32

    .line 920
    :goto_e
    return-object v0

    .line 918
    :cond_f
    const-string v0, "spartan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-array v0, v1, [F

    fill-array-data v0, :array_3a

    goto :goto_e

    .line 919
    :cond_1d
    const-string v0, "warden"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-array v0, v1, [F

    fill-array-data v0, :array_42

    goto :goto_e

    .line 920
    :cond_2b
    new-array v0, v1, [F

    fill-array-data v0, :array_4a

    goto :goto_e

    .line 917
    nop

    :array_32
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 918
    :array_3a
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 919
    :array_42
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8e38e4
    .end array-data

    .line 920
    :array_4a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static railReload(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    const v3, 0x3f666666    # 0.9f

    .line 950
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

    .line 956
    :cond_17
    :goto_17
    return-void

    .line 951
    :cond_18
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    long-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenShots:J

    .line 952
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

    .line 953
    :catch_3b
    move-exception v0

    goto :goto_17
.end method

.method private static range(Lfr/testudo/spacecorsair/game/levels/LevelId;II)V
    .registers 9

    .prologue
    .line 198
    :try_start_0
    const-class v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    const-string v1, "levelRange"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 199
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 200
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    if-eqz v0, :cond_37

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 206
    :cond_37
    :goto_37
    return-void

    .line 202
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v5, v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_37

    .line 203
    :catch_70
    move-exception v0

    goto :goto_37
.end method

.method static rank(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 583
    if-nez p0, :cond_c

    const/4 v0, 0x0

    .line 584
    :goto_4
    if-eqz v0, :cond_15

    array-length v1, v0

    if-le v1, v2, :cond_15

    aget v0, v0, v2

    :goto_b
    return v0

    .line 583
    :cond_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_4

    .line 584
    :cond_15
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static rareSalvage(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;I)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 275
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->isDrone(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 290
    :cond_8
    :goto_8
    return-void

    .line 277
    :cond_9
    :try_start_9
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_15

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_81

    :cond_15
    move v2, v0

    .line 278
    :goto_16
    if-eqz v2, :cond_83

    const/4 v0, 0x2

    .line 279
    :cond_19
    :goto_19
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->RARE_P:[F

    aget v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->RARE_K:[F

    aget v0, v2, v0

    .line 280
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v1

    cmpl-double v1, v2, v4

    if-gez v1, :cond_8

    .line 281
    const/4 v1, 0x1

    int-to-float v2, p1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 282
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 283
    const/4 v1, 0x1

    invoke-static {v1, p0}, Lfr/testudo/spacecorsair/mod/ModV35;->addParts(ILfr/testudo/spacecorsair/business/Element;)V

    .line 284
    invoke-static {p0}, Lfr/testudo/spacecorsair/engine/GameThread;->isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 285
    :goto_48
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    .line 286
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

    .line 285
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 287
    :catch_7f
    move-exception v0

    goto :goto_8

    :cond_81
    move v2, v1

    .line 277
    goto :goto_16

    .line 278
    :cond_83
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_19

    .line 284
    :cond_89
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object p0, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_8d} :catch_7f

    goto :goto_48
.end method

.method public static refundIndustrials(Lfr/testudo/spacecorsair/business/player/PlayerInfo;)V
    .registers 8

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
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

    .line 219
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v4

    .line 220
    if-eqz v4, :cond_d

    iget v5, v4, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->cls:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_d

    .line 221
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget v0, v4, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->price:I

    add-int/2addr v0, v1

    move v1, v0

    .line 223
    goto :goto_d

    .line 224
    :cond_2c
    if-gtz v1, :cond_2f

    .line 231
    :goto_2e
    return-void

    .line 225
    :cond_2f
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 226
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->availShips:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 227
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

    .line 228
    :catch_68
    move-exception v0

    goto :goto_2e
.end method

.method public static regen(FFJ)F
    .registers 8

    .prologue
    .line 620
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

.method public static relevel(Lfr/testudo/spacecorsair/business/player/PlayerInfo;)V
    .registers 7

    .prologue
    .line 84
    if-eqz p0, :cond_6

    :try_start_2
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTestMode;->on:Z

    if-eqz v0, :cond_7

    .line 102
    :cond_6
    :goto_6
    return-void

    .line 85
    :cond_7
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_6

    const-string v1, "v57_xp_relevel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "v57_xp_relevel"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 88
    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 89
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->xpCapOld()[J

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->totalOf(IJ[J)J

    move-result-wide v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->xpCap()[J

    move-result-object v0

    invoke-static {v2, v3, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->levelOf(J[J)[J

    move-result-object v0

    .line 90
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 91
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    .line 92
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    .line 93
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->init()V

    .line 94
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_93

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->curXp:J

    long-to-float v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->nextLevelXp:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    :goto_63
    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->levelPourc:F
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_65} :catch_90

    .line 95
    :try_start_65
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    iput v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6d} :catch_97

    .line 96
    :goto_6d
    :try_start_6d
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onLevelUp(I)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_72} :catch_95

    .line 97
    :goto_72
    :try_start_72
    const-string v0, "New leveling curve: your XP now puts you at level {0} (was {1})."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->level:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModLang;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_8e} :catch_90

    goto/16 :goto_6

    .line 99
    :catch_90
    move-exception v0

    goto/16 :goto_6

    .line 94
    :cond_93
    const/4 v0, 0x0

    goto :goto_63

    .line 96
    :catch_95
    move-exception v0

    goto :goto_72

    .line 95
    :catch_97
    move-exception v0

    goto :goto_6d
.end method

.method static retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V
    .registers 7

    .prologue
    .line 506
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    aget v0, v0, p2

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModV34;->TIER_F:[F

    aget v1, v1, p1

    div-float/2addr v0, v1

    .line 507
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_10

    .line 515
    :cond_f
    :goto_f
    return-void

    .line 508
    :cond_10
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v1, v0

    iput v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 509
    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->gunsMul(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;F)V

    .line 510
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    .line 511
    instance-of v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v1, :cond_f

    .line 512
    check-cast p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 513
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
    .line 532
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stockClass(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 533
    if-ltz v3, :cond_c8

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->baseHull(I)F

    move-result v2

    .line 534
    :goto_e
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1e

    .line 535
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 536
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 538
    :cond_1e
    sget v2, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    iget v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    if-le v2, v3, :cond_36

    .line 539
    const/16 v2, 0x28

    sget v3, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    .line 540
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->level:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->levelStr:Ljava/lang/String;

    .line 542
    :cond_36
    const/4 v2, -0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 543
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getLevel()I

    move-result v3

    .line 544
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

    .line 545
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

    .line 546
    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v6

    .line 547
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v2, v6

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 548
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 549
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    int-to-float v2, v2

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v7

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->xp:I

    .line 550
    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v2, v6

    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 551
    invoke-static {p0, v6}, Lfr/testudo/spacecorsair/mod/ModV34;->gunsMul(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;F)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8f} :catch_cc

    .line 552
    :try_start_8f
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV35;->enemyClass(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->dmgClass(I)F

    move-result v2

    iget v7, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v7, v2

    iput v7, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->gunsMul(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;F)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_9f} :catch_ce

    .line 553
    :goto_9f
    :try_start_9f
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v2, :cond_b4

    .line 554
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-object v2, v0

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 555
    if-eqz v2, :cond_b4

    iget v7, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v6, v7

    iput v6, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v6, v2, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v6, v2, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 557
    :cond_b4
    const/4 v2, 0x1

    invoke-static {p0, v2, v5}, Lfr/testudo/spacecorsair/mod/ModV34;->retier(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V

    .line 558
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->stockLvOf:Ljava/util/WeakHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-static {p0, v4, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->giveShield(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;II)V

    .line 560
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->syncBeam(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_c7} :catch_cc

    .line 564
    :goto_c7
    return-void

    .line 533
    :cond_c8
    const/high16 v2, -0x40800000    # -1.0f

    goto/16 :goto_e

    .line 561
    :catch_cc
    move-exception v2

    goto :goto_c7

    .line 552
    :catch_ce
    move-exception v2

    goto :goto_9f
.end method

.method static settleElites()V
    .registers 12

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 716
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModV34;->stockElite:Ljava/util/ArrayList;

    monitor-enter v4

    .line 717
    :try_start_6
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->stockElite:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    monitor-exit v4

    .line 743
    :cond_f
    return-void

    .line 718
    :cond_10
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->stockElite:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v6, v6, [Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 719
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModV34;->stockElite:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 720
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_3b

    .line 721
    array-length v7, v2

    move v6, v3

    :goto_23
    if-ge v6, v7, :cond_f

    aget-object v4, v2, v6

    .line 723
    :try_start_27
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModV34;->stockEliteFactors(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)[F

    move-result-object v8

    .line 724
    if-eqz v8, :cond_37

    iget-boolean v3, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->elite:Z

    if-eqz v3, :cond_37

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_34} :catch_a4

    move-result v3

    if-eqz v3, :cond_3e

    .line 721
    :cond_37
    :goto_37
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_23

    .line 720
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2

    .line 725
    :cond_3e
    :try_start_3e
    iget v3, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/4 v9, 0x0

    cmpl-float v3, v3, v9

    if-lez v3, :cond_a6

    iget v3, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget v9, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    div-float/2addr v3, v9

    .line 726
    :goto_4a
    iget v9, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    const/4 v10, 0x0

    aget v10, v8, v10

    div-float/2addr v9, v10

    iput v9, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 727
    iget v9, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v3, v9

    iput v3, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 728
    iget v3, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/4 v9, 0x1

    aget v9, v8, v9

    div-float/2addr v3, v9

    iput v3, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 729
    const/4 v3, 0x2

    aget v3, v8, v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_70

    iget-wide v10, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    long-to-float v3, v10

    const/4 v9, 0x2

    aget v8, v8, v9

    div-float/2addr v3, v8

    float-to-long v8, v3

    iput-wide v8, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    .line 730
    :cond_70
    instance-of v3, v4, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v3, :cond_87

    .line 731
    move-object v0, v4

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    move-object v3, v0

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 732
    if-eqz v3, :cond_87

    iget v8, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iput v8, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v8, v3, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v8, v3, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 734
    :cond_87
    instance-of v3, v4, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    if-eqz v3, :cond_a0

    .line 735
    move-object v0, v4

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    move-object v3, v0

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 736
    if-eqz v3, :cond_a0

    iget v8, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenRafaleInMilli:I

    int-to-float v8, v8

    const v9, 0x3f333333    # 0.7f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenRafaleInMilli:I

    .line 738
    :cond_a0
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModV34;->syncBeam(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_a3} :catch_a4

    goto :goto_37

    .line 739
    :catch_a4
    move-exception v3

    goto :goto_37

    :cond_a6
    move v3, v5

    .line 725
    goto :goto_4a
.end method

.method static shieldAbsorb(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 8

    .prologue
    .line 641
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    .line 649
    :cond_5
    :goto_5
    return p1

    .line 642
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 643
    invoke-static {p0, v0, v1}, Lfr/testudo/spacecorsair/mod/ModV34;->charge(Lfr/testudo/spacecorsair/business/Element;J)Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    move-result-object v2

    .line 644
    if-eqz v2, :cond_5

    .line 645
    if-eqz p2, :cond_1e

    iget-object v3, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v3, :cond_1e

    iget-object v3, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v3, :cond_1e

    iput-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->hit:J

    .line 646
    :cond_1e
    iget v0, v2, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 647
    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    sub-float/2addr v1, v0

    iput v1, v2, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    .line 648
    sget v1, Lfr/testudo/spacecorsair/mod/ModV34;->shLogs:I

    const/16 v3, 0x8

    if-ge v1, v3, :cond_97

    if-eqz p2, :cond_97

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_97

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_97

    sget v1, Lfr/testudo/spacecorsair/mod/ModV34;->shLogs:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModV34;->shLogs:I

    const-string v1, "shield"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " absorbed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", left "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_97
    sub-float/2addr p1, v0

    goto/16 :goto_5
.end method

.method public static shieldClass(I)F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 466
    if-gez p0, :cond_5

    :goto_4
    return v0

    :cond_5
    const v1, 0x3eb33333    # 0.35f

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->classFactor(I)F

    move-result v2

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_4
.end method

.method static shieldDraw(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 654
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->overShell(Lfr/testudo/spacecorsair/business/Element;F)V

    .line 655
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    .line 656
    if-eqz v0, :cond_1a

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    cmpg-float v1, v1, v5

    if-lez v1, :cond_1a

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_1b

    .line 659
    :cond_1a
    :goto_1a
    return-void

    .line 657
    :cond_1b
    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    div-float v4, v1, v0

    const v0, 0x3f933333    # 1.15f

    mul-float v3, p1, v0

    .line 658
    const-string v0, "shield_shell"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3df5c28f    # 0.12f

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v4, v10

    add-float/2addr v9, v4

    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto :goto_1a
.end method

.method public static shieldStats(III)[F
    .registers 8

    .prologue
    .line 609
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpecBuilder;->decentShieldSpecByLevel:[Lfr/testudo/spacecorsair/business/loot/stuff/shield/ShieldSpec;

    .line 610
    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v1, v0, v1

    .line 611
    invoke-static {p2}, Lfr/testudo/spacecorsair/mod/ModV34;->shieldClass(I)F

    move-result v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModV34;->curve(I)F

    move-result v2

    mul-float/2addr v2, v0

    .line 612
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

    .line 614
    :goto_2a
    return-object v0

    .line 613
    :catch_2b
    move-exception v0

    .line 614
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method static shieldTick(Lfr/testudo/spacecorsair/business/Element;J)V
    .registers 4

    .prologue
    .line 634
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModV34;->charge(Lfr/testudo/spacecorsair/business/Element;J)Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    .line 635
    return-void
.end method

.method static shieldUp(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 577
    if-nez p0, :cond_14

    const/4 v0, 0x0

    .line 578
    :goto_4
    if-eqz v0, :cond_1d

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1d

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_13
    return v0

    .line 577
    :cond_14
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    goto :goto_4

    .line 578
    :cond_1d
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static shipLevel(I)I
    .registers 3

    .prologue
    .line 149
    const/16 v0, 0xb

    if-gt p0, v0, :cond_9

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->lvl(I)I

    move-result v0

    .line 150
    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x20

    add-int/lit8 v1, p0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_8
.end method

.method public static shipLife()[I
    .registers 10

    .prologue
    .line 106
    const/16 v0, 0x18

    new-array v2, v0, [I

    fill-array-data v2, :array_36

    .line 107
    const/16 v0, 0x29

    new-array v3, v0, [I

    .line 108
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

    .line 109
    :cond_34
    return-object v3

    .line 106
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

.method private static ships()V
    .registers 8

    .prologue
    .line 169
    :try_start_0
    const-class v0, Lfr/testudo/spacecorsair/business/economy/Price;

    const-string v1, "min"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 170
    const-class v0, Lfr/testudo/spacecorsair/business/economy/Price;

    const-string v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 171
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 172
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_8e

    .line 175
    if-eqz v0, :cond_1e

    :try_start_2c
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModShips;->hull(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alien"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 176
    const/4 v1, -0x1

    .line 177
    const/4 v2, 0x0

    :goto_46
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModV34;->SHIP_FIX:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_5d

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModV34;->SHIP_FIX:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    move v1, v2

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 178
    :cond_5d
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v6

    .line 179
    if-ltz v1, :cond_87

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->SHIP_FIX_LV:[I

    aget v2, v2, v1

    :goto_67
    iput v2, v6, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    .line 180
    if-ltz v1, :cond_1e

    .line 181
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v0

    .line 182
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->SHIP_FIX_PRICE:[I

    aget v2, v2, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 183
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->SHIP_FIX_PRICE:[I

    aget v2, v2, v1

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 184
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->SHIP_FIX_PRICE:[I

    aget v1, v2, v1

    int-to-float v1, v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/economy/Price;->current:F

    goto :goto_1e

    .line 186
    :catch_85
    move-exception v0

    goto :goto_1e

    .line 179
    :cond_87
    iget v2, v6, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->level:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV34;->shipLevel(I)I
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_8c} :catch_85

    move-result v2

    goto :goto_67

    .line 190
    :catch_8e
    move-exception v0

    .line 193
    :cond_8f
    return-void
.end method

.method public static skillDamage(FIIZZD)F
    .registers 10

    .prologue
    .line 1014
    if-eqz p3, :cond_d

    .line 1015
    invoke-static {p2, p1}, Lfr/testudo/spacecorsair/mod/ModV34;->dodge(II)F

    move-result v0

    .line 1016
    if-eqz p4, :cond_13

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr p0, v0

    .line 1019
    :cond_d
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModV34;->pilot(II)F

    move-result v0

    mul-float/2addr v0, p0

    :goto_12
    return v0

    .line 1017
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

    .line 999
    if-eqz p0, :cond_7

    cmpg-float v2, p2, v10

    if-gtz v2, :cond_8

    .line 1010
    :cond_7
    :goto_7
    return-void

    .line 1001
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

    .line 1002
    :goto_27
    cmpg-float v2, v3, v10

    if-gtz v2, :cond_4e

    .line 1003
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

    .line 1006
    :catch_45
    move-exception v2

    move v2, v3

    .line 1009
    :goto_47
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    goto :goto_7

    .line 1001
    :cond_4c
    const/4 v6, 0x0

    goto :goto_1d

    :cond_4e
    move v2, v3

    .line 1008
    goto :goto_47

    .line 1006
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

    .line 810
    packed-switch p0, :pswitch_data_c

    .line 815
    :goto_4
    :pswitch_4
    return v0

    .line 811
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 813
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 814
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 810
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
    .line 410
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 414
    :goto_3
    return v0

    .line 411
    :cond_4
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->playerStat()I

    move-result v0

    goto :goto_3

    .line 412
    :cond_d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 413
    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_3

    .line 414
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
    .line 377
    const/16 v0, 0xa

    if-ge p0, v0, :cond_6

    const/4 v0, 0x0

    .line 378
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

    .line 478
    if-nez p0, :cond_4

    .line 486
    :cond_3
    :goto_3
    return v0

    .line 479
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 480
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    if-eq v1, v2, :cond_10

    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    if-ne v1, v2, :cond_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 481
    :cond_12
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    if-eq v1, v2, :cond_1a

    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    if-ne v1, v2, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_3

    .line 482
    :cond_1c
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    if-ne v1, v2, :cond_22

    const/4 v0, 0x2

    goto :goto_3

    .line 483
    :cond_22
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-ne v1, v2, :cond_28

    const/4 v0, 0x3

    goto :goto_3

    .line 484
    :cond_28
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-ne v1, v2, :cond_2e

    const/4 v0, 0x4

    goto :goto_3

    .line 485
    :cond_2e
    const-class v2, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    if-ne v1, v2, :cond_3

    const/4 v0, 0x5

    goto :goto_3
.end method

.method static stockEliteFactors(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)[F
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 698
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienBlatte;

    if-eqz v0, :cond_b

    new-array v0, v1, [F

    fill-array-data v0, :array_72

    .line 709
    :goto_a
    return-object v0

    .line 699
    :cond_b
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienRat;

    if-eqz v0, :cond_15

    new-array v0, v1, [F

    fill-array-data v0, :array_7c

    goto :goto_a

    .line 700
    :cond_15
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/UfoAlienShip;

    if-eqz v0, :cond_1f

    new-array v0, v1, [F

    fill-array-data v0, :array_86

    goto :goto_a

    .line 701
    :cond_1f
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/AlienTourelle;

    if-eqz v0, :cond_29

    new-array v0, v1, [F

    fill-array-data v0, :array_90

    goto :goto_a

    .line 702
    :cond_29
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    if-eqz v0, :cond_33

    new-array v0, v1, [F

    fill-array-data v0, :array_9a

    goto :goto_a

    .line 703
    :cond_33
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/RocketTourelle;

    if-eqz v0, :cond_3d

    new-array v0, v1, [F

    fill-array-data v0, :array_a4

    goto :goto_a

    .line 704
    :cond_3d
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Albatros;

    if-eqz v0, :cond_47

    new-array v0, v1, [F

    fill-array-data v0, :array_ae

    goto :goto_a

    .line 705
    :cond_47
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;

    if-eqz v0, :cond_51

    new-array v0, v1, [F

    fill-array-data v0, :array_b8

    goto :goto_a

    .line 706
    :cond_51
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v0, :cond_5b

    new-array v0, v1, [F

    fill-array-data v0, :array_c2

    goto :goto_a

    .line 707
    :cond_5b
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/TaupeShip;

    if-eqz v0, :cond_65

    new-array v0, v1, [F

    fill-array-data v0, :array_cc

    goto :goto_a

    .line 708
    :cond_65
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    if-eqz v0, :cond_6f

    new-array v0, v1, [F

    fill-array-data v0, :array_d6

    goto :goto_a

    .line 709
    :cond_6f
    const/4 v0, 0x0

    goto :goto_a

    .line 698
    nop

    :array_72
    .array-data 4
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 699
    :array_7c
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 700
    :array_86
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 701
    :array_90
    .array-data 4
        0x40400000    # 3.0f
        0x3fa66666    # 1.3f
        0x3e99999a    # 0.3f
    .end array-data

    .line 702
    :array_9a
    .array-data 4
        0x40400000    # 3.0f
        0x3fa66666    # 1.3f
        0x3e99999a    # 0.3f
    .end array-data

    .line 703
    :array_a4
    .array-data 4
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 704
    :array_ae
    .array-data 4
        0x40400000    # 3.0f
        0x3fd9999a    # 1.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 705
    :array_b8
    .array-data 4
        0x40400000    # 3.0f
        0x3fd9999a    # 1.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 706
    :array_c2
    .array-data 4
        0x40400000    # 3.0f
        0x3fc00000    # 1.5f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 707
    :array_cc
    .array-data 4
        0x40400000    # 3.0f
        0x3fd9999a    # 1.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 708
    :array_d6
    .array-data 4
        0x40800000    # 4.0f
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static storiesDone()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 395
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 396
    if-nez v3, :cond_9

    move v0, v1

    .line 399
    :cond_8
    return v0

    .line 398
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

    .line 383
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModRepData;->KEYS:[Ljava/lang/String;

    array-length v4, v0

    move v0, v1

    move v2, v1

    .line 384
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

    .line 385
    :cond_1c
    return v2
.end method

.method public static storyDone(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 390
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 391
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

    .line 392
    :cond_25
    return-void
.end method

.method static syncBeam(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 3

    .prologue
    .line 680
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_22

    const-class v1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_29

    if-eq v0, v1, :cond_22

    .line 682
    :try_start_a
    const-string v1, "fakeProjectile"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_f} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_29

    move-result-object v0

    .line 683
    const/4 v1, 0x1

    :try_start_11
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 684
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 685
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-eqz v1, :cond_22

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 691
    :cond_22
    :goto_22
    return-void

    .line 682
    :catch_23
    move-exception v1

    .line 680
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_27} :catch_29

    move-result-object v0

    goto :goto_4

    .line 688
    :catch_29
    move-exception v0

    goto :goto_22
.end method

.method public static tier(Lfr/testudo/spacecorsair/business/Element;)I
    .registers 3

    .prologue
    .line 418
    if-nez p0, :cond_7

    const/4 v0, 0x0

    .line 419
    :goto_3
    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_6
    return v0

    .line 418
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->state:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_3

    .line 419
    :cond_10
    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_6
.end method

.method public static totalOf(IJ[J)J
    .registers 11

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 74
    const/4 v0, 0x0

    :goto_7
    const/16 v1, 0x28

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_15

    aget-wide v4, p3, v0

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 75
    :cond_15
    return-wide v2
.end method

.method static wallDamage(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;F)F
    .registers 7

    .prologue
    .line 1025
    if-eqz p1, :cond_8

    :try_start_2
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 1029
    :cond_8
    :goto_8
    return p2

    .line 1026
    :cond_9
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_17
    const/4 v0, 0x1

    .line 1027
    :goto_18
    iget-object v1, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->stat(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModV34;->pilot(II)F

    move-result v1

    mul-float/2addr v1, p2

    if-eqz v0, :cond_30

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2b
    mul-float p2, v1, v0

    goto :goto_8

    .line 1026
    :cond_2e
    const/4 v0, 0x0

    goto :goto_18

    .line 1027
    :cond_30
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->factionOf(Lfr/testudo/spacecorsair/business/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->familyOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lfr/testudo/spacecorsair/mod/ModV34;->counter(Ljava/lang/String;Ljava/lang/String;I)F
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_41} :catch_43

    move-result v0

    goto :goto_2b

    .line 1028
    :catch_43
    move-exception v0

    goto :goto_8
.end method

.method public static want(I)V
    .registers 1

    .prologue
    .line 526
    sput p0, Lfr/testudo/spacecorsair/mod/ModV34;->want:I

    .line 527
    return-void
.end method

.method public static weaponRule(Ljava/lang/String;I)F
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 882
    if-gez p1, :cond_5

    .line 884
    :cond_4
    :goto_4
    return v0

    .line 883
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    const v0, 0x3f59999a    # 0.85f

    goto :goto_4

    .line 884
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
    .line 821
    if-nez p0, :cond_e

    const/4 v0, 0x0

    move-object v2, v0

    .line 822
    :goto_4
    if-eqz v2, :cond_c

    iget-object v0, v2, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;->gearType:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;->LASER:Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec$Type;

    if-eq v0, v1, :cond_14

    :cond_c
    const/4 v1, -0x1

    .line 825
    :cond_d
    return v1

    .line 821
    :cond_e
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getGearSpec()Lfr/testudo/spacecorsair/business/loot/stuff/GearSpec;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 823
    :cond_14
    const/4 v1, 0x0

    .line 824
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
    .registers 4

    .prologue
    .line 39
    const/16 v0, 0x29

    new-array v1, v0, [J

    .line 40
    const/4 v0, 0x0

    :goto_5
    const/16 v2, 0x28

    if-gt v0, v2, :cond_1b

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModV34;->XP_V57:[J

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModV34;->XP_V57:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 41
    :cond_1b
    return-object v1
.end method

.method public static xpCapOld()[J
    .registers 10

    .prologue
    .line 46
    const/16 v0, 0x11

    new-array v3, v0, [J

    fill-array-data v3, :array_34

    .line 47
    const/16 v0, 0x29

    new-array v4, v0, [J

    .line 48
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

    .line 49
    :cond_33
    return-object v4

    .line 46
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
