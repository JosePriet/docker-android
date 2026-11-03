.class public final Lfr/testudo/spacecorsair/mod/ModTitan;
.super Ljava/lang/Object;
.source "ModTitan.java"


# static fields
.field public static final BLAST:F = 350.0f

.field static final CHARGE:I = 0x1

.field private static final CHARGE_MS:[I

.field private static final COL:[[F

.field static final COOL:I = 0x3

.field private static final COOL_MS:[I

.field static final DEV:I = 0x3

.field private static final DMG:[F

.field private static final DMG_LVL:[F

.field static final FIRE:I = 0x2

.field private static final FIRE_MS:[I

.field static final LANCE_CORE:Ljava/lang/String; = "vfx_lance_core"

.field static final LEVIATHAN:I = 0x1

.field private static final MISSILE:[Ljava/lang/String;

.field public static final MISSILE_DAMAGE:F = 1.9f

.field public static final MISSILE_RANGE:F = 1.55f

.field public static final MISSILE_RELOAD:F = 1.6f

.field static final NONE:I = 0x0

.field static final OVER:I = 0x4

.field private static final REACH:[F

.field static final READY:I = 0x0

.field public static final SHOT_DAMAGE:F = 2.5f

.field public static final SHOT_RELOAD:F = 1.55f

.field static final THRONE:I = 0x2

.field private static final TICK_MS:[I

.field private static final TURRET:[Ljava/lang/String;

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field static anchorHold:Z

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static boltD:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static boltL:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static boltT:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static btn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private static final c2:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static coolLabel:Ljava/lang/String;

.field private static coolSec:I

.field private static coolTotal:I

.field private static desiredSpin:F

.field private static doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

.field private static final flash:[F

.field static holdFire:Z

.field private static final hullMissileNames:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModShips$Hull;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final hullMissiles:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lfr/testudo/spacecorsair/mod/ModShips$Hull;",
            "Lfr/testudo/spacecorsair/mod/ModFx$Sprite;",
            ">;"
        }
    .end annotation
.end field

.field static volatile label:Ljava/lang/String;

.field static volatile lastTick:J

.field private static levSeq:Z

.field private static lockSpin:F

.field private static missileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static novaRadius:F

.field private static ownerKind:I

.field private static final recoil:[F

.field static volatile request:Z

.field private static savedForce:F

.field static volatile show:Z

.field private static state:I

.field private static final targets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static tickAcc:I

.field private static timer:I

.field static final titanClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static trail:I

.field private static uiAct:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field static volatile uiKind:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x4

    .line 48
    new-array v0, v2, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_d0

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_da

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_e4

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_ee

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    .line 49
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    const-string v1, "hw_turret_leviathan"

    aput-object v1, v0, v5

    const-string v1, "hw_turret_crimson_throne"

    aput-object v1, v0, v6

    const-string v1, "hw_turret_dev_prototype"

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->TURRET:[Ljava/lang/String;

    .line 50
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    const-string v1, "hw_missile_leviathan"

    aput-object v1, v0, v5

    const-string v1, "hw_missile_crimson_throne"

    aput-object v1, v0, v6

    const-string v1, "hw_missile_dev_prototype"

    aput-object v1, v0, v3

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->MISSILE:[Ljava/lang/String;

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->recoil:[F

    .line 76
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    .line 77
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->c2:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 225
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->hullMissiles:Ljava/util/IdentityHashMap;

    .line 226
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->hullMissileNames:Ljava/util/IdentityHashMap;

    .line 276
    sput v3, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    .line 277
    const/16 v0, 0x4e20

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 280
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->savedForce:F

    .line 281
    sput v4, Lfr/testudo/spacecorsair/mod/ModTitan;->ownerKind:I

    .line 283
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->label:Ljava/lang/String;

    .line 289
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->coolSec:I

    .line 293
    sput v5, Lfr/testudo/spacecorsair/mod/ModTitan;->coolTotal:I

    .line 296
    new-array v0, v2, [I

    fill-array-data v0, :array_f8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->CHARGE_MS:[I

    .line 297
    new-array v0, v2, [I

    fill-array-data v0, :array_104

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->FIRE_MS:[I

    .line 298
    new-array v0, v2, [I

    fill-array-data v0, :array_110

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->COOL_MS:[I

    .line 299
    new-array v0, v2, [F

    fill-array-data v0, :array_11c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->DMG:[F

    .line 300
    new-array v0, v2, [F

    fill-array-data v0, :array_128

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->DMG_LVL:[F

    .line 301
    new-array v0, v2, [I

    fill-array-data v0, :array_134

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->TICK_MS:[I

    .line 302
    new-array v0, v2, [F

    fill-array-data v0, :array_140

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->REACH:[F

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->targets:Ljava/util/ArrayList;

    .line 550
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->titanClass:Ljava/util/Map;

    return-void

    .line 48
    nop

    :array_d0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_da
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    :array_e4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f0ccccd    # 0.55f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_ee
    .array-data 4
        0x3eb33333    # 0.35f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 296
    :array_f8
    .array-data 4
        0x0
        0x9c4
        0x7d0
        0x4b0
    .end array-data

    .line 297
    :array_104
    .array-data 4
        0x0
        0xfa0
        0xdac
        0xbb8
    .end array-data

    .line 298
    :array_110
    .array-data 4
        0x0
        0x15f90
        0x124f8
        0x2ee0
    .end array-data

    .line 299
    :array_11c
    .array-data 4
        0x0
        0x447a0000    # 1000.0f
        0x442f0000    # 700.0f
        0x44fa0000    # 2000.0f
    .end array-data

    .line 300
    :array_128
    .array-data 4
        0x0
        0x42b40000    # 90.0f
        0x42700000    # 60.0f
        0x43480000    # 200.0f
    .end array-data

    .line 301
    :array_134
    .array-data 4
        0x0
        0xc8
        0xfa
        0xc8
    .end array-data

    .line 302
    :array_140
    .array-data 4
        0x0
        0x452f0000    # 2800.0f
        0x44af0000    # 1400.0f
        0x45228000    # 2600.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->btn:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 31
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    return v0
.end method

.method static synthetic access$200()[[F
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    return-object v0
.end method

.method static anchorRelease(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 2

    .prologue
    .line 474
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->anchorHold:Z

    .line 475
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->busy()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->release(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 476
    :cond_c
    return-void
.end method

.method public static apply(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 8

    .prologue
    .line 61
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v1

    .line 62
    if-nez v1, :cond_7

    .line 72
    :cond_6
    :goto_6
    return-void

    .line 63
    :cond_7
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v0, :cond_3c

    .line 64
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_3c

    aget-object v4, v2, v0

    .line 65
    iget v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootDamage:I

    int-to-float v5, v5

    const/high16 v6, 0x40200000    # 2.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootDamage:I

    .line 66
    iget v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    int-to-float v5, v5

    const v6, 0x3fc66666    # 1.55f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    .line 67
    iget v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    const v6, 0x3fd9999a    # 1.7f

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->maxSpinSpeed:F

    .line 68
    iget v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F

    const v6, 0x3fa66666    # 1.3f

    mul-float/2addr v5, v6

    iput v5, v4, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shootSpeed:F

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 71
    :cond_3c
    const/4 v0, 0x3

    if-eq v1, v0, :cond_6

    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    long-to-float v0, v0

    const v1, 0x3fcccccd    # 1.6f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    goto :goto_6
.end method

.method public static attachUi(Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x40c00000    # 6.0f

    .line 722
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".Main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 784
    :cond_14
    :goto_14
    return-void

    .line 723
    :cond_15
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->btn:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->btn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->uiAct:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->uiAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 724
    :cond_2d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 725
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 726
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 727
    const/4 v2, 0x2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 728
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 729
    mul-float v2, v4, v0

    float-to-int v2, v2

    mul-float v3, v5, v0

    float-to-int v3, v3

    mul-float/2addr v4, v0

    float-to-int v4, v4

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 730
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 731
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 732
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 733
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 734
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 735
    new-instance v2, Lfr/testudo/spacecorsair/mod/ModTitan$1;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/mod/ModTitan$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x51

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 740
    const/high16 v3, 0x42800000    # 64.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 741
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->btn:Ljava/lang/ref/WeakReference;

    .line 743
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->uiAct:Ljava/lang/ref/WeakReference;

    .line 744
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 745
    new-instance v3, Lfr/testudo/spacecorsair/mod/ModTitan$2;

    invoke-direct {v3, p0, v1, v0, v2}, Lfr/testudo/spacecorsair/mod/ModTitan$2;-><init>(Landroid/app/Activity;Landroid/widget/Button;FLandroid/os/Handler;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_a5} :catch_a7

    goto/16 :goto_14

    .line 781
    :catch_a7
    move-exception v0

    goto/16 :goto_14
.end method

.method static beamWidth(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F
    .registers 5

    .prologue
    .line 543
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v1, v0

    .line 544
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v0

    .line 545
    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v2, :cond_2f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModFxData;->NAV:[[F

    iget v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFxData;->NAV:[[F

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v0, v3, v0

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    .line 546
    :goto_22
    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 545
    :cond_2f
    const v0, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    goto :goto_22
.end method

.method public static blastRange(Lfr/testudo/spacecorsair/business/projectiles/Missile;)F
    .registers 22

    .prologue
    .line 247
    :try_start_0
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v3, v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->isAntiMissile:Z

    if-eqz v3, :cond_19

    :cond_16
    const/high16 v2, 0x43af0000    # 350.0f

    .line 268
    :goto_18
    return v2

    .line 249
    :cond_19
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v2

    .line 250
    if-nez v2, :cond_22

    const/high16 v2, 0x43af0000    # 350.0f

    goto :goto_18

    .line 251
    :cond_22
    const/4 v3, 0x3

    if-ne v2, v3, :cond_141

    const/high16 v16, 0x43af0000    # 350.0f

    .line 252
    :goto_27
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v17, v3, v2

    .line 253
    const-string v2, "fx_core"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43be0000    # 380.0f

    const/high16 v8, 0x42a00000    # 80.0f

    const v9, 0x3f99999a    # 1.2f

    mul-float v9, v9, v16

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f666666    # 0.9f

    const v12, 0x3f333333    # 0.7f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 254
    const-string v2, "fx_shock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x44228000    # 650.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v9, v9, v16

    const/4 v10, 0x0

    aget v10, v17, v10

    const/4 v11, 0x1

    aget v11, v17, v11

    const/4 v12, 0x2

    aget v12, v17, v12

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v4, 0x3fcccccd    # 1.6f

    mul-float v4, v4, v16

    const/high16 v5, 0x44610000    # 900.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f59999a    # 0.85f

    const v8, 0x3f333333    # 0.7f

    invoke-static/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModFx;->boom(FFFFFFF)V

    .line 256
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_9e
    const/4 v2, 0x7

    move/from16 v0, v17

    if-ge v0, v2, :cond_146

    .line 257
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v18, v2, v4

    .line 258
    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v20

    .line 259
    const-string v2, "fx_fire"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v5, v5, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v20

    const/high16 v7, 0x43fa0000    # 500.0f

    const/high16 v8, 0x44610000    # 900.0f

    invoke-static {v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v7

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x43160000    # 150.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3ecccccd    # 0.4f

    const v12, 0x3f333333    # 0.7f

    invoke-static {v11, v12}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v11

    const v12, 0x3e19999a    # 0.15f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 260
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 261
    const-string v2, "fx_smoke"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v5, v5, v20

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v20

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    const/high16 v7, 0x44e10000    # 1800.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x43480000    # 200.0f

    const v10, 0x3e99999a    # 0.3f

    const v11, 0x3e99999a    # 0.3f

    const v12, 0x3e99999a    # 0.3f

    const v13, 0x3f0ccccd    # 0.55f

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 262
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastDrag(F)V

    .line 256
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto/16 :goto_9e

    .line 251
    :cond_141
    const v16, 0x4407a000    # 542.5f

    goto/16 :goto_27

    .line 264
    :cond_146
    const-string v2, "titan_blast"

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3f8ccccd    # 1.1f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    const-wide/16 v6, 0xb4

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 265
    const v2, 0x3e19999a    # 0.15f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_160} :catch_164

    move/from16 v2, v16

    .line 266
    goto/16 :goto_18

    .line 267
    :catch_164
    move-exception v2

    .line 268
    const/high16 v2, 0x43af0000    # 350.0f

    goto/16 :goto_18
.end method

.method public static blocksMissiles()Z
    .registers 2

    .prologue
    .line 310
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->busy()Z

    move-result v0

    if-nez v0, :cond_b

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 156
    :try_start_3
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 157
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    instance-of v3, v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v3, :cond_12

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    .line 172
    :cond_11
    :goto_11
    return-object v0

    .line 158
    :cond_12
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-ne v3, v2, :cond_11

    .line 159
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v2

    .line 160
    if-eqz v2, :cond_28

    :goto_20
    invoke-static {p0, v1}, Lfr/testudo/spacecorsair/mod/ModWeapons;->bullet(Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;Z)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_2a

    move-object v0, v1

    goto :goto_11

    .line 160
    :cond_28
    const/4 v1, 0x0

    goto :goto_20

    .line 162
    :cond_2a
    if-eqz v2, :cond_11

    .line 163
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->boltL:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-nez v1, :cond_57

    .line 164
    const-string v1, "fx_bolt"

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x42b80000    # 92.0f

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->boltL:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 165
    const-string v1, "fx_fire"

    const/high16 v3, 0x42680000    # 58.0f

    const/high16 v4, 0x42680000    # 58.0f

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->boltT:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 166
    const-string v1, "fx_bolt"

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x42a80000    # 84.0f

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v1

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->boltD:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 168
    :cond_57
    if-ne v2, v6, :cond_6c

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->boltT:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 169
    :goto_5b
    iget-object v3, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v3, :cond_66

    if-ne v2, v6, :cond_75

    const-string v2, "fx_fire"

    :goto_63
    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModFx;->rebind(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;)V

    .line 170
    :cond_66
    iget-object v2, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eqz v2, :cond_11

    move-object v0, v1

    goto :goto_11

    .line 168
    :cond_6c
    const/4 v1, 0x3

    if-ne v2, v1, :cond_72

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->boltD:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    goto :goto_5b

    :cond_72
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->boltL:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    goto :goto_5b

    .line 169
    :cond_75
    const-string v2, "fx_bolt"
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_77} :catch_78

    goto :goto_63

    .line 171
    :catch_78
    move-exception v1

    goto :goto_11
.end method

.method public static busy()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 305
    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    if-eq v1, v0, :cond_a

    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static chargeFx(Lfr/testudo/spacecorsair/business/player/PlayerShip;IF)V
    .registers 21

    .prologue
    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v0, v2

    move/from16 v16, v0

    .line 581
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v17, v2, p1

    .line 582
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_ac

    .line 584
    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3eb33333    # 0.35f

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    mul-float v8, v16, v2

    .line 585
    const-string v2, "fx_core"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42f00000    # 120.0f

    const v9, 0x3f8ccccd    # 1.1f

    mul-float/2addr v9, v8

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0ccccd    # 0.55f

    const v12, 0x3e19999a    # 0.15f

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v14, v14, p2

    add-float/2addr v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 586
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_ab

    .line 587
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v2

    .line 588
    const v2, 0x3f666666    # 0.9f

    mul-float v2, v2, v16

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v2, v4

    add-float v4, v6, v2

    .line 590
    const-string v2, "fx_fire"

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v5, v3

    const v6, 0x3fe66666    # 1.8f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v6, v4

    const v7, 0x3fe66666    # 1.8f

    mul-float/2addr v6, v7

    const/high16 v7, 0x44020000    # 520.0f

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3e19999a    # 0.15f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 615
    :cond_ab
    :goto_ab
    return-void

    .line 593
    :cond_ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v3, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    const/4 v4, 0x0

    move/from16 v0, v16

    neg-float v5, v0

    const v6, 0x3ef5c28f    # 0.48f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 594
    const v2, 0x3d4ccccd    # 0.05f

    const v3, 0x3e99999a    # 0.3f

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    mul-float v8, v16, v2

    .line 595
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v9, 0x0

    aget v10, v17, v9

    const/4 v9, 0x1

    aget v11, v17, v9

    const/4 v9, 0x2

    aget v12, v17, v9

    const v9, 0x3f19999a    # 0.6f

    const v13, 0x3ecccccd    # 0.4f

    mul-float v13, v13, p2

    add-float/2addr v13, v9

    const/4 v14, 0x1

    const/4 v15, 0x1

    move v9, v8

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 597
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpg-double v2, v2, v4

    if-gez v2, :cond_15d

    .line 598
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v2

    .line 599
    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    mul-float v2, v2, v16

    .line 600
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v2, v4

    add-float v4, v6, v2

    .line 601
    const-string v2, "fx_spark"

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v5, v3

    const v6, 0x400ccccd    # 2.2f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v6, v4

    const v7, 0x400ccccd    # 2.2f

    mul-float/2addr v6, v7

    const/high16 v7, 0x43e10000    # 450.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v10, 0x0

    aget v10, v17, v10

    const/4 v11, 0x1

    aget v11, v17, v11

    const/4 v12, 0x2

    aget v12, v17, v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 602
    const v2, 0x3d4ccccd    # 0.05f

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->lastStretch(F)V

    .line 605
    :cond_15d
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v2

    .line 606
    iget v3, v2, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    if-ltz v3, :cond_ab

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v4, v6

    if-gez v3, :cond_ab

    .line 607
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModFxData;->LIGHTS:[[F

    iget v2, v2, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->data:I

    aget-object v2, v3, v2

    .line 608
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    array-length v3, v2

    div-int/lit8 v3, v3, 0x5

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    mul-int/lit8 v3, v3, 0x5

    .line 609
    add-int/lit8 v4, v3, 0x1

    array-length v5, v2

    if-ge v4, v5, :cond_ab

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v5, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    aget v6, v2, v3

    mul-float v6, v6, v16

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    mul-float v2, v2, v16

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v4, v5, v6, v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 611
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, v17

    invoke-static {v2, v3, v4, v5, v0}, Lfr/testudo/spacecorsair/mod/ModTitan;->zigzag(FFFF[F)V

    goto/16 :goto_ab
.end method

.method private static damageTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V
    .registers 21

    .prologue
    .line 499
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v2, :cond_b

    new-instance v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;-><init>()V

    sput-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    .line 500
    :cond_b
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    move-object/from16 v0, p0

    iput-object v0, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 501
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->level:I

    .line 502
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->DMG:[F

    aget v3, v3, p1

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    int-to-float v4, v4

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->DMG_LVL:[F

    aget v5, v5, p1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 503
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->destroyedOnImpact:Z

    .line 504
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->ignoreImactDecalOnTarget:Z

    .line 505
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    const/4 v3, 0x0

    iput v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->mass:F

    .line 506
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    sget-object v3, Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;->DEFAULT:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    iput-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 507
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->resolveAlteration()V

    .line 508
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->targets:Ljava/util/ArrayList;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/Mod;->enemiesInto(Ljava/util/List;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v2, v2

    .line 510
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_103

    .line 511
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_5a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->targets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_214

    .line 512
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->targets:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lfr/testudo/spacecorsair/business/Element;

    .line 513
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_7b

    .line 511
    :cond_76
    :goto_76
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_5a

    .line 514
    :cond_7b
    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    sget v3, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    invoke-static/range {v16 .. v16}, Lfr/testudo/spacecorsair/mod/ModTitan;->radiusOf(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_76

    .line 515
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->DMG:[F

    aget v2, v2, p1

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    int-to-float v3, v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->DMG_LVL:[F

    aget v4, v4, p1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModTitan;->doomHit(Lfr/testudo/spacecorsair/business/Element;F)V

    .line 516
    const-string v2, "fx_fire"

    move-object/from16 v0, v16

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43c80000    # 400.0f

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x42f00000    # 120.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3e19999a    # 0.15f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 517
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_da

    move-object/from16 v0, v16

    iget v2, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_76

    :cond_da
    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v16

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v4, 0x43200000    # 160.0f

    invoke-static/range {v16 .. v16}, Lfr/testudo/spacecorsair/mod/ModTitan;->radiusOf(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const v5, 0x44548000    # 850.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const v8, 0x3f19999a    # 0.6f

    invoke-static/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModFx;->boom(FFFFFFF)V

    goto/16 :goto_76

    .line 521
    :cond_103
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v4, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    const/4 v5, 0x0

    neg-float v2, v2

    const v6, 0x3ef5c28f    # 0.48f

    mul-float/2addr v2, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v5, v2, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 522
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    sget v3, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 523
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->beamWidth(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v18, v2, v3

    .line 524
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_132
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->targets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_214

    .line 525
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->targets:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lfr/testudo/spacecorsair/business/Element;

    .line 526
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v2, :cond_153

    .line 524
    :cond_14e
    :goto_14e
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_132

    .line 527
    :cond_153
    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v3

    move-object/from16 v0, v16

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v3, v4

    .line 528
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v4, v2

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 529
    invoke-static/range {v16 .. v16}, Lfr/testudo/spacecorsair/mod/ModTitan;->radiusOf(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v5

    neg-float v5, v5

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_14e

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->REACH:[F

    aget v5, v5, p1

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_14e

    .line 530
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v2, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 531
    invoke-static/range {v16 .. v16}, Lfr/testudo/spacecorsair/mod/ModTitan;->radiusOf(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v3

    add-float v3, v3, v18

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_14e

    .line 532
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->DMG:[F

    aget v2, v2, p1

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    int-to-float v3, v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->DMG_LVL:[F

    aget v4, v4, p1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModTitan;->doomHit(Lfr/testudo/spacecorsair/business/Element;F)V

    .line 533
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v12, v2, p1

    .line 534
    const-string v2, "fx_core"

    move-object/from16 v0, v16

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43820000    # 260.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v10, 0x0

    aget v10, v12, v10

    const/4 v11, 0x1

    aget v11, v12, v11

    const/4 v13, 0x2

    aget v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 535
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_1eb

    move-object/from16 v0, v16

    iget v2, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_14e

    :cond_1eb
    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v16

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v4, 0x43200000    # 160.0f

    invoke-static/range {v16 .. v16}, Lfr/testudo/spacecorsair/mod/ModTitan;->radiusOf(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const v5, 0x44548000    # 850.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f59999a    # 0.85f

    const v8, 0x3f333333    # 0.7f

    invoke-static/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModFx;->boom(FFFFFFF)V

    goto/16 :goto_14e

    .line 539
    :cond_214
    return-void
.end method

.method private static doomHit(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 5

    .prologue
    .line 557
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->titanClass:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 559
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_20

    const v0, 0x3b14f209

    :goto_13
    mul-float/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    .line 567
    :goto_1a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/Element;->applyProjectileHit(Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 568
    return-void

    .line 559
    :cond_20
    const v0, 0x3aa3d70a    # 0.00125f

    goto :goto_13

    .line 560
    :cond_24
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 562
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v2, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_3d

    const v0, 0x3bb2bc0b

    :goto_35
    mul-float/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    goto :goto_1a

    :cond_3d
    const v0, 0x3b83126f    # 0.004f

    goto :goto_35

    .line 565
    :cond_41
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->doomShot:Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;->damage:F

    goto :goto_1a
.end method

.method static drawOver(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)V
    .registers 27

    .prologue
    .line 655
    sget v2, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    sget v2, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    .line 712
    :cond_a
    :goto_a
    return-void

    .line 656
    :cond_b
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)I

    move-result v3

    .line 657
    if-eqz v3, :cond_a

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v0, v2

    move/from16 v19, v0

    .line 659
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v20, v2, v3

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 661
    sget v2, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_ed

    .line 663
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    sget v6, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    int-to-float v6, v6

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModTitan;->CHARGE_MS:[I

    aget v7, v7, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 664
    const-wide/32 v4, 0x186a0

    rem-long v4, v14, v4

    long-to-float v2, v4

    const v4, 0x3cf5c28f    # 0.03f

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float v7, v2, v4

    .line 665
    const v2, 0x3f666666    # 0.9f

    const v4, 0x3dcccccd    # 0.1f

    long-to-double v8, v14

    const-wide v10, 0x4051800000000000L    # 70.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 666
    const/4 v4, 0x2

    if-ne v3, v4, :cond_95

    .line 667
    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    mul-float v3, v3, v19

    mul-float v5, v3, v2

    .line 668
    const-string v2, "vfx_doomsday_charge"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f0ccccd    # 0.55f

    const v10, 0x3e3851ec    # 0.18f

    const v11, 0x3eb33333    # 0.35f

    const v12, 0x3f266666    # 0.65f

    mul-float/2addr v6, v12

    add-float/2addr v11, v6

    const/4 v12, 0x1

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_a

    .line 670
    :cond_95
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v4, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    const/4 v5, 0x0

    move/from16 v0, v19

    neg-float v8, v0

    const v9, 0x3ef5c28f    # 0.48f

    mul-float/2addr v8, v9

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v5, v8, v9}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 671
    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    mul-float v3, v3, v19

    mul-float v5, v3, v2

    .line 672
    const-string v2, "vfx_doomsday_charge"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v8, 0x0

    aget v8, v20, v8

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v8, v9

    const v9, 0x3e99999a    # 0.3f

    add-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v20, v9

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v9, v10

    const v10, 0x3e99999a    # 0.3f

    add-float/2addr v9, v10

    const/4 v10, 0x2

    aget v10, v20, v10

    const v11, 0x3f333333    # 0.7f

    mul-float/2addr v10, v11

    const v11, 0x3e99999a    # 0.3f

    add-float/2addr v10, v11

    const v11, 0x3eb33333    # 0.35f

    const v12, 0x3f266666    # 0.65f

    mul-float/2addr v6, v12

    add-float/2addr v11, v6

    const/4 v12, 0x1

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_a

    .line 676
    :cond_ed
    const/4 v2, 0x2

    if-ne v3, v2, :cond_15f

    .line 678
    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    int-to-float v3, v3

    const/high16 v4, 0x43fa0000    # 500.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 679
    sget v2, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v5, v2, v3

    .line 680
    const-string v2, "vfx_nova_ring"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    long-to-float v6, v14

    const/high16 v7, 0x41f00000    # 30.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float v7, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3e4ccccd    # 0.2f

    const v6, 0x3f733333    # 0.95f

    mul-float v11, v6, v13

    const/4 v12, 0x1

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 681
    const-string v2, "vfx_nova_ring"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v6, 0x3f70a3d7    # 0.94f

    mul-float v16, v5, v6

    const v6, 0x3f70a3d7    # 0.94f

    mul-float/2addr v6, v5

    long-to-float v5, v14

    const/high16 v7, 0x42340000    # 45.0f

    div-float/2addr v5, v7

    neg-float v5, v5

    const/high16 v7, 0x43b40000    # 360.0f

    rem-float v7, v5, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f59999a    # 0.85f

    const v10, 0x3f0ccccd    # 0.55f

    const v5, 0x3ee66666    # 0.45f

    mul-float v11, v5, v13

    const/4 v12, 0x1

    move/from16 v5, v16

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_a

    .line 684
    :cond_15f
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v4, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    const/4 v5, 0x0

    move/from16 v0, v19

    neg-float v6, v0

    const v7, 0x3ef5c28f    # 0.48f

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 685
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    sget v4, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 686
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v2, :cond_33c

    const/high16 v2, 0x3f800000    # 1.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    int-to-float v4, v4

    const/high16 v5, 0x43fa0000    # 500.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    rsub-int v5, v5, 0x11f8

    int-to-float v5, v5

    const/high16 v6, 0x43160000    # 150.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v2, v4

    move/from16 v18, v2

    .line 688
    :goto_1a6
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->REACH:[F

    aget v21, v2, v3

    .line 689
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float v3, v3, v21

    add-float v5, v2, v3

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float v3, v3, v21

    add-float v6, v2, v3

    .line 690
    const v2, 0x3f666666    # 0.9f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v3, v8

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    add-float v22, v2, v3

    .line 691
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->beamWidth(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v23

    .line 693
    const-string v2, "fx_beam"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v7, 0x3ff33333    # 1.9f

    mul-float v7, v7, v23

    mul-float v7, v7, v22

    const/4 v8, 0x0

    aget v8, v20, v8

    const/4 v9, 0x1

    aget v9, v20, v9

    const/4 v10, 0x2

    aget v10, v20, v10

    const v11, 0x3f19999a    # 0.6f

    mul-float v11, v11, v18

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 694
    const-string v2, "fx_lance"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float v7, v23, v22

    const/4 v8, 0x0

    aget v8, v20, v8

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v9

    const v9, 0x3ecccccd    # 0.4f

    add-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v20, v9

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v10

    const v10, 0x3ecccccd    # 0.4f

    add-float/2addr v9, v10

    const/4 v10, 0x2

    aget v10, v20, v10

    const v11, 0x3f19999a    # 0.6f

    mul-float/2addr v10, v11

    const v11, 0x3ecccccd    # 0.4f

    add-float/2addr v10, v11

    const v11, 0x3f4ccccd    # 0.8f

    mul-float v11, v11, v18

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 695
    const-string v2, "vfx_lance_core"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModFx;->tex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    if-eqz v2, :cond_35e

    .line 697
    const v2, 0x3f0ccccd    # 0.55f

    mul-float v24, v23, v2

    .line 698
    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v24

    div-float v16, v21, v2

    .line 699
    const-wide/32 v2, 0x186a0

    rem-long v2, v14, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    neg-float v2, v2

    const v3, 0x400ccccd    # 2.2f

    mul-float v14, v2, v3

    .line 700
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v2, v6, v2

    float-to-double v2, v2

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v4, v5, v4

    float-to-double v8, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float v7, v2, v3

    .line 701
    const-string v2, "vfx_lance_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v4, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v5, 0x3f733333    # 0.95f

    mul-float v11, v5, v18

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    add-float v16, v16, v14

    const/16 v17, 0x1

    move/from16 v5, v24

    move/from16 v6, v21

    invoke-static/range {v2 .. v17}, Lfr/testudo/spacecorsair/mod/ModFx;->sprUV(Ljava/lang/String;FFFFFFFFFZFFFFZ)V

    .line 705
    :goto_296
    const-string v2, "fx_core"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3fcccccd    # 1.6f

    mul-float v5, v5, v23

    mul-float v5, v5, v22

    const v6, 0x3fcccccd    # 1.6f

    mul-float v6, v6, v23

    mul-float v6, v6, v22

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v20, v8

    const/4 v9, 0x1

    aget v9, v20, v9

    const/4 v10, 0x2

    aget v10, v20, v10

    const/4 v12, 0x1

    move/from16 v11, v18

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 706
    const-string v2, "fx_streak"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v5, 0x3f99999a    # 1.2f

    mul-float v5, v5, v19

    const v6, 0x3e99999a    # 0.3f

    mul-float v6, v6, v19

    sget v7, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f333333    # 0.7f

    mul-float v11, v11, v18

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 708
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpg-double v2, v2, v4

    if-gez v2, :cond_a

    .line 709
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v4, v2

    .line 710
    const-string v2, "fx_glow"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float v5, v5, v21

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float v6, v6, v21

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v6, 0x44610000    # 900.0f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitan;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x44610000    # 900.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    const v8, 0x3df5c28f    # 0.12f

    mul-float v8, v8, v19

    const v9, 0x3d4ccccd    # 0.05f

    mul-float v9, v9, v19

    const/4 v10, 0x0

    aget v10, v20, v10

    const/4 v11, 0x1

    aget v11, v20, v11

    const/4 v12, 0x2

    aget v12, v20, v12

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    goto/16 :goto_a

    .line 687
    :cond_33c
    const/high16 v2, 0x3f800000    # 1.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    int-to-float v4, v4

    const/high16 v5, 0x43c80000    # 400.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->FIRE_MS:[I

    aget v5, v5, v3

    sget v6, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x43160000    # 150.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v2, v4

    move/from16 v18, v2

    goto/16 :goto_1a6

    .line 703
    :cond_35e
    const-string v2, "fx_lance"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v7, 0x3ee66666    # 0.45f

    mul-float v7, v7, v23

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f666666    # 0.9f

    mul-float v11, v11, v18

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_296
.end method

.method static drawTurrets(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)V
    .registers 25

    .prologue
    .line 85
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)I

    move-result v20

    .line 86
    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-nez v2, :cond_d

    .line 118
    :cond_c
    return-void

    .line 87
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v2, v2

    .line 88
    const v3, 0x3df5c28f    # 0.12f

    mul-float v5, v2, v3

    .line 89
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v21, v2, v20

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModWeapons;->family(Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;)I

    move-result v2

    .line 91
    if-ltz v2, :cond_17e

    const/4 v3, 0x3

    move/from16 v0, v20

    if-eq v0, v3, :cond_17e

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModArt;->familyTurretName(II)Ljava/lang/String;

    move-result-object v2

    .line 92
    :goto_31
    const/4 v3, 0x0

    move/from16 v19, v3

    :goto_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_c

    const/16 v3, 0x10

    move/from16 v0, v19

    if-ge v0, v3, :cond_c

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v22, v3, v19

    .line 94
    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    move-object/from16 v0, v22

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->currentDeltaSpinWithShip:F

    sub-float v7, v3, v4

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    move-object/from16 v0, v22

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v22

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v6, v8, v9}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 97
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->recoil:[F

    aget v3, v3, v19

    mul-float/2addr v3, v5

    const v4, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v4

    .line 98
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->c2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 99
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->c2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitan;->c2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v4, v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 101
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->c2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    neg-float v6, v5

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v6, v8

    invoke-virtual {v3, v4, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->c2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float v9, v3, v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->c2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float v10, v3, v4

    .line 103
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    aget v3, v3, v19

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_122

    .line 104
    const-string v8, "fx_core"

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v3, v5

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    aget v4, v4, v19

    mul-float v11, v3, v4

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v3, v5

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    aget v4, v4, v19

    mul-float v12, v3, v4

    const/4 v13, 0x0

    const/4 v3, 0x0

    aget v14, v21, v3

    const/4 v3, 0x1

    aget v15, v21, v3

    const/4 v3, 0x2

    aget v16, v21, v3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    aget v17, v3, v19

    const/16 v18, 0x1

    invoke-static/range {v8 .. v18}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 105
    const-string v8, "fx_streak"

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v3, v5

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    aget v4, v4, v19

    mul-float v11, v3, v4

    const v3, 0x3eb33333    # 0.35f

    mul-float v12, v5, v3

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    aget v3, v3, v19

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v17, v3, v4

    const/16 v18, 0x1

    move v13, v7

    invoke-static/range {v8 .. v18}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 108
    :cond_122
    const/4 v3, 0x2

    move/from16 v0, v20

    if-eq v0, v3, :cond_184

    move-object/from16 v0, v22

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    if-lez v3, :cond_184

    .line 109
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    iget v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    int-to-float v7, v7

    move-object/from16 v0, v22

    iget v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->timeBewteenShootInMilli:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v3, v4

    .line 110
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isShooting:Z

    if-eqz v4, :cond_178

    const v4, 0x3e99999a    # 0.3f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_178

    .line 111
    const-string v8, "fx_glow"

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    mul-float v11, v4, v3

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    mul-float v12, v4, v3

    const/4 v13, 0x0

    const/4 v4, 0x0

    aget v14, v21, v4

    const/4 v4, 0x1

    aget v15, v21, v4

    const/4 v4, 0x2

    aget v16, v21, v4

    const v4, 0x3f19999a    # 0.6f

    mul-float v17, v4, v3

    const/16 v18, 0x1

    invoke-static/range {v8 .. v18}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 92
    :cond_178
    :goto_178
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto/16 :goto_34

    .line 91
    :cond_17e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->TURRET:[Ljava/lang/String;

    aget-object v2, v2, v20

    goto/16 :goto_31

    .line 113
    :cond_184
    const/4 v3, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_178

    .line 114
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x4070400000000000L    # 260.0

    div-double/2addr v6, v8

    move/from16 v0, v19

    int-to-double v8, v0

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 115
    const-string v6, "fx_glow"

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v9, v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v10, v5, v4

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f000000    # 0.5f

    const v14, 0x3e19999a    # 0.15f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v3, v15

    add-float v15, v4, v3

    const/16 v16, 0x1

    invoke-static/range {v6 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    goto :goto_178
.end method

.method private static fireFx(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V
    .registers 19

    .prologue
    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v2, v2, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->drawableSize:I

    int-to-float v2, v2

    .line 631
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v2, v2, p1

    .line 632
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_13b

    .line 634
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_13
    const/16 v2, 0x9

    move/from16 v0, v16

    if-ge v0, v2, :cond_83

    .line 635
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, v2, v4

    .line 636
    sget v2, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3f866666    # 1.05f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    .line 638
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    neg-double v8, v8

    double-to-float v2, v8

    const/high16 v5, 0x43a00000    # 320.0f

    mul-float/2addr v5, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v2, v6

    const/high16 v6, 0x43a00000    # 320.0f

    mul-float/2addr v6, v2

    .line 639
    const-string v2, "fx_fire"

    const v7, 0x44228000    # 650.0f

    const/high16 v8, 0x430c0000    # 140.0f

    const/high16 v9, 0x43960000    # 300.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3eb33333    # 0.35f

    const v12, 0x3f266666    # 0.65f

    invoke-static {v11, v12}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v11

    const v12, 0x3df5c28f    # 0.12f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 634
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_13

    .line 641
    :cond_83
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_86
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ge v0, v2, :cond_df

    .line 642
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v2

    .line 643
    sget v2, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    const v3, 0x3e4ccccd    # 0.2f

    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    mul-float v6, v2, v3

    .line 644
    const-string v2, "fx_fire"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43fa0000    # 500.0f

    const/high16 v8, 0x42f00000    # 120.0f

    const/high16 v9, 0x43820000    # 260.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3ee66666    # 0.45f

    const v12, 0x3dcccccd    # 0.1f

    const v13, 0x3f333333    # 0.7f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 641
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_86

    .line 646
    :cond_df
    const-string v2, "fx_shock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43c80000    # 400.0f

    sget v8, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    const v9, 0x3fe66666    # 1.8f

    mul-float/2addr v8, v9

    sget v9, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    const v10, 0x4009999a    # 2.15f

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0ccccd    # 0.55f

    const v12, 0x3e19999a    # 0.15f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 647
    const-string v2, "fx_glow"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42f00000    # 120.0f

    sget v8, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    const v9, 0x40133333    # 2.3f

    mul-float/2addr v8, v9

    sget v9, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    const v10, 0x40133333    # 2.3f

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3ee66666    # 0.45f

    const v12, 0x3dcccccd    # 0.1f

    const v13, 0x3ee66666    # 0.45f

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 649
    :cond_13b
    return-void
.end method

.method static holdForce(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 466
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->anchorHold:Z

    .line 467
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->savedForce:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->savedForce:F

    .line 468
    :cond_e
    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    .line 469
    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    .line 470
    return-void
.end method

.method private static hullMissile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x42800000    # 64.0f

    .line 230
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v0

    .line 231
    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    .line 232
    if-nez v3, :cond_c

    .line 241
    :goto_b
    return-object v2

    .line 233
    :cond_c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->hullMissiles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 234
    if-nez v0, :cond_3a

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hw_missile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->hullMissileNames:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/4 v1, 0x0

    invoke-static {v0, v4, v4, v1}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v0

    .line 238
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->hullMissiles:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    move-object v1, v0

    .line 240
    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v0, :cond_4a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->hullMissileNames:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModFx;->rebind(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;)V

    .line 241
    :cond_4a
    iget-object v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v0, :cond_4f

    move-object v1, v2

    :cond_4f
    move-object v2, v1

    goto :goto_b
.end method

.method static inGame()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 789
    :try_start_2
    invoke-static {}, Lfr/testudo/spacecorsair/utils/SplashscreenDisplayer;->isDisplaying()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 794
    :cond_8
    :goto_8
    return v1

    .line 790
    :cond_9
    sget-boolean v2, Lfr/testudo/spacecorsair/utils/MenuDisplayer;->isMenuDisplaying:Z

    if-nez v2, :cond_8

    .line 791
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    .line 792
    if-eqz v2, :cond_1f

    iget-boolean v3, v2, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-eqz v3, :cond_1f

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v2, v2, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1b} :catch_21

    if-nez v2, :cond_1f

    :goto_1d
    move v1, v0

    goto :goto_8

    :cond_1f
    move v0, v1

    goto :goto_1d

    .line 793
    :catch_21
    move-exception v1

    move v1, v0

    .line 794
    goto :goto_8
.end method

.method static isLeviathanSeq(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 315
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v1

    if-ne v1, v0, :cond_12

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->is(Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static isTitanClass(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 553
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->titanClass:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModBoss;->isBoss(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I
    .registers 2

    .prologue
    .line 44
    if-eqz p0, :cond_6

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    .line 45
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)I

    move-result v0

    goto :goto_7
.end method

.method static kind(Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)I
    .registers 3

    .prologue
    .line 37
    if-eqz p0, :cond_a

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->titan:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 40
    :goto_b
    return v0

    .line 38
    :cond_c
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->dev:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    goto :goto_b

    .line 39
    :cond_14
    const-string v0, "crimson_throne"

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModCaps$Profile;->hull:Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    goto :goto_b

    .line 40
    :cond_22
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private static lock(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 14

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 447
    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->savedForce:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    sput v1, Lfr/testudo/spacecorsair/mod/ModTitan;->savedForce:F

    .line 448
    :cond_e
    iput v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    .line 449
    iput v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->curPouseeForce:F

    .line 450
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isPousee:Z

    .line 451
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isBoosterEnabled:Z

    .line 452
    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    .line 453
    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    .line 454
    iput v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spinSpeed:F

    .line 455
    const-wide v2, 0x3fedc28f5c28f5c3L    # 0.93

    long-to-double v4, p1

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 456
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 457
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    .line 458
    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    .line 459
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v2, v1

    :goto_4a
    if-ge v0, v2, :cond_5b

    aget-object v3, v1, v0

    iget v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    const/16 v5, 0x12c

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 460
    :cond_5b
    return-void
.end method

.method public static missile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 18

    .prologue
    .line 202
    :try_start_0
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eq v2, v1, :cond_12

    :cond_10
    const/4 v1, 0x0

    .line 220
    :goto_11
    return-object v1

    .line 204
    :cond_12
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v2

    .line 205
    if-nez v2, :cond_1d

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModTitan;->hullMissile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v1

    goto :goto_11

    .line 206
    :cond_1d
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->missileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    if-nez v1, :cond_3e

    .line 207
    const/4 v1, 0x4

    new-array v1, v1, [Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->missileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 208
    const/4 v1, 0x1

    :goto_27
    const/4 v3, 0x4

    if-ge v1, v3, :cond_3e

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->missileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->MISSILE:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/high16 v5, 0x42d00000    # 104.0f

    const/high16 v6, 0x42d00000    # 104.0f

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModFx;->fixed(Ljava/lang/String;FFZ)Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 210
    :cond_3e
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->missileSprites:[Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    aget-object v15, v1, v2

    .line 211
    iget-object v1, v15, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-nez v1, :cond_4d

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->MISSILE:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v15, v1}, Lfr/testudo/spacecorsair/mod/ModFx;->rebind(Lfr/testudo/spacecorsair/mod/ModFx$Sprite;Ljava/lang/String;)V

    .line 212
    :cond_4d
    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->trail:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lfr/testudo/spacecorsair/mod/ModTitan;->trail:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_c0

    .line 213
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v16, v1, v2

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    const/4 v3, 0x0

    const/high16 v4, 0x42380000    # 46.0f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v1, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 215
    const-string v1, "fx_smoke"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v4, -0x3ec00000    # -12.0f

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    const/high16 v5, -0x3ec00000    # -12.0f

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v5

    const v6, 0x44898000    # 1100.0f

    const/high16 v7, 0x41d00000    # 26.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const v9, 0x3f0ccccd    # 0.55f

    const v10, 0x3f0ccccd    # 0.55f

    const v11, 0x3f147ae1    # 0.58f

    const v12, 0x3ee66666    # 0.45f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 216
    const-string v1, "fx_glow"

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x43200000    # 160.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x41d00000    # 26.0f

    const/4 v9, 0x0

    aget v9, v16, v9

    const/4 v10, 0x1

    aget v10, v16, v10

    const/4 v11, 0x2

    aget v11, v16, v11

    const v12, 0x3f666666    # 0.9f

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 218
    :cond_c0
    iget-object v1, v15, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c2} :catch_ca

    if-nez v1, :cond_c7

    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_c7
    move-object v1, v15

    goto/16 :goto_11

    .line 219
    :catch_ca
    move-exception v1

    .line 220
    const/4 v1, 0x0

    goto/16 :goto_11
.end method

.method public static onBullet(Lfr/testudo/spacecorsair/business/player/PlayerShip;Ljava/lang/Object;)V
    .registers 13

    .prologue
    const/4 v10, 0x2

    const/4 v0, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 122
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v4

    .line 123
    if-eqz v4, :cond_12

    instance-of v1, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-nez v1, :cond_13

    .line 144
    :cond_12
    :goto_12
    return-void

    .line 124
    :cond_13
    check-cast p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    .line 125
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v1, v1, v4

    .line 126
    aget v2, v1, v0

    iput v2, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->r:F

    .line 127
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->g:F

    .line 128
    aget v1, v1, v10

    iput v1, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->b:F

    .line 129
    iput v9, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->a:F

    .line 130
    const/4 v2, -0x1

    .line 131
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 132
    :goto_2c
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v3, v3

    if-ge v0, v3, :cond_5f

    const/16 v3, 0x10

    if-ge v0, v3, :cond_5f

    .line 133
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v6, v6, v0

    iget-object v6, v6, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    aget-object v7, v7, v0

    iget-object v7, v7, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v5, v6, v7, v8}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 134
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModTitan;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p1, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    .line 135
    cmpg-float v5, v3, v1

    if-gez v5, :cond_5c

    move v1, v3

    move v2, v0

    .line 132
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 137
    :cond_5f
    if-ltz v2, :cond_69

    .line 138
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->recoil:[F

    aput v9, v0, v2

    .line 139
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    aput v9, v0, v2

    .line 141
    :cond_69
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModWeapons;->playFire(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 142
    const/4 v0, 0x3

    if-ne v4, v0, :cond_87

    const-string v0, "titan_dev"

    :goto_74
    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f70a3d7    # 0.94f

    const v3, 0x3f87ae14    # 1.06f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    const-wide/16 v4, 0xa0

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto :goto_12

    :cond_87
    if-ne v4, v10, :cond_8c

    const-string v0, "titan_throne"

    goto :goto_74

    :cond_8c
    const-string v0, "titan_leviathan"

    goto :goto_74
.end method

.method public static onMissile(Lfr/testudo/spacecorsair/business/projectiles/Missile;)V
    .registers 15

    .prologue
    .line 180
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 181
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v0

    .line 182
    if-nez v0, :cond_b

    .line 194
    :goto_a
    return-void

    .line 183
    :cond_b
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    .line 184
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    const v2, 0x3ff33333    # 1.9f

    mul-float/2addr v1, v2

    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    .line 185
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    const v2, 0x3ff33333    # 1.9f

    mul-float/2addr v1, v2

    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    .line 187
    :cond_1e
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v10, v1, v0

    .line 188
    const-string v0, "fx_core"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x435c0000    # 220.0f

    const/high16 v6, 0x42200000    # 40.0f

    const/high16 v7, 0x43160000    # 150.0f

    const/4 v8, 0x0

    aget v8, v10, v8

    const/4 v9, 0x1

    aget v9, v10, v9

    const/4 v11, 0x2

    aget v10, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 189
    const-string v0, "fx_smoke"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, -0x3e100000    # -30.0f

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    const/high16 v4, -0x3e100000    # -30.0f

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v4

    const/high16 v5, 0x44960000    # 1200.0f

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x43200000    # 160.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 190
    const-string v0, "titan_missile"

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3f733333    # 0.95f

    const v3, 0x3f866666    # 1.05f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    const-wide/16 v4, 0xfa

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_85} :catch_86

    goto :goto_a

    .line 191
    :catch_86
    move-exception v0

    goto :goto_a
.end method

.method public static ownsLaserSound(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 2

    .prologue
    .line 148
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static ownsTurrets(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 2

    .prologue
    .line 81
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static radiusOf(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 4

    .prologue
    const/high16 v0, 0x42200000    # 40.0f

    .line 572
    :try_start_2
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    .line 573
    if-nez v1, :cond_9

    .line 575
    :goto_8
    return v0

    .line 573
    :cond_9
    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_15

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_8

    .line 574
    :catch_15
    move-exception v1

    goto :goto_8
.end method

.method private static release(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 3

    .prologue
    .line 479
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->anchorHold:Z

    if-eqz v0, :cond_5

    .line 484
    :goto_4
    return-void

    .line 480
    :cond_5
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->savedForce:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    if-eqz p0, :cond_12

    .line 481
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->savedForce:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxPouseeForce:F

    .line 483
    :cond_12
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->savedForce:F

    goto :goto_4
.end method

.method public static skillText(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 800
    packed-switch p0, :pswitch_data_48

    .line 811
    const-string v0, ""

    :goto_5
    return-object v0

    .line 803
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>Doomsday Lance</b> (DOOMSDAY button): immobilizes the titan and disables its weapons for a 5.4 s charge, then fires a 4.4 s lance (2800 range, 60% of hull width) that destroys everything in its path, dealing ~12% hull damage to mission bosses and ~5% to titan-class capitals per lance. While firing, turn speed is limited to 5 deg/s; afterward, movement resumes, but weapons stay offline for 2.2 s while the titan vents. Cooldown: 90 s."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<b>Anchor Stance</b> (passive): after 2.5 s at a complete stop, the titan anchors and raises a hex shield wall across its bow, blocking enemy shots and protecting ships behind it. The wall has a separate shield (150% of the equipped shield\'s capacity, takes 35% less damage) that recharges in 25 s only while the wall is down; hold the stick for 1.5 s to lift the anchor, and the wall folds 2.5 s later."

    .line 804
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Needs refit level 7+."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 806
    :pswitch_3a
    const-string v0, "<b>Furnace Nova</b> (DOOMSDAY button): 2 s charge, then a 3.5 s ring of fire that grows to 1400 around the hull and burns everything inside. The titan cannot move, turn or fire while it charges and burns. 75 s cooldown."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 809
    :pswitch_41
    const-string v0, "<b>Doomsday Lance</b> (DOOMSDAY button): test lance, 12 s cooldown."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 800
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3a
        :pswitch_41
    .end packed-switch
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 320
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->kind(Lfr/testudo/spacecorsair/business/player/PlayerShip;)I

    move-result v3

    .line 321
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    move v0, v2

    .line 322
    :goto_11
    const/16 v5, 0x10

    if-ge v0, v5, :cond_4a

    .line 323
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->recoil:[F

    aget v5, v5, v0

    cmpl-float v5, v5, v11

    if-lez v5, :cond_2e

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->recoil:[F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitan;->recoil:[F

    aget v6, v6, v0

    long-to-float v7, p1

    const/high16 v8, 0x43820000    # 260.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v5, v0

    .line 324
    :cond_2e
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    aget v5, v5, v0

    cmpl-float v5, v5, v11

    if-lez v5, :cond_47

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModTitan;->flash:[F

    aget v6, v6, v0

    long-to-float v7, p1

    const/high16 v8, 0x42dc0000    # 110.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v5, v0

    .line 322
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 326
    :cond_4a
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->ownerKind:I

    if-eq v3, v0, :cond_66

    .line 328
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->release(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 329
    sput v3, Lfr/testudo/spacecorsair/mod/ModTitan;->ownerKind:I

    .line 330
    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    .line 331
    const/4 v0, 0x3

    if-ne v3, v0, :cond_85

    const/16 v0, 0xbb8

    :goto_5b
    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 332
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->coolTotal:I

    .line 333
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    .line 334
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->stop()V

    .line 336
    :cond_66
    sput v3, Lfr/testudo/spacecorsair/mod/ModTitan;->uiKind:I

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lfr/testudo/spacecorsair/mod/ModTitan;->lastTick:J

    .line 338
    invoke-static {p1, p2}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->advance(J)V

    .line 339
    if-eqz v3, :cond_88

    if-nez v4, :cond_88

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_88

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_88

    move v0, v1

    :goto_7e
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->show:Z

    .line 340
    if-nez v3, :cond_8a

    .line 341
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModTitan;->request:Z

    .line 443
    :cond_84
    :goto_84
    return-void

    .line 331
    :cond_85
    const/16 v0, 0x4e20

    goto :goto_5b

    :cond_88
    move v0, v2

    .line 339
    goto :goto_7e

    .line 344
    :cond_8a
    if-nez v4, :cond_90

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_b7

    .line 345
    :cond_90
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModTitan;->busy()Z

    move-result v0

    if-nez v0, :cond_9b

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b0

    :cond_9b
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->release(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->COOL_MS:[I

    aget v0, v0, v3

    div-int/lit8 v0, v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->coolTotal:I

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->abort()V

    .line 346
    :cond_b0
    const-string v0, ""

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->label:Ljava/lang/String;

    .line 347
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModTitan;->request:Z

    goto :goto_84

    .line 350
    :cond_b7
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    packed-switch v0, :pswitch_data_382

    goto :goto_84

    .line 364
    :pswitch_bd
    if-ne v3, v10, :cond_1a8

    const-string v0, "FURNACE NOVA"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c5
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->label:Ljava/lang/String;

    .line 365
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->request:Z

    if-eqz v0, :cond_84

    .line 366
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModTitan;->request:Z

    .line 367
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_84

    .line 368
    sput v1, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    .line 369
    if-ne v3, v1, :cond_1b0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCaps;->profile(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/mod/ModCaps$Profile;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->is(Lfr/testudo/spacecorsair/mod/ModCaps$Profile;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    move v0, v1

    :goto_e0
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    .line 370
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_1b3

    const/16 v0, 0x1518

    :goto_e8
    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 371
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    .line 372
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->desiredSpin:F

    .line 373
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_1b9

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModAnchor;->doomsdayClick(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->start(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    const-string v0, "v38doom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charge spin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_117
    if-ne v3, v10, :cond_1c2

    const-string v0, "FURNACE NOVA CHARGING"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11f
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v4, v4, v3

    aget v2, v4, v2

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v4, v4, v3

    aget v1, v4, v1

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v3, v4, v3

    aget v3, v3, v10

    invoke-static {p0, v0, v2, v1, v3}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    goto/16 :goto_84

    .line 352
    :pswitch_136
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    int-to-long v4, v0

    sub-long/2addr v4, p1

    long-to-int v0, v4

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 353
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_158

    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    int-to-float v0, v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModTitan;->coolTotal:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v9, v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModLevDoom;->coolFrac:F

    .line 354
    :cond_158
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    if-gtz v0, :cond_171

    sput v2, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    const-string v0, "repair"

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3f333333    # 0.7f

    const-wide/16 v6, 0x3e8

    invoke-static {v0, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_171

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModLevDoom;->gauge:Z

    .line 355
    :cond_171
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    add-int/lit16 v0, v0, 0x3e7

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 356
    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->coolSec:I

    if-ne v0, v1, :cond_183

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->coolLabel:Ljava/lang/String;

    if-nez v1, :cond_1a0

    .line 357
    :cond_183
    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->coolSec:I

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DOOMSDAY "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->coolLabel:Ljava/lang/String;

    .line 360
    :cond_1a0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->coolLabel:Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->label:Ljava/lang/String;

    .line 361
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModTitan;->request:Z

    goto/16 :goto_84

    .line 364
    :cond_1a8
    const-string v0, "DOOMSDAY LANCE"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c5

    :cond_1b0
    move v0, v2

    .line 369
    goto/16 :goto_e0

    .line 370
    :cond_1b3
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->CHARGE_MS:[I

    aget v0, v0, v3

    goto/16 :goto_e8

    .line 374
    :cond_1b9
    const-string v0, "doom_charge"

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v9, v9, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_117

    .line 375
    :cond_1c2
    const-string v0, "DOOMSDAY CHARGING"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11f

    .line 379
    :pswitch_1ca
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModTitan;->lock(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 380
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 381
    const-string v0, "CHARGING"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->label:Ljava/lang/String;

    .line 382
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_234

    .line 383
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->COL:[[F

    aget-object v0, v0, v3

    invoke-static {p0, p1, p2, v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->chargeTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J[F)V

    .line 388
    :goto_1e7
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    if-gtz v0, :cond_84

    .line 389
    sput v10, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    .line 390
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_24a

    const/16 v0, 0x11f8

    :goto_1f3
    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 391
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_1fb

    const/16 v2, -0x96

    :cond_1fb
    sput v2, Lfr/testudo/spacecorsair/mod/ModTitan;->tickAcc:I

    .line 392
    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    .line 393
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_24f

    const-string v0, "lev_doom_fire"

    :goto_207
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v9, v9, v2, v3}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 394
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_22c

    const-string v0, "v38doom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fire t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sec()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_22c
    const v0, 0x3f333333    # 0.7f

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V

    goto/16 :goto_84

    .line 385
    :cond_234
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    int-to-float v0, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->CHARGE_MS:[I

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v9, v0

    invoke-static {p0, v3, v0}, Lfr/testudo/spacecorsair/mod/ModTitan;->chargeFx(Lfr/testudo/spacecorsair/business/player/PlayerShip;IF)V

    .line 386
    long-to-float v0, p1

    const/high16 v1, 0x457a0000    # 4000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V

    goto :goto_1e7

    .line 390
    :cond_24a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->FIRE_MS:[I

    aget v0, v0, v3

    goto :goto_1f3

    .line 393
    :cond_24f
    if-ne v3, v10, :cond_254

    const-string v0, "doom_nova"

    goto :goto_207

    :cond_254
    const-string v0, "doom_lance"

    goto :goto_207

    .line 399
    :pswitch_257
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_25e

    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModTitan;->turn(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 400
    :cond_25e
    invoke-static {p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModTitan;->lock(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    .line 401
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->holdFire:Z

    if-eqz v0, :cond_271

    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_2b0

    const/16 v0, 0x11f8

    :goto_26d
    div-int/lit8 v0, v0, 0x2

    if-le v1, v0, :cond_278

    :cond_271
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 402
    :cond_278
    const-string v0, "FIRING"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->label:Ljava/lang/String;

    .line 403
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->tickAcc:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->tickAcc:I

    .line 404
    if-ne v3, v10, :cond_29b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->REACH:[F

    aget v0, v0, v3

    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    long-to-float v2, p1

    const v4, 0x3fcccccd    # 1.6f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->novaRadius:F

    .line 405
    :cond_29b
    :goto_29b
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->tickAcc:I

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->TICK_MS:[I

    aget v1, v1, v3

    if-lt v0, v1, :cond_2b5

    .line 406
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->tickAcc:I

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModTitan;->TICK_MS:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->tickAcc:I

    .line 407
    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModTitan;->damageTick(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V

    goto :goto_29b

    .line 401
    :cond_2b0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->FIRE_MS:[I

    aget v0, v0, v3

    goto :goto_26d

    .line 409
    :cond_2b5
    invoke-static {p0, v3}, Lfr/testudo/spacecorsair/mod/ModTitan;->fireFx(Lfr/testudo/spacecorsair/business/player/PlayerShip;I)V

    .line 410
    long-to-float v0, p1

    const/high16 v1, 0x44610000    # 900.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->addShake(F)V

    .line 411
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    if-gtz v0, :cond_84

    .line 412
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModTitan;->release(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 413
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModTitan;->levSeq:Z

    if-eqz v0, :cond_301

    .line 414
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->endRecoil(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V

    .line 415
    const/4 v0, 0x4

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    .line 416
    const/16 v0, 0x898

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 417
    const-string v0, "v38doom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "over t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sec()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_84

    .line 419
    :cond_301
    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    .line 420
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->COOL_MS:[I

    aget v0, v0, v3

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 421
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->coolTotal:I

    goto/16 :goto_84

    .line 427
    :pswitch_310
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 428
    const-string v0, "VENTING"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->label:Ljava/lang/String;

    .line 429
    const/16 v0, 0x12c

    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 430
    iget-wide v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootAlowed:J

    .line 431
    iget-wide v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    .line 432
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    if-eqz v1, :cond_353

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->playerCannons:[Lfr/testudo/spacecorsair/business/player/PlayerCanon;

    array-length v4, v1

    :goto_344
    if-ge v2, v4, :cond_353

    aget-object v5, v1, v2

    iget v6, v5, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Lfr/testudo/spacecorsair/business/player/PlayerCanon;->nextShootAllowed:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_344

    .line 433
    :cond_353
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    if-gtz v0, :cond_84

    .line 434
    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->state:I

    .line 435
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModTitan;->COOL_MS:[I

    aget v0, v0, v3

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    .line 436
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->timer:I

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->coolTotal:I

    .line 437
    const-string v0, "v38doom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cool t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLevDoom;->sec()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_84

    .line 350
    :pswitch_data_382
    .packed-switch 0x0
        :pswitch_bd
        :pswitch_1ca
        :pswitch_257
        :pswitch_136
        :pswitch_310
    .end packed-switch
.end method

.method private static turn(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 8

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 490
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->targetAngle:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->desiredSpin:F

    .line 491
    :cond_16
    sget v0, Lfr/testudo/spacecorsair/mod/ModTitan;->desiredSpin:F

    sget v1, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    sub-float/2addr v0, v1

    .line 492
    :goto_1b
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_23

    sub-float/2addr v0, v2

    goto :goto_1b

    .line 493
    :cond_23
    :goto_23
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2b

    add-float/2addr v0, v2

    goto :goto_23

    .line 494
    :cond_2b
    const/high16 v1, 0x40a00000    # 5.0f

    long-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 495
    sget v2, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    neg-float v3, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v2

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModTitan;->lockSpin:F

    .line 496
    return-void
.end method

.method private static zigzag(FFFF[F)V
    .registers 14

    .prologue
    .line 618
    .line 619
    const/4 v2, 0x1

    move v8, v2

    move v1, p1

    move v0, p0

    :goto_4
    const/4 v2, 0x6

    if-gt v8, v2, :cond_5f

    .line 620
    int-to-float v2, v8

    const/high16 v3, 0x40c00000    # 6.0f

    div-float v3, v2, v3

    .line 621
    sub-float v2, p2, p0

    mul-float/2addr v2, v3

    add-float v4, p0, v2

    const/4 v2, 0x6

    if-ge v8, v2, :cond_5b

    const/high16 v2, -0x3e380000    # -25.0f

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v2, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    :goto_1c
    add-float/2addr v2, v4

    .line 622
    sub-float v4, p3, p1

    mul-float/2addr v3, v4

    add-float v4, p1, v3

    const/4 v3, 0x6

    if-ge v8, v3, :cond_5d

    const/high16 v3, -0x3e380000    # -25.0f

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v3, v5}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    :goto_2d
    add-float/2addr v3, v4

    .line 623
    const/4 v4, 0x0

    aget v4, p4, v4

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v5

    const v5, 0x3ecccccd    # 0.4f

    add-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, p4, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    const v6, 0x3ecccccd    # 0.4f

    add-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, p4, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    const v7, 0x3ecccccd    # 0.4f

    add-float/2addr v6, v7

    const v7, 0x3f666666    # 0.9f

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModFx;->line(FFFFFFFF)V

    .line 619
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v1, v3

    move v0, v2

    goto :goto_4

    .line 621
    :cond_5b
    const/4 v2, 0x0

    goto :goto_1c

    .line 622
    :cond_5d
    const/4 v3, 0x0

    goto :goto_2d

    .line 627
    :cond_5f
    return-void
.end method
