.class public final Lfr/testudo/spacecorsair/mod/ModIntro;
.super Ljava/lang/Object;
.source "ModIntro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModIntro$TextOut;
    }
.end annotation


# static fields
.field static final ART:[Ljava/lang/String;

.field static final BF_PADS:[F

.field static final BF_X:F = 540.0f

.field static final BF_Y:F = 230.0f

.field private static final BMAX:I = 0x30

.field static final CAP_MS:I = 0x9c4

.field static final CR_PADS:[F

.field static final CR_X:F = -560.0f

.field static final CR_Y:F = -230.0f

.field static final C_BF:F = 1250.0f

.field static final C_CR:F = 600.0f

.field static final HOLD_AT:I = 0x5dc

.field static final HULL_UNITS:F = 300.0f

.field private static final MAX:I = 0x1a4

.field static final PENDING_HOLD_MS:I = 0x61a8

.field private static final QUAD:Ljava/nio/FloatBuffer;

.field private static S:F = 0.0f

.field private static final SHOTS:I = 0x40

.field static final SKIP_REVEAL:I = 0x2bc

.field static final SKIP_TO_BLACK:I = 0x15e

.field static final SKIP_WINDOW:I = 0x9c4

.field private static final STARS:I = 0x96

.field static final T_ALARM:I = 0x5dc0

.field static final T_BATTLE:I = 0x30d4

.field static final T_BOUNTY:I = 0x1388

.field static final T_CAP:I = 0x88b8

.field static final T_CHARGE:I = 0x7530

.field static final T_END:I = 0xba54

.field static final T_END_TITLE:I = 0xafc8

.field static final T_FADE:I = 0x82dc

.field static final T_IMPACT:I = 0x76c0

.field static final T_LANE:I = 0x6978

.field static final T_REVEAL:I = 0xb478

.field static final T_SHIELD_DOWN:I = 0x4c2c

.field static final T_SHIP_IN:I = 0xa28

.field static final T_WARP:I = 0x2328

.field private static final UV:Ljava/nio/FloatBuffer;

.field static final WAIT_MS:I = 0x2ee0

.field private static Z:F

.field private static volatile active:Z

.field private static final badd:[Z

.field private static final bage:[J

.field private static final bb:[F

.field private static final bcols:[I

.field private static final bdur:[J

.field private static final bfAim:[F

.field private static bfGone:Z

.field private static bfSpin:F

.field private static bfX:F

.field private static bfY:F

.field private static final bframes:[I

.field private static final bg:[F

.field private static black:F

.field private static booms:I

.field private static bossHp:F

.field private static final br:[F

.field private static final brot:[F

.field private static final bs:[F

.field private static final btex:[Ljava/lang/String;

.field private static final bx:[F

.field private static final by:[F

.field private static final crAim:[F

.field private static crSpin:F

.field private static crX:F

.field private static crY:F

.field private static cur:Ljavax/microedition/khronos/opengles/GL10;

.field private static dx:F

.field private static dy:F

.field private static volatile flagChecked:Z

.field private static flash:F

.field private static h1r:F

.field private static h1x:F

.field private static h1y:F

.field private static h2r:F

.field private static h2x:F

.field private static h2y:F

.field public static harness:Z

.field public static harnessClock:J

.field public static harnessH:I

.field public static harnessW:I

.field private static final held:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static hull:F

.field private static hullHits:I

.field private static lastFrame:J

.field private static volatile lastTapT:J

.field private static live:I

.field private static midX:F

.field private static midY:F

.field private static nextBolt:J

.field private static nextBoom:J

.field private static nextShell:J

.field private static nextSmoke:J

.field private static final pa:[F

.field private static final padd:[Z

.field private static final pb:[F

.field private static final pc:[I

.field private static final pcell:[Z

.field private static volatile pending:Z

.field private static volatile pendingAt:J

.field private static final pg:[F

.field private static final plife:[F

.field private static final pmax:[F

.field private static final pr:[F

.field private static final prot:[F

.field private static final ps0:[F

.field private static final ps1:[F

.field private static final pspin:[F

.field private static final ptex:[Ljava/lang/String;

.field private static final pvx:[F

.field private static final pvy:[F

.field private static final px:[F

.field private static final py:[F

.field private static ready:Z

.field private static final rnd:Ljava/util/Random;

.field private static sAccepted:Ljava/lang/String;

.field private static sAlarm:Z

.field private static sBossPlate:Ljava/lang/String;

.field private static sBounty:Ljava/lang/String;

.field private static sCaps:[Ljava/lang/String;

.field private static sCharge:Z

.field private static sFail:Z

.field private static sHorn:Z

.field private static sHull:Ljava/lang/String;

.field private static sHullBar:Ljava/lang/String;

.field private static sHullCrit:Ljava/lang/String;

.field private static sHullLost:Ljava/lang/String;

.field private static sImpact:Z

.field private static sLane:Z

.field private static sLicence:Ljava/lang/String;

.field private static sRam:Ljava/lang/String;

.field private static sReward:Ljava/lang/String;

.field private static sShield:Z

.field private static sShieldBar:Ljava/lang/String;

.field private static sShieldDown:Ljava/lang/String;

.field private static sShipPlate:Ljava/lang/String;

.field private static sTapAgain:Ljava/lang/String;

.field private static sTapSkip:Ljava/lang/String;

.field private static sTarget:Ljava/lang/String;

.field private static sTargetRole:Ljava/lang/String;

.field private static sTitle1:Ljava/lang/String;

.field private static sTitle2:Ljava/lang/String;

.field private static sWarp:Z

.field private static sWhere:Ljava/lang/String;

.field private static final sb:[F

.field private static final shD:[F

.field private static final shKind:[I

.field private static final shT:[F

.field private static final shX0:[F

.field private static final shX1:[F

.field private static final shY0:[F

.field private static final shY1:[F

.field private static shake:F

.field private static shakeX:F

.field private static shakeY:F

.field private static shellSide:I

.field private static shield:F

.field private static shieldHits:I

.field private static shots:I

.field private static skipFromT:I

.field private static volatile skipHint:Z

.field private static volatile skipReq:Z

.field private static startedAt:J

.field private static final sx:[F

.field private static final sy:[F

.field private static final sz:[F

.field private static volatile t:J

.field public static textOut:Lfr/testudo/spacecorsair/mod/ModIntro$TextOut;

.field private static final tmp:[F

.field private static wrecked:Z

.field private static zoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x96

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0x40

    const/16 v4, 0x30

    const/16 v3, 0x1a4

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_18c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->CR_PADS:[F

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_19c

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->BF_PADS:[F

    .line 53
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "albatros"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cap_reaver"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hw_turret_albatros"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hw_turret_cap_reaver"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "proj_cap_reaver"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tele_cap_reaver"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fx_glow"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fx_core"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fx_bolt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fx_fire"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fx_smoke"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fx_spark"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fx_scorch"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fx_explosion_big_sheet"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fx_smoke_sheet"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fx_sparks_sheet"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "vfx_shield_hit"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "vfx_shield_bubble"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "debris_sheet"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "fx_fire_sheet"

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->ART:[Ljava/lang/String;

    .line 63
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->lastTapT:J

    .line 65
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->held:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    .line 68
    sput v6, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    .line 74
    const/16 v0, 0x924

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->harnessW:I

    const/16 v0, 0x438

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->harnessH:I

    .line 88
    const/high16 v0, 0x43340000    # 180.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    sput v6, Lfr/testudo/spacecorsair/mod/ModIntro;->zoom:F

    sput v6, Lfr/testudo/spacecorsair/mod/ModIntro;->hull:F

    sput v6, Lfr/testudo/spacecorsair/mod/ModIntro;->shield:F

    sput v6, Lfr/testudo/spacecorsair/mod/ModIntro;->bossHp:F

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->crAim:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bfAim:[F

    .line 506
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->tmp:[F

    .line 519
    new-array v0, v5, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shKind:[I

    .line 520
    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shX0:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shY0:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shX1:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shY1:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shT:[F

    new-array v0, v5, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shD:[F

    .line 569
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->ptex:[Ljava/lang/String;

    .line 570
    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->px:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->py:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pvx:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pvy:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->plife:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pmax:[F

    .line 571
    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->ps0:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->ps1:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pr:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pg:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pb:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pa:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->prot:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pspin:[F

    .line 572
    new-array v0, v3, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->padd:[Z

    new-array v0, v3, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pcell:[Z

    .line 573
    new-array v0, v3, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pc:[I

    .line 608
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->btex:[Ljava/lang/String;

    .line 609
    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bx:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->by:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bs:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->brot:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->br:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bg:[F

    new-array v0, v4, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bb:[F

    .line 610
    new-array v0, v4, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bage:[J

    new-array v0, v4, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bdur:[J

    .line 611
    new-array v0, v4, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bcols:[I

    new-array v0, v4, [I

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bframes:[I

    .line 612
    new-array v0, v4, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->badd:[Z

    .line 635
    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sx:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sy:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sz:[F

    new-array v0, v7, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sb:[F

    .line 862
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_1c0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIntro;->buf([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->QUAD:Ljava/nio/FloatBuffer;

    .line 863
    const/16 v0, 0x8

    new-array v0, v0, [F

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIntro;->buf([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    return-void

    .line 50
    :array_18c
    .array-data 4
        0x0
        -0x3de8cccd    # -37.8f
        0x0
        0x41a33333    # 20.4f
        0x0
        0x4255999a    # 53.4f
    .end array-data

    .line 51
    :array_19c
    .array-data 4
        -0x42333333    # -0.1f
        -0x41f1f8a1    # -0.1387f
        0x3dcccccd    # 0.1f
        -0x41f1f8a1    # -0.1387f
        -0x423126e9    # -0.101f
        0x3bc154ca    # 0.0059f
        0x3dced917    # 0.101f
        0x3bc154ca    # 0.0059f
        -0x422f1aa0    # -0.102f
        0x3d87fcb9    # 0.0664f
        0x3dd0e560    # 0.102f
        0x3d87fcb9    # 0.0664f
        -0x4226e979    # -0.106f
        0x3e39096c    # 0.1807f
        0x3dd91687    # 0.106f
        0x3e39096c    # 0.1807f
    .end array-data

    .line 862
    :array_1c0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aim(FFFF)F
    .registers 8

    .prologue
    .line 497
    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    return v0
.end method

.method private static bar(FFFFFFFFF)V
    .registers 18

    .prologue
    .line 917
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p2, v0

    add-float/2addr v0, p0

    const/high16 v1, 0x40c00000    # 6.0f

    add-float v2, p2, v1

    const/high16 v1, 0x40c00000    # 6.0f

    add-float v3, p3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v1, 0x3f19999a    # 0.6f

    mul-float v8, v1, p8

    move v1, p1

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->quad(FFFFFFFFF)V

    .line 918
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v0, p2

    .line 919
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3d

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v2, v0

    add-float/2addr v0, p0

    const/4 v4, 0x0

    move v1, p1

    move v3, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->quad(FFFFFFFFF)V

    .line 920
    :cond_3d
    return-void
.end method

.method private static begin()V
    .registers 8

    .prologue
    const/high16 v7, 0x43660000    # 230.0f

    const/high16 v6, -0x3bf40000    # -560.0f

    const/high16 v5, -0x3c9a0000    # -230.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 198
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pending:Z

    .line 199
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->active:Z

    .line 200
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    .line 201
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->lastFrame:J

    .line 202
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->clock()J

    move-result-wide v2

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->startedAt:J

    .line 203
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->ready:Z

    .line 204
    const-wide/16 v2, -0x1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->lastTapT:J

    .line 205
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->skipHint:Z

    .line 206
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->skipReq:Z

    .line 207
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    .line 208
    const v0, 0x44898000    # 1100.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    const/high16 v0, 0x43e60000    # 460.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    .line 209
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    mul-float/2addr v0, v2

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 210
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    div-float/2addr v2, v0

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    div-float v0, v2, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    .line 211
    const/high16 v0, 0x44070000    # 540.0f

    invoke-static {v6, v5, v0, v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->aim(FFFF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    const/high16 v0, 0x44070000    # 540.0f

    invoke-static {v0, v7, v6, v5}, Lfr/testudo/spacecorsair/mod/ModIntro;->aim(FFFF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    .line 212
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    const/high16 v2, 0x44610000    # 900.0f

    mul-float/2addr v0, v2

    sub-float v0, v6, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    const/high16 v2, 0x44610000    # 900.0f

    mul-float/2addr v0, v2

    sub-float v0, v5, v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    const/high16 v0, 0x44070000    # 540.0f

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    const v3, 0x44a28000    # 1300.0f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    const v2, 0x44a28000    # 1300.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v7

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModIntro;->zoom:F

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->flash:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModIntro;->black:F

    .line 213
    sput v4, Lfr/testudo/spacecorsair/mod/ModIntro;->hull:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shield:F

    sput v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bossHp:F

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bfGone:Z

    .line 214
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->nextBoom:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->nextSmoke:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->nextShell:J

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->nextBolt:J

    .line 215
    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shellSide:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shieldHits:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->hullHits:I

    .line 216
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->sFail:Z

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->sImpact:Z

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->sCharge:Z

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->sLane:Z

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->sAlarm:Z

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->sShield:Z

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->sHorn:Z

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->sWarp:Z

    .line 217
    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    move v0, v1

    .line 218
    :goto_bf
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crAim:[F

    array-length v2, v2

    if-ge v0, v2, :cond_cd

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crAim:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    .line 219
    :cond_cd
    :goto_cd
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bfAim:[F

    array-length v0, v0

    if-ge v1, v0, :cond_db

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bfAim:[F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    .line 220
    :cond_db
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->initStars()V

    .line 221
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->strings()V

    .line 222
    const-string v0, "intro"

    const-string v1, "start"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method private static boom(Ljava/lang/String;FFFJFFFZII)V
    .registers 16

    .prologue
    const/16 v1, 0x30

    .line 616
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    if-ge v0, v1, :cond_55

    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    .line 617
    :goto_c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->btex:[Ljava/lang/String;

    aput-object p0, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bx:[F

    aput p1, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->by:[F

    aput p2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bs:[F

    aput p3, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->brot:[F

    const/4 v1, 0x1

    if-le p11, v1, :cond_5c

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v1, v3

    :goto_2a
    aput v1, v2, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->br:[F

    aput p6, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bg:[F

    aput p7, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bb:[F

    aput p8, v1, v0

    .line 618
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bage:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bdur:[J

    const-wide/16 v2, 0x64

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    aput-wide v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bcols:[I

    aput p10, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bframes:[I

    aput p11, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->badd:[Z

    aput-boolean p9, v1, v0

    .line 619
    return-void

    .line 616
    :cond_55
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_c

    .line 617
    :cond_5c
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method private static buf([F)Ljava/nio/FloatBuffer;
    .registers 3

    .prologue
    .line 866
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 867
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 868
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 869
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 870
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 871
    return-object v0
.end method

.method private static clock()J
    .registers 2

    .prologue
    .line 84
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->harness:Z

    if-eqz v0, :cond_7

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->harnessClock:J

    :goto_6
    return-wide v0

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_6
.end method

.method public static draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5

    .prologue
    .line 178
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->harness:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPrologue;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 180
    :cond_7
    :try_start_7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->active:Z

    if-nez v0, :cond_48

    .line 181
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->flagChecked:Z

    if-nez v0, :cond_24

    .line 182
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->flagChecked:Z

    .line 183
    const-string v0, "corsair_intro"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pending:Z

    const-string v0, "intro"

    const-string v1, "pending (switch)"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_24
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pending:Z

    if-nez v0, :cond_29

    .line 195
    :cond_28
    :goto_28
    return-void

    .line 186
    :cond_29
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->harness:Z

    if-nez v0, :cond_45

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_28

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    if-eqz v0, :cond_28

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v0, :cond_28

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    if-lez v0, :cond_28

    .line 188
    :cond_45
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->begin()V

    .line 190
    :cond_48
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModIntro;->frame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4b} :catch_4c

    goto :goto_28

    .line 191
    :catch_4c
    move-exception v0

    .line 192
    const-string v1, "intro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "error"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIntro;->finish(Ljava/lang/String;)V

    goto :goto_28
.end method

.method private static drawCaptions(FF)V
    .registers 16

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f400000    # 0.75f

    const v11, 0x3f666666    # 0.9f

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 824
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    if-ltz v0, :cond_1a

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x15e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    .line 845
    :cond_19
    :goto_19
    return-void

    .line 826
    :cond_1a
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v2, 0xa28

    cmp-long v0, v0, v2

    if-gez v0, :cond_5b

    .line 827
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x8fc

    const-wide/16 v6, 0x190

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->fade(JJJJ)F

    move-result v7

    .line 828
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sWhere:Ljava/lang/String;

    const/high16 v2, 0x42700000    # 60.0f

    sget-object v3, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v6, 0x3f733333    # 0.95f

    move v1, v10

    move v4, v11

    move v5, v11

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 829
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sLicence:Ljava/lang/String;

    const/high16 v2, -0x3ee00000    # -10.0f

    sget-object v3, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v5, 0x3f59999a    # 0.85f

    move v1, v10

    move v4, v12

    move v6, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 830
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sHull:Ljava/lang/String;

    const/high16 v2, -0x3d900000    # -60.0f

    sget-object v3, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v5, 0x3f59999a    # 0.85f

    move v1, v10

    move v4, v12

    move v6, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 833
    :cond_5b
    const/4 v0, 0x0

    move v9, v0

    :goto_5d
    const/4 v0, 0x4

    if-ge v9, v0, :cond_99

    .line 834
    const-wide/32 v0, 0x88b8

    int-to-long v2, v9

    const-wide/16 v4, 0x9c4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 835
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_95

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x9c4

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_95

    .line 836
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x9c4

    const-wide/16 v6, 0x15e

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->fade(JJJJ)F

    move-result v7

    .line 837
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sCaps:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget-object v3, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v6, 0x3f733333    # 0.95f

    move v1, v10

    move v2, v10

    move v4, v11

    move v5, v11

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 833
    :cond_95
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_5d

    .line 840
    :cond_99
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v2, 0xafc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_19

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v2, 0xba54

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 841
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v2, 0xafc8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa8c

    const-wide/16 v6, 0x1f4

    invoke-static/range {v0 .. v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->fade(JJJJ)F

    move-result v7

    .line 842
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sTitle1:Ljava/lang/String;

    const/high16 v2, 0x42200000    # 40.0f

    sget-object v3, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v1, v10

    move v4, v12

    move v5, v11

    move v6, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 843
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sTitle2:Ljava/lang/String;

    const/high16 v2, -0x3de00000    # -40.0f

    sget-object v3, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v5, 0x3f59999a    # 0.85f

    move v1, v10

    move v4, v12

    move v6, v13

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    goto/16 :goto_19
.end method

.method private static drawHudText(FF)V
    .registers 29

    .prologue
    .line 782
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    if-ltz v2, :cond_10

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x15e

    cmp-long v2, v2, v4

    if-gez v2, :cond_21

    :cond_10
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0xa28

    cmp-long v2, v2, v4

    if-ltz v2, :cond_21

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v4, 0x88b8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_22

    .line 821
    :cond_21
    :goto_21
    return-void

    .line 783
    :cond_22
    const/high16 v2, 0x3f800000    # 1.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0xa28

    sub-long/2addr v4, v6

    long-to-float v3, v4

    const/high16 v4, 0x44480000    # 800.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 784
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v4, 0x82dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4d

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v6, 0x82dc

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x44bb8000    # 1500.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 785
    :cond_4d
    move/from16 v0, p0

    neg-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42700000    # 60.0f

    add-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v4, v2, v4

    .line 787
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sShipPlate:Ljava/lang/String;

    sget-object v5, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v6, 0x3f59999a    # 0.85f

    const v7, 0x3f733333    # 0.95f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 788
    const/high16 v2, 0x42300000    # 44.0f

    sub-float v11, v4, v2

    const/high16 v12, 0x43d20000    # 420.0f

    const/high16 v13, 0x41b00000    # 22.0f

    sget v14, Lfr/testudo/spacecorsair/mod/ModIntro;->hull:F

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3ee66666    # 0.45f

    const v17, 0x3ecccccd    # 0.4f

    move v10, v3

    move/from16 v18, v9

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->bar(FFFFFFFFF)V

    .line 789
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sHullBar:Ljava/lang/String;

    const/high16 v2, 0x43d70000    # 430.0f

    add-float v11, v3, v2

    const/high16 v2, 0x42400000    # 48.0f

    sub-float v12, v4, v2

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f19999a    # 0.6f

    const v16, 0x3f0ccccd    # 0.55f

    const/16 v18, 0x0

    move/from16 v17, v9

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 790
    const/high16 v2, 0x42a00000    # 80.0f

    sub-float v11, v4, v2

    const/high16 v12, 0x43d20000    # 420.0f

    const/high16 v13, 0x41b00000    # 22.0f

    sget v14, Lfr/testudo/spacecorsair/mod/ModIntro;->shield:F

    const v15, 0x3ee66666    # 0.45f

    const v16, 0x3f4ccccd    # 0.8f

    const/high16 v17, 0x3f800000    # 1.0f

    move v10, v3

    move/from16 v18, v9

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->bar(FFFFFFFFF)V

    .line 791
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sShieldBar:Ljava/lang/String;

    const/high16 v2, 0x43d70000    # 430.0f

    add-float v11, v3, v2

    const/high16 v2, 0x42a80000    # 84.0f

    sub-float v12, v4, v2

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v14, 0x3f19999a    # 0.6f

    const v15, 0x3f59999a    # 0.85f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    move/from16 v17, v9

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 793
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x27d8

    cmp-long v2, v2, v6

    if-ltz v2, :cond_123

    .line 794
    const/high16 v2, 0x3f800000    # 1.0f

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v10, 0x2328

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x4b0

    sub-long/2addr v6, v10

    long-to-float v3, v6

    const/high16 v5, 0x44160000    # 600.0f

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v17, v2, v9

    .line 795
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p0, v2

    const/high16 v3, 0x42700000    # 60.0f

    sub-float v11, v2, v3

    .line 796
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sBossPlate:Ljava/lang/String;

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3ee66666    # 0.45f

    const/16 v18, 0x2

    move v12, v4

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 797
    const/high16 v2, 0x44020000    # 520.0f

    sub-float v18, v11, v2

    const/high16 v2, 0x42300000    # 44.0f

    sub-float v19, v4, v2

    const/high16 v20, 0x44020000    # 520.0f

    const/high16 v21, 0x41b00000    # 22.0f

    sget v22, Lfr/testudo/spacecorsair/mod/ModIntro;->bossHp:F

    const/high16 v23, 0x3f800000    # 1.0f

    const v24, 0x3e99999a    # 0.3f

    const/high16 v25, 0x3e800000    # 0.25f

    move/from16 v26, v17

    invoke-static/range {v18 .. v26}, Lfr/testudo/spacecorsair/mod/ModIntro;->bar(FFFFFFFFF)V

    .line 800
    :cond_123
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1c3

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x2260

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c3

    .line 801
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x1388

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x456d8000    # 3800.0f

    div-float/2addr v2, v3

    .line 802
    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2b2

    const v3, 0x3dcccccd    # 0.1f

    div-float/2addr v2, v3

    .line 803
    :goto_148
    const v3, 0x3f333333    # 0.7f

    const v4, 0x3e99999a    # 0.3f

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    long-to-double v6, v6

    const-wide v10, 0x406b800000000000L    # 220.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 804
    const/high16 v4, 0x43960000    # 300.0f

    .line 805
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sBounty:Ljava/lang/String;

    const/4 v11, 0x0

    const/high16 v5, 0x428c0000    # 70.0f

    add-float v12, v4, v5

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3eb33333    # 0.35f

    const v16, 0x3e99999a    # 0.3f

    mul-float v17, v2, v3

    const/16 v18, 0x1

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 806
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sTarget:Ljava/lang/String;

    const/4 v11, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    add-float v12, v4, v3

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f59999a    # 0.85f

    const v16, 0x3f333333    # 0.7f

    const/16 v18, 0x1

    move/from16 v17, v2

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 807
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sTargetRole:Ljava/lang/String;

    const/4 v11, 0x0

    const/high16 v3, 0x42200000    # 40.0f

    sub-float v12, v4, v3

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f19999a    # 0.6f

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v18, 0x1

    move/from16 v17, v2

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 808
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sReward:Ljava/lang/String;

    const/4 v11, 0x0

    const/high16 v3, 0x42be0000    # 95.0f

    sub-float v12, v4, v3

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f59999a    # 0.85f

    const v16, 0x3eb33333    # 0.35f

    const/16 v18, 0x1

    move/from16 v17, v2

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 810
    :cond_1c3
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x2260

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1ff

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x2328

    cmp-long v2, v2, v4

    if-gez v2, :cond_1ff

    .line 811
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x1388

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xed8

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    .line 812
    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2c7

    const v3, 0x3e4ccccd    # 0.2f

    div-float v17, v2, v3

    .line 813
    :goto_1eb
    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sAccepted:Ljava/lang/String;

    const/4 v11, 0x0

    const/high16 v12, 0x43960000    # 300.0f

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const v14, 0x3f19999a    # 0.6f

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f266666    # 0.65f

    const/16 v18, 0x1

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 816
    :cond_1ff
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x104

    div-long/2addr v2, v4

    const-wide/16 v4, 0x2

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2dd

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v19, v2

    .line 817
    :goto_211
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x4c2c

    cmp-long v2, v2, v4

    if-ltz v2, :cond_236

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x54c4

    cmp-long v2, v2, v4

    if-gez v2, :cond_236

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sShieldDown:Ljava/lang/String;

    const/4 v11, 0x0

    const/high16 v12, -0x3c240000    # -440.0f

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v14, 0x3f000000    # 0.5f

    const v15, 0x3f59999a    # 0.85f

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v17, v9, v19

    const/16 v18, 0x1

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 818
    :cond_236
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x5dc0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_25b

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x76c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_25b

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sHullCrit:Ljava/lang/String;

    const/4 v11, 0x0

    const/high16 v12, -0x3c240000    # -440.0f

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3e99999a    # 0.3f

    const/high16 v16, 0x3e800000    # 0.25f

    mul-float v17, v9, v19

    const/16 v18, 0x1

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 819
    :cond_25b
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x6978

    cmp-long v2, v2, v4

    if-ltz v2, :cond_28b

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x76c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_28b

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->sRam:Ljava/lang/String;

    const/high16 v11, -0x3be00000    # -640.0f

    const/high16 v12, 0x43960000    # 300.0f

    sget-object v13, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f0ccccd    # 0.55f

    const v16, 0x3e4ccccd    # 0.2f

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v19

    add-float/2addr v2, v3

    mul-float v17, v9, v2

    const/16 v18, 0x1

    invoke-static/range {v10 .. v18}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    .line 820
    :cond_28b
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x7a44

    cmp-long v2, v2, v4

    if-ltz v2, :cond_21

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v4, 0x88b8

    cmp-long v2, v2, v4

    if-gez v2, :cond_21

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sHullLost:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3eb33333    # 0.35f

    const v8, 0x3e99999a    # 0.3f

    mul-float v9, v9, v19

    const/4 v10, 0x1

    invoke-static/range {v2 .. v10}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    goto/16 :goto_21

    .line 802
    :cond_2b2
    const v3, 0x3f59999a    # 0.85f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2c3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const v3, 0x3e19999a    # 0.15f

    div-float/2addr v2, v3

    goto/16 :goto_148

    :cond_2c3
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_148

    .line 812
    :cond_2c7
    const v3, 0x3f4ccccd    # 0.8f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2d9

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const v3, 0x3e4ccccd    # 0.2f

    div-float v17, v2, v3

    goto/16 :goto_1eb

    :cond_2d9
    const/high16 v17, 0x3f800000    # 1.0f

    goto/16 :goto_1eb

    .line 816
    :cond_2dd
    const v2, 0x3eb33333    # 0.35f

    move/from16 v19, v2

    goto/16 :goto_211
.end method

.method private static drawScene()V
    .registers 27

    .prologue
    .line 668
    const-string v2, "albatros"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v18

    const-string v2, "cap_reaver"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v17

    .line 669
    const-string v2, "hw_turret_albatros"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v19

    const-string v2, "hw_turret_cap_reaver"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v20

    .line 670
    const-string v2, "fx_glow"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v24

    const-string v2, "tele_cap_reaver"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 671
    sget v25, Lfr/testudo/spacecorsair/mod/ModIntro;->zoom:F

    .line 673
    if-eqz v2, :cond_c3

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x6978

    cmp-long v3, v4, v6

    if-ltz v3, :cond_c3

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x76c0

    cmp-long v3, v4, v6

    if-gez v3, :cond_c3

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v3, :cond_c3

    .line 674
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    const v5, 0x449c4000    # 1250.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    const v6, 0x449c4000    # 1250.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v7

    const/high16 v7, 0x44160000    # 600.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    sget v6, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    const/high16 v8, 0x44160000    # 600.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 675
    const v7, 0x3ecccccd    # 0.4f

    const v8, 0x3e99999a    # 0.3f

    sget-wide v10, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    long-to-double v10, v10

    const-wide/high16 v12, 0x4064000000000000L    # 160.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v8, v9

    add-float v11, v7, v8

    .line 676
    sub-float v7, v3, v5

    sub-float v8, v3, v5

    mul-float/2addr v7, v8

    sub-float v8, v4, v6

    sub-float v9, v4, v6

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v7, v8

    .line 677
    add-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    mul-float v3, v3, v25

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v5

    add-float/2addr v4, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    mul-float v4, v4, v25

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v5

    const/high16 v5, 0x43af0000    # 350.0f

    mul-float v5, v5, v25

    mul-float v6, v7, v25

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e99999a    # 0.3f

    const v10, 0x3e4ccccd    # 0.2f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 680
    :cond_c3
    if-eqz v17, :cond_1e3

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfGone:Z

    if-nez v2, :cond_1e3

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x2328

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1e3

    .line 681
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x251c

    cmp-long v2, v2, v4

    if-gez v2, :cond_16f

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x2328

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float v11, v2, v3

    .line 682
    :goto_e3
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    mul-float v2, v2, v25

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v2

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    mul-float v2, v2, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v2

    const v2, 0x449c4000    # 1250.0f

    mul-float v5, v2, v25

    const v2, 0x449c4000    # 1250.0f

    mul-float v6, v2, v25

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v2, v17

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 683
    if-eqz v20, :cond_173

    .line 684
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_114
    const/16 v2, 0x8

    move/from16 v0, v17

    if-ge v0, v2, :cond_173

    .line 685
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->BF_PADS:[F

    mul-int/lit8 v6, v17, 0x2

    aget v5, v5, v6

    const v6, 0x449c4000    # 1250.0f

    mul-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->BF_PADS:[F

    mul-int/lit8 v7, v17, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    const v7, 0x449c4000    # 1250.0f

    mul-float/2addr v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v2

    .line 686
    const/4 v3, 0x0

    aget v3, v2, v3

    mul-float v3, v3, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    mul-float v2, v2, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v2

    const v2, 0x43098000    # 137.5f

    mul-float v5, v2, v25

    const v2, 0x43098000    # 137.5f

    mul-float v6, v2, v25

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfAim:[F

    aget v7, v2, v17

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v2, v20

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 684
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_114

    .line 681
    :cond_16f
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_e3

    .line 689
    :cond_173
    if-eqz v24, :cond_1e3

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x6978

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1e3

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v2, :cond_1e3

    .line 690
    const/high16 v2, 0x3f800000    # 1.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x6978

    sub-long/2addr v4, v6

    long-to-float v3, v4

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 691
    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v4, 0x43020000    # 130.0f

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    const/high16 v4, 0x42200000    # 40.0f

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    long-to-double v6, v6

    const-wide v8, 0x4056800000000000L    # 90.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v5, v3, v25

    .line 692
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    const/4 v7, 0x0

    const v8, -0x3bf68000    # -550.0f

    invoke-static {v3, v4, v6, v7, v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v4

    .line 693
    const/4 v3, 0x0

    aget v3, v4, v3

    mul-float v3, v3, v25

    sget v6, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v6

    const/4 v6, 0x1

    aget v4, v4, v6

    mul-float v4, v4, v25

    sget v6, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3eb33333    # 0.35f

    const v10, 0x3e19999a    # 0.15f

    const v6, 0x3f666666    # 0.9f

    mul-float v11, v6, v2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v2, v24

    move v6, v5

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 697
    :cond_1e3
    if-eqz v18, :cond_2d3

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0xa28

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2d3

    .line 698
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v2, :cond_355

    .line 699
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    mul-float v2, v2, v25

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v2

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    mul-float v2, v2, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v2

    const/high16 v2, 0x44160000    # 600.0f

    mul-float v5, v2, v25

    const/high16 v2, 0x44160000    # 600.0f

    mul-float v6, v2, v25

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v2, v18

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 700
    if-eqz v19, :cond_280

    .line 701
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_222
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ge v0, v2, :cond_280

    .line 702
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->CR_PADS:[F

    mul-int/lit8 v6, v17, 0x2

    aget v5, v5, v6

    const/high16 v6, 0x44160000    # 600.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v5, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->CR_PADS:[F

    mul-int/lit8 v7, v17, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    const/high16 v7, 0x44160000    # 600.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v2

    .line 703
    const/4 v3, 0x0

    aget v3, v2, v3

    mul-float v3, v3, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    mul-float v2, v2, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v2

    const/high16 v2, 0x42c00000    # 96.0f

    mul-float v5, v2, v25

    const/high16 v2, 0x42c00000    # 96.0f

    mul-float v6, v2, v25

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crAim:[F

    aget v7, v2, v17

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v2, v19

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 701
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_222

    .line 706
    :cond_280
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shield:F

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2d3

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x30d4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2d3

    .line 707
    const-string v2, "vfx_shield_bubble"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 708
    if-eqz v2, :cond_2d3

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    mul-float v3, v3, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    mul-float v4, v4, v25

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v5

    const v5, 0x442c8000    # 690.0f

    mul-float v5, v5, v25

    const v6, 0x442c8000    # 690.0f

    mul-float v6, v6, v25

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    long-to-float v7, v8

    const/high16 v8, 0x41f00000    # 30.0f

    div-float/2addr v7, v8

    const v8, 0x3ee66666    # 0.45f

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3da3d70a    # 0.08f

    sget v13, Lfr/testudo/spacecorsair/mod/ModIntro;->shield:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 729
    :cond_2d3
    :goto_2d3
    const-string v2, "fx_bolt"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    const-string v3, "proj_cap_reaver"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v26

    .line 730
    const/4 v3, 0x0

    move/from16 v23, v3

    :goto_2e2
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_4f6

    .line 731
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shT:[F

    aget v3, v3, v23

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shD:[F

    aget v4, v4, v23

    div-float/2addr v3, v4

    .line 732
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shX0:[F

    aget v4, v4, v23

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shX1:[F

    aget v5, v5, v23

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->shX0:[F

    aget v6, v6, v23

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shY0:[F

    aget v5, v5, v23

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->shY1:[F

    aget v6, v6, v23

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->shY0:[F

    aget v7, v7, v23

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    add-float/2addr v5, v3

    .line 733
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shX0:[F

    aget v3, v3, v23

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->shY0:[F

    aget v6, v6, v23

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->shX1:[F

    aget v7, v7, v23

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModIntro;->shY1:[F

    aget v8, v8, v23

    invoke-static {v3, v6, v7, v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->aim(FFFF)F

    move-result v7

    .line 734
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shKind:[I

    aget v3, v3, v23

    if-nez v3, :cond_495

    .line 735
    if-eqz v2, :cond_350

    mul-float v3, v4, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v4

    mul-float v4, v5, v25

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v5

    const/high16 v5, 0x42080000    # 34.0f

    mul-float v5, v5, v25

    const/high16 v6, 0x43020000    # 130.0f

    mul-float v6, v6, v25

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f400000    # 0.75f

    const v10, 0x3eb33333    # 0.35f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 730
    :cond_350
    :goto_350
    add-int/lit8 v3, v23, 0x1

    move/from16 v23, v3

    goto :goto_2e2

    .line 711
    :cond_355
    const/high16 v2, 0x3f800000    # 1.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x76c0

    sub-long/2addr v4, v6

    long-to-float v3, v4

    const v4, 0x44bb8000    # 1500.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 712
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f0ccccd    # 0.55f

    mul-float v3, v3, v17

    sub-float v8, v2, v3

    .line 714
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1x:F

    mul-float v2, v2, v25

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v2

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1y:F

    mul-float v2, v2, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v2

    const/high16 v2, 0x44160000    # 600.0f

    mul-float v5, v2, v25

    const/high16 v2, 0x43960000    # 300.0f

    mul-float v6, v2, v25

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->h1r:F

    const v2, 0x3f59999a    # 0.85f

    mul-float v9, v8, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v10, v8, v2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v2, v18

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 715
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2x:F

    mul-float v2, v2, v25

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v2

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2y:F

    mul-float v2, v2, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v2

    const/high16 v2, 0x44160000    # 600.0f

    mul-float v5, v2, v25

    const/high16 v2, 0x43960000    # 300.0f

    mul-float v6, v2, v25

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->h2r:F

    const v2, 0x3f59999a    # 0.85f

    mul-float v9, v8, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v10, v8, v2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v2, v18

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 716
    const-string v2, "fx_scorch"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 717
    if-eqz v2, :cond_44e

    .line 718
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->h1x:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->h1y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->h1r:F

    const/4 v6, 0x0

    const/high16 v7, 0x43040000    # 132.0f

    invoke-static {v3, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v4

    .line 719
    const/4 v3, 0x0

    aget v3, v4, v3

    mul-float v3, v3, v25

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float v4, v4, v25

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v5

    const/high16 v5, 0x43340000    # 180.0f

    mul-float v5, v5, v25

    const/high16 v6, 0x43340000    # 180.0f

    mul-float v6, v6, v25

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->h1r:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 720
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->h2x:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->h2y:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->h2r:F

    const/4 v6, 0x0

    const/high16 v7, -0x3cfc0000    # -132.0f

    invoke-static {v3, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v4

    .line 721
    const/4 v3, 0x0

    aget v3, v4, v3

    mul-float v3, v3, v25

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float v4, v4, v25

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v5

    const/high16 v5, 0x43340000    # 180.0f

    mul-float v5, v5, v25

    const/high16 v6, 0x43340000    # 180.0f

    mul-float v6, v6, v25

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->h2r:F

    const/high16 v8, 0x42c20000    # 97.0f

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 723
    :cond_44e
    if-eqz v24, :cond_2d3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v17, v2

    if-gez v2, :cond_2d3

    .line 724
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    mul-float v2, v2, v25

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v2

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    mul-float v2, v2, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v2

    const/high16 v2, 0x44520000    # 840.0f

    mul-float v2, v2, v25

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v5, v17

    mul-float/2addr v5, v2

    const/high16 v2, 0x44520000    # 840.0f

    mul-float v2, v2, v25

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v6, v17

    mul-float/2addr v6, v2

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3e99999a    # 0.3f

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v11, v17

    mul-float/2addr v11, v2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v2, v24

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto/16 :goto_2d3

    .line 737
    :cond_495
    if-eqz v24, :cond_4c6

    mul-float v3, v4, v25

    sget v6, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float v9, v3, v6

    mul-float v3, v5, v25

    sget v6, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float v10, v3, v6

    const/high16 v3, 0x432a0000    # 170.0f

    mul-float v11, v3, v25

    const/high16 v3, 0x432a0000    # 170.0f

    mul-float v12, v3, v25

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3ecccccd    # 0.4f

    const v16, 0x3e19999a    # 0.15f

    const v17, 0x3f59999a    # 0.85f

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v8, v24

    invoke-static/range {v8 .. v22}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 738
    :cond_4c6
    if-eqz v26, :cond_350

    mul-float v3, v4, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float v9, v3, v4

    mul-float v3, v5, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float v10, v3, v4

    const/high16 v3, 0x42600000    # 56.0f

    mul-float v11, v3, v25

    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v12, v3, v25

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v8, v26

    move v13, v7

    invoke-static/range {v8 .. v22}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto/16 :goto_350

    .line 742
    :cond_4f6
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_4f9
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ge v0, v2, :cond_618

    .line 743
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_501
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_612

    .line 744
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->padd:[Z

    aget-boolean v3, v2, v17

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_518

    const/4 v2, 0x1

    :goto_511
    if-eq v3, v2, :cond_51a

    .line 743
    :cond_513
    :goto_513
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_501

    .line 744
    :cond_518
    const/4 v2, 0x0

    goto :goto_511

    .line 745
    :cond_51a
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->ptex:[Ljava/lang/String;

    aget-object v2, v2, v17

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 746
    if-eqz v2, :cond_513

    .line 747
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->plife:[F

    aget v3, v3, v17

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->pmax:[F

    aget v4, v4, v17

    div-float/2addr v3, v4

    .line 748
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->ps0:[F

    aget v4, v4, v17

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->ps1:[F

    aget v5, v5, v17

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->ps0:[F

    aget v6, v6, v17

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    mul-float v5, v4, v25

    .line 749
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->pa:[F

    aget v4, v4, v17

    const v6, 0x3f333333    # 0.7f

    cmpg-float v6, v3, v6

    if-gez v6, :cond_598

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_54b
    mul-float v11, v4, v3

    .line 750
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->pcell:[Z

    aget-boolean v3, v3, v17

    if-eqz v3, :cond_5a5

    .line 751
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->pc:[I

    aget v3, v3, v17

    .line 752
    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v16, 0x3e800000    # 0.25f

    .line 753
    rem-int/lit8 v15, v3, 0x4

    div-int/lit8 v19, v3, 0x4

    .line 754
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->px:[F

    aget v3, v3, v17

    mul-float v3, v3, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->py:[F

    aget v4, v4, v17

    mul-float v4, v4, v25

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->prot:[F

    aget v7, v7, v17

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModIntro;->pr:[F

    aget v8, v8, v17

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModIntro;->pg:[F

    aget v9, v9, v17

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->pb:[F

    aget v10, v10, v17

    const/4 v12, 0x0

    int-to-float v13, v15

    mul-float/2addr v13, v6

    move/from16 v0, v19

    int-to-float v14, v0

    mul-float v14, v14, v16

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    mul-float/2addr v15, v6

    add-int/lit8 v6, v19, 0x1

    int-to-float v6, v6

    mul-float v16, v16, v6

    move v6, v5

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto/16 :goto_513

    .line 749
    :cond_598
    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    sub-float/2addr v3, v7

    const v7, 0x3e99999a    # 0.3f

    div-float/2addr v3, v7

    sub-float v3, v6, v3

    goto :goto_54b

    .line 756
    :cond_5a5
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->pvx:[F

    aget v3, v3, v17

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5b7

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->pvy:[F

    aget v3, v3, v17

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_60b

    :cond_5b7
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->pvy:[F

    aget v3, v3, v17

    float-to-double v6, v3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->pvx:[F

    aget v3, v3, v17

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v3, v6

    const/high16 v4, 0x42b40000    # 90.0f

    add-float v7, v3, v4

    .line 757
    :goto_5ce
    const-string v3, "fx_spark"

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->ptex:[Ljava/lang/String;

    aget-object v4, v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_610

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v6, v5, v3

    .line 758
    :goto_5de
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->px:[F

    aget v3, v3, v17

    mul-float v3, v3, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->py:[F

    aget v4, v4, v17

    mul-float v4, v4, v25

    sget v8, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v8

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModIntro;->pr:[F

    aget v8, v8, v17

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModIntro;->pg:[F

    aget v9, v9, v17

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->pb:[F

    aget v10, v10, v17

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModIntro;->padd:[Z

    aget-boolean v12, v12, v17

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto/16 :goto_513

    .line 756
    :cond_60b
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->prot:[F

    aget v7, v3, v17

    goto :goto_5ce

    :cond_610
    move v6, v5

    .line 757
    goto :goto_5de

    .line 742
    :cond_612
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_4f9

    .line 763
    :cond_618
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_61b
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_715

    .line 764
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->btex:[Ljava/lang/String;

    aget-object v2, v2, v17

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    .line 765
    if-nez v2, :cond_630

    .line 763
    :goto_62b
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_61b

    .line 766
    :cond_630
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bage:[J

    aget-wide v4, v3, v17

    long-to-float v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bdur:[J

    aget-wide v4, v4, v17

    long-to-float v4, v4

    div-float/2addr v3, v4

    .line 767
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bframes:[I

    aget v4, v4, v17

    const/4 v5, 0x1

    if-le v4, v5, :cond_6d1

    .line 768
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bframes:[I

    aget v4, v4, v17

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->bframes:[I

    aget v5, v5, v17

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 769
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bframes:[I

    aget v4, v4, v17

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->bcols:[I

    aget v5, v5, v17

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->bcols:[I

    aget v5, v5, v17

    div-int/2addr v4, v5

    .line 770
    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->bcols:[I

    aget v6, v6, v17

    int-to-float v6, v6

    div-float v15, v5, v6

    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v4, v4

    div-float v16, v5, v4

    .line 771
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bcols:[I

    aget v4, v4, v17

    rem-int v18, v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bcols:[I

    aget v4, v4, v17

    div-int v19, v3, v4

    .line 772
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bx:[F

    aget v3, v3, v17

    mul-float v3, v3, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->by:[F

    aget v4, v4, v17

    mul-float v4, v4, v25

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->bs:[F

    aget v5, v5, v17

    mul-float v5, v5, v25

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->bs:[F

    aget v6, v6, v17

    mul-float v6, v6, v25

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->brot:[F

    aget v7, v7, v17

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModIntro;->br:[F

    aget v8, v8, v17

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModIntro;->bg:[F

    aget v9, v9, v17

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModIntro;->bb:[F

    aget v10, v10, v17

    const/high16 v11, 0x3f800000    # 1.0f

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModIntro;->badd:[Z

    aget-boolean v12, v12, v17

    move/from16 v0, v18

    int-to-float v13, v0

    mul-float/2addr v13, v15

    move/from16 v0, v19

    int-to-float v14, v0

    mul-float v14, v14, v16

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v15, v15, v18

    add-int/lit8 v18, v19, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v16, v16, v18

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto/16 :goto_62b

    .line 774
    :cond_6d1
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v11, v4, v3

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bs:[F

    aget v4, v4, v17

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    mul-float/2addr v3, v4

    mul-float v5, v3, v25

    .line 775
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bx:[F

    aget v3, v3, v17

    mul-float v3, v3, v25

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    add-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->by:[F

    aget v4, v4, v17

    mul-float v4, v4, v25

    sget v6, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    add-float/2addr v4, v6

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->brot:[F

    aget v7, v6, v17

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->br:[F

    aget v8, v6, v17

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->bg:[F

    aget v9, v6, v17

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->bb:[F

    aget v10, v6, v17

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->badd:[Z

    aget-boolean v12, v6, v17

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move v6, v5

    invoke-static/range {v2 .. v16}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    goto/16 :goto_62b

    .line 778
    :cond_715
    return-void
.end method

.method private static drawSkipHint(FF)V
    .registers 11

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 848
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    if-gez v0, :cond_19

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_19

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v2, 0xb478

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    .line 852
    :cond_19
    :goto_19
    return-void

    .line 849
    :cond_1a
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->skipHint:Z

    if-eqz v0, :cond_4c

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->lastTapT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4c

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->lastTapT:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-gez v0, :cond_4c

    const/4 v0, 0x1

    .line 850
    :goto_32
    if-eqz v0, :cond_4e

    move v7, v4

    .line 851
    :goto_35
    if-eqz v0, :cond_52

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sTapAgain:Ljava/lang/String;

    :goto_39
    div-float v1, p0, v5

    const/high16 v2, 0x42480000    # 50.0f

    sub-float/2addr v1, v2

    neg-float v2, p1

    div-float/2addr v2, v5

    const/high16 v3, 0x42200000    # 40.0f

    add-float/2addr v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    const/4 v8, 0x2

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V

    goto :goto_19

    .line 849
    :cond_4c
    const/4 v0, 0x0

    goto :goto_32

    .line 850
    :cond_4e
    const v7, 0x3ee66666    # 0.45f

    goto :goto_35

    .line 851
    :cond_52
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sTapSkip:Ljava/lang/String;

    goto :goto_39
.end method

.method private static drawStars(FF)V
    .registers 17

    .prologue
    .line 655
    const-string v0, "fx_glow"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_4a

    .line 657
    neg-float v1, p0

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x44af0000    # 1400.0f

    const/high16 v4, 0x44af0000    # 1400.0f

    const/4 v5, 0x0

    const v6, 0x3eb33333    # 0.35f

    const v7, 0x3e4ccccd    # 0.2f

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3eb33333    # 0.35f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v14}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 658
    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, p0

    const/high16 v2, -0x3c6a0000    # -300.0f

    const v3, 0x44898000    # 1100.0f

    const v4, 0x44898000    # 1100.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3e19999a    # 0.15f

    const v8, 0x3e4ccccd    # 0.2f

    const v9, 0x3e99999a    # 0.3f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v14}, Lfr/testudo/spacecorsair/mod/ModIntro;->tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V

    .line 660
    :cond_4a
    const/4 v0, 0x0

    move v9, v0

    :goto_4c
    const/16 v0, 0x96

    if-ge v9, v0, :cond_94

    .line 661
    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x40600000    # 3.5f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sz:[F

    aget v2, v2, v9

    mul-float/2addr v1, v2

    add-float v2, v0, v1

    .line 662
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sx:[F

    aget v0, v0, v9

    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->zoom:F

    mul-float/2addr v0, v1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->sy:[F

    aget v1, v1, v9

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->zoom:F

    mul-float/2addr v1, v3

    const/4 v4, 0x0

    const v3, 0x3f59999a    # 0.85f

    const v5, 0x3e19999a    # 0.15f

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->sb:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->sb:[F

    aget v3, v3, v9

    const v8, 0x3ecccccd    # 0.4f

    const v10, 0x3f19999a    # 0.6f

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModIntro;->sz:[F

    aget v11, v11, v9

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    mul-float/2addr v8, v3

    move v3, v2

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->quad(FFFFFFFFF)V

    .line 660
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_4c

    .line 664
    :cond_94
    return-void
.end method

.method public static dt(J)J
    .registers 4

    .prologue
    .line 121
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->harness:Z

    if-nez v0, :cond_7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->preFrame()V

    .line 122
    :cond_7
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->active:Z

    if-eqz v0, :cond_d

    const-wide/16 p0, 0x1

    :cond_d
    return-wide p0
.end method

.method private static easeOut(F)F
    .registers 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 491
    const/4 v0, 0x0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 492
    sub-float v1, v3, v0

    sub-float v2, v3, v0

    mul-float/2addr v1, v2

    sub-float v0, v3, v0

    mul-float/2addr v0, v1

    sub-float v0, v3, v0

    return v0
.end method

.method private static fade(JJJJ)F
    .registers 14

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 855
    cmp-long v0, p0, p2

    if-ltz v0, :cond_a

    cmp-long v0, p0, p4

    if-ltz v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 858
    :goto_b
    return v0

    .line 856
    :cond_c
    sub-long v0, p0, p2

    long-to-float v0, v0

    long-to-float v1, p6

    div-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 857
    sub-long v2, p4, p0

    long-to-float v1, v2

    long-to-float v2, p6

    div-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 858
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_b
.end method

.method private static finish(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 256
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->held:Ljava/util/ArrayList;

    monitor-enter v1

    .line 257
    const/4 v0, 0x0

    :try_start_5
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->active:Z

    .line 258
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pending:Z

    .line 259
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_39

    .line 260
    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    .line 261
    const-string v0, "intro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->release()V

    .line 263
    return-void

    .line 259
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public static firstStart()V
    .registers 0

    .prologue
    .line 107
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPrologue;->firstStart()V

    .line 108
    return-void
.end method

.method private static font(Lfr/testudo/spacecorsair/textengine/TextSize;)Lfr/testudo/spacecorsair/textengine/GLText;
    .registers 3

    .prologue
    .line 923
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro$1;->$SwitchMap$fr$testudo$spacecorsair$textengine$TextSize:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 929
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextScore:Lfr/testudo/spacecorsair/textengine/GLText;

    :goto_d
    return-object v0

    .line 924
    :pswitch_e
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 925
    :pswitch_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 926
    :pswitch_14
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 927
    :pswitch_17
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 928
    :pswitch_1a
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_d

    .line 923
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private static frame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 13

    .prologue
    .line 267
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->clock()J

    move-result-wide v2

    .line 268
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->ready:Z

    if-nez v0, :cond_6a

    .line 269
    const/4 v0, 0x0

    .line 270
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->ART:[Ljava/lang/String;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v5, :cond_1c

    aget-object v6, v4, v1

    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v6

    if-eqz v6, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 271
    :cond_1c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->ART:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_1b5

    const/4 v0, 0x1

    :goto_22
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->ready:Z

    .line 272
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->ready:Z

    if-eqz v0, :cond_4d

    const-string v0, "intro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "art ready after "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->startedAt:J

    sub-long v4, v2, v4

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ms of waiting"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_4d
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->ready:Z

    if-nez v0, :cond_6a

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->startedAt:J

    sub-long v0, v2, v0

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x2ee0

    cmp-long v0, v0, v4

    if-gez v0, :cond_6a

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x5dc

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long v0, v2, v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->startedAt:J

    .line 277
    :cond_6a
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    .line 278
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->startedAt:J

    sub-long v4, v2, v4

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    .line 279
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->lastFrame:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1b8

    const-wide/16 v0, 0x10

    .line 280
    :goto_7c
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->lastFrame:J

    .line 281
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->skipReq:Z

    if-eqz v2, :cond_ae

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    if-gez v2, :cond_ae

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v4, 0xb478

    cmp-long v2, v2, v4

    if-gez v2, :cond_ae

    .line 282
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    long-to-int v2, v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    .line 283
    const-string v2, "intro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_ae
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModIntro;->cur:Ljavax/microedition/khronos/opengles/GL10;

    .line 286
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->harness:Z

    if-eqz v2, :cond_1ca

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->harnessW:I

    :goto_b6
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModIntro;->harness:Z

    if-eqz v3, :cond_1ce

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->harnessH:I

    .line 287
    :goto_bc
    int-to-float v4, v3

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v4, v5

    sput v4, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    .line 288
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModIntro;->harness:Z

    if-eqz v4, :cond_1d2

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    :goto_c9
    sput v4, Lfr/testudo/spacecorsair/mod/ModIntro;->midX:F

    .line 289
    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModIntro;->harness:Z

    if-eqz v4, :cond_1d7

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    :goto_d2
    sput v3, Lfr/testudo/spacecorsair/mod/ModIntro;->midY:F

    .line 290
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModIntro;->harness:Z

    if-eqz v3, :cond_1dc

    const/high16 v3, -0x40800000    # -1.0f

    :goto_da
    sput v3, Lfr/testudo/spacecorsair/mod/ModIntro;->Z:F

    .line 291
    int-to-float v2, v2

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    div-float v9, v2, v3

    const/high16 v10, 0x44870000    # 1080.0f

    .line 293
    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModIntro;->update(J)V

    .line 295
    const/16 v0, 0xbe2

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 296
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 297
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 298
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    if-ltz v0, :cond_108

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x15e

    cmp-long v0, v0, v2

    if-gez v0, :cond_111

    :cond_108
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v2, 0xb478

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1e5

    :cond_111
    const/4 v0, 0x1

    .line 299
    :goto_112
    if-nez v0, :cond_131

    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v2, v9

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v3, v10

    const/4 v4, 0x0

    const v5, 0x3c449ba6    # 0.012f

    const v6, 0x3c449ba6    # 0.012f

    const v7, 0x3cf5c28f    # 0.03f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->quad(FFFFFFFFF)V

    .line 301
    invoke-static {v9, v10}, Lfr/testudo/spacecorsair/mod/ModIntro;->drawStars(FF)V

    .line 302
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->drawScene()V

    .line 304
    :cond_131
    invoke-static {v9, v10}, Lfr/testudo/spacecorsair/mod/ModIntro;->drawHudText(FF)V

    .line 306
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->flash:F

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_159

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v2, v9

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v3, v10

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f733333    # 0.95f

    const v7, 0x3f59999a    # 0.85f

    const/high16 v8, 0x3f800000    # 1.0f

    sget v11, Lfr/testudo/spacecorsair/mod/ModIntro;->flash:F

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->quad(FFFFFFFFF)V

    .line 307
    :cond_159
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->veil()F

    move-result v8

    .line 308
    const v0, 0x3ba3d70a    # 0.005f

    cmpl-float v0, v8, v0

    if-lez v0, :cond_173

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v2, v9

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModIntro;->quad(FFFFFFFFF)V

    .line 309
    :cond_173
    invoke-static {v9, v10}, Lfr/testudo/spacecorsair/mod/ModIntro;->drawCaptions(FF)V

    .line 310
    invoke-static {v9, v10}, Lfr/testudo/spacecorsair/mod/ModIntro;->drawSkipHint(FF)V

    .line 311
    const/16 v0, 0xde1

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 312
    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 313
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 314
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 315
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 316
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->cur:Ljavax/microedition/khronos/opengles/GL10;

    .line 318
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    if-ltz v0, :cond_1e8

    .line 319
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x41a

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b4

    const-string v0, "skipped"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIntro;->finish(Ljava/lang/String;)V

    .line 323
    :cond_1b4
    :goto_1b4
    return-void

    .line 271
    :cond_1b5
    const/4 v0, 0x0

    goto/16 :goto_22

    .line 279
    :cond_1b8
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x78

    sget-wide v8, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sub-long v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto/16 :goto_7c

    .line 286
    :cond_1ca
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    goto/16 :goto_b6

    :cond_1ce
    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    goto/16 :goto_bc

    .line 288
    :cond_1d2
    sget v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v4, v4

    goto/16 :goto_c9

    .line 289
    :cond_1d7
    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    int-to-float v3, v3

    goto/16 :goto_d2

    .line 290
    :cond_1dc
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v3, v3, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v3, v3

    goto/16 :goto_da

    .line 298
    :cond_1e5
    const/4 v0, 0x0

    goto/16 :goto_112

    .line 320
    :cond_1e8
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v2, 0xba54

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b4

    .line 321
    const-string v0, "played"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModIntro;->finish(Ljava/lang/String;)V

    goto :goto_1b4
.end method

.method private static hit(IFF)V
    .registers 18

    .prologue
    .line 541
    if-nez p0, :cond_42

    .line 542
    const-string v0, "fx_sparks_sheet"

    const/high16 v3, 0x42dc0000    # 110.0f

    const-wide/16 v4, 0x140

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f59999a    # 0.85f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/16 v11, 0x10

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 543
    const-string v0, "fx_core"

    const/high16 v3, 0x428c0000    # 70.0f

    const-wide/16 v4, 0xa0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3ecccccd    # 0.4f

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 544
    const v0, 0x3f70a3d7    # 0.94f

    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bossHp:F

    const v2, 0x3b83126f    # 0.004f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->bossHp:F

    .line 565
    :cond_41
    :goto_41
    return-void

    .line 547
    :cond_42
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v0, :cond_41

    .line 548
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shield:F

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9e

    .line 549
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shieldHits:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shieldHits:I

    .line 550
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shieldHits:I

    int-to-float v2, v2

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shield:F

    .line 551
    const-string v0, "vfx_shield_hit"

    const/high16 v3, 0x43960000    # 300.0f

    const-wide/16 v4, 0x140

    const v6, 0x3ee66666    # 0.45f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 552
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    .line 553
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shield:F

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_41

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v2, 0x4c2c

    cmp-long v0, v0, v2

    if-gez v0, :cond_41

    const v0, 0x3cf5c28f    # 0.03f

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shield:F

    goto :goto_41

    .line 555
    :cond_9e
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->hullHits:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->hullHits:I

    .line 556
    const v0, 0x3e8f5c29    # 0.28f

    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->hull:F

    const v2, 0x3dae147b    # 0.085f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->hull:F

    .line 557
    const-string v0, "fx_explosion_big_sheet"

    const/high16 v3, 0x433e0000    # 190.0f

    const-wide/16 v4, 0x258

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f400000    # 0.75f

    const v8, 0x3ee66666    # 0.45f

    const/4 v9, 0x1

    const/16 v10, 0x8

    const/16 v11, 0x40

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 558
    const-string v0, "fx_smoke_sheet"

    const/high16 v3, 0x43200000    # 160.0f

    const-wide/16 v4, 0x4b0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/16 v11, 0x10

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 559
    const/4 v0, 0x0

    move v14, v0

    :goto_e5
    const/16 v0, 0x8

    if-ge v14, v0, :cond_12d

    .line 560
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x40c90ff9

    mul-float/2addr v1, v0

    const/high16 v0, 0x43160000    # 150.0f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x43960000    # 300.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 561
    const-string v0, "fx_spark"

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float v4, v1, v2

    const/high16 v5, 0x43c80000    # 400.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f4ccccd    # 0.8f

    const v10, 0x3ee66666    # 0.45f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v13}, Lfr/testudo/spacecorsair/mod/ModIntro;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 559
    add-int/lit8 v0, v14, 0x1

    move v14, v0

    goto :goto_e5

    .line 563
    :cond_12d
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    goto/16 :goto_41
.end method

.method public static holdDialog(Lfr/testudo/spacecorsair/engine/GameThread;IIIIZLjava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 142
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->active:Z

    if-nez v2, :cond_25

    .line 143
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pending:Z

    if-nez v2, :cond_b

    .line 156
    :goto_a
    return v0

    .line 144
    :cond_b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->clock()J

    move-result-wide v2

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->pendingAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x61a8

    cmp-long v2, v2, v4

    if-lez v2, :cond_25

    .line 145
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pending:Z

    .line 146
    const-string v1, "intro"

    const-string v2, "pending timed out; dialogs released"

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->release()V

    goto :goto_a

    .line 151
    :cond_25
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->held:Ljava/util/ArrayList;

    monitor-enter v2

    .line 152
    :try_start_28
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModIntro;->active:Z

    if-nez v3, :cond_35

    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModIntro;->pending:Z

    if-nez v3, :cond_35

    monitor-exit v2

    goto :goto_a

    .line 154
    :catchall_32
    move-exception v0

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw v0

    .line 153
    :cond_35
    :try_start_35
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->held:Ljava/util/ArrayList;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p6, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_35 .. :try_end_67} :catchall_32

    .line 155
    const-string v0, "intro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog held "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 156
    goto :goto_a
.end method

.method private static initStars()V
    .registers 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 638
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    const/16 v0, 0x96

    if-ge v1, v0, :cond_52

    .line 639
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sx:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v5

    const v3, 0x45228000    # 2600.0f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 640
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sy:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v5

    const v3, 0x44a28000    # 1300.0f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 641
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sz:[F

    const/16 v0, 0x19

    if-ge v1, v0, :cond_46

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2e
    aput v0, v2, v1

    .line 642
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sb:[F

    const v2, 0x3eb33333    # 0.35f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 638
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 641
    :cond_46
    const/16 v0, 0x46

    if-ge v1, v0, :cond_4e

    const v0, 0x3f0ccccd    # 0.55f

    goto :goto_2e

    :cond_4e
    const v0, 0x3e99999a    # 0.3f

    goto :goto_2e

    .line 644
    :cond_52
    return-void
.end method

.method public static isActive()Z
    .registers 1

    .prologue
    .line 117
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->active:Z

    return v0
.end method

.method private static local(FFFFF)[F
    .registers 11

    .prologue
    .line 510
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 511
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 512
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->tmp:[F

    const/4 v3, 0x0

    mul-float v4, p3, v2

    add-float/2addr v4, p0

    mul-float v5, p4, v0

    sub-float/2addr v4, v5

    aput v4, v1, v3

    .line 513
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->tmp:[F

    const/4 v3, 0x1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    mul-float/2addr v2, p4

    add-float/2addr v0, v2

    aput v0, v1, v3

    .line 514
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->tmp:[F

    return-object v0
.end method

.method private static part(Ljava/lang/String;FFFFFFFFFFFZZ)V
    .registers 30

    .prologue
    .line 577
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-static/range {v0 .. v15}, Lfr/testudo/spacecorsair/mod/ModIntro;->part(Ljava/lang/String;FFFFFFFFFFFZZFI)V

    .line 578
    return-void
.end method

.method private static part(Ljava/lang/String;FFFFFFFFFFFZZFI)V
    .registers 20

    .prologue
    .line 582
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    const/16 v1, 0x1a4

    if-ge v0, v1, :cond_63

    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    .line 583
    :goto_c
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->ptex:[Ljava/lang/String;

    aput-object p0, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->px:[F

    aput p1, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->py:[F

    aput p2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pvx:[F

    aput p3, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pvy:[F

    aput p4, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->plife:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pmax:[F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v2, p5, v2

    aput v2, v1, v0

    .line 584
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->ps0:[F

    aput p6, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->ps1:[F

    aput p7, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pr:[F

    aput p8, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pg:[F

    aput p9, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pb:[F

    aput p10, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pa:[F

    aput p11, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->padd:[Z

    aput-boolean p12, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pcell:[Z

    aput-boolean p13, v1, v0

    .line 585
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->prot:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pspin:[F

    aput p14, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pc:[I

    aput p15, v1, v0

    .line 586
    return-void

    .line 582
    :cond_63
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    const/16 v1, 0x1a4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_c
.end method

.method private static quad(FFFFFFFFF)V
    .registers 16

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 876
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->cur:Ljavax/microedition/khronos/opengles/GL10;

    .line 877
    if-eqz v0, :cond_f

    const v1, 0x3b03126f    # 0.002f

    cmpg-float v1, p8, v1

    if-gtz v1, :cond_10

    .line 887
    :cond_f
    :goto_f
    return-void

    .line 878
    :cond_10
    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 879
    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 880
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 881
    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    mul-float/2addr v1, p0

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    mul-float/2addr v2, p1

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->Z:F

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 882
    cmpl-float v1, p4, v4

    if-eqz v1, :cond_30

    invoke-interface {v0, p4, v4, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 883
    :cond_30
    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    mul-float/2addr v1, p2

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    mul-float/2addr v2, p3

    invoke-interface {v0, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 884
    invoke-interface {v0, p5, p6, p7, p8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 885
    const/4 v1, 0x3

    const/16 v2, 0x1406

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->QUAD:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v1, v2, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 886
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_f
.end method

.method private static release()V
    .registers 9

    .prologue
    .line 162
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->held:Ljava/util/ArrayList;

    monitor-enter v1

    .line 163
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->held:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->held:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 165
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_76

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    :try_start_22
    aget-object v0, v6, v0

    check-cast v0, Lfr/testudo/spacecorsair/engine/GameThread;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    aget-object v2, v6, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    aget-object v4, v6, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    aget-object v5, v6, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v8, 0x6

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/GameThread;->showDialog(IIIIZLjava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_5b} :catch_5c

    goto :goto_14

    .line 169
    :catch_5c
    move-exception v0

    .line 170
    const-string v1, "intro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog release failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 165
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0

    .line 173
    :cond_79
    return-void
.end method

.method public static replay()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pending:Z

    .line 113
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModIntro;->clock()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->pendingAt:J

    .line 114
    const-string v0, "intro"

    const-string v1, "pending (replay)"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private static shot(IFFFFF)V
    .registers 9

    .prologue
    .line 524
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    const/16 v1, 0x40

    if-lt v0, v1, :cond_7

    .line 527
    :goto_6
    return-void

    .line 525
    :cond_7
    sget v0, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    .line 526
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shKind:[I

    aput p0, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shX0:[F

    aput p1, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shY0:[F

    aput p2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shX1:[F

    aput p3, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shY1:[F

    aput p4, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shT:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shD:[F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v2, p5, v2

    aput v2, v1, v0

    goto :goto_6
.end method

.method private static stepBooms(J)V
    .registers 8

    .prologue
    .line 622
    const/4 v0, 0x0

    :goto_1
    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    if-ge v0, v1, :cond_a6

    .line 623
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bage:[J

    aget-wide v2, v1, v0

    add-long/2addr v2, p0

    aput-wide v2, v1, v0

    .line 624
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bage:[J

    aget-wide v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bdur:[J

    aget-wide v4, v1, v0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_a2

    .line 625
    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    .line 626
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->btex:[Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->btex:[Ljava/lang/String;

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bx:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bx:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->by:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->by:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bs:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bs:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->brot:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->brot:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->br:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->br:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bg:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bg:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bb:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bb:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget v2, v2, v3

    aput v2, v1, v0

    .line 627
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bage:[J

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bage:[J

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bdur:[J

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bdur:[J

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bcols:[I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bcols:[I

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->bframes:[I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bframes:[I

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->badd:[Z

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->badd:[Z

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->booms:I

    aget-boolean v2, v2, v3

    aput-boolean v2, v1, v0

    .line 628
    add-int/lit8 v0, v0, -0x1

    .line 622
    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 631
    :cond_a6
    return-void
.end method

.method private static stepParts(F)V
    .registers 7

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 589
    const/4 v0, 0x0

    :goto_5
    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    if-ge v0, v1, :cond_11d

    .line 590
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->plife:[F

    aget v2, v1, v0

    add-float/2addr v2, p0

    aput v2, v1, v0

    .line 591
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->plife:[F

    aget v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pmax:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_dc

    .line 592
    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    .line 593
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->ptex:[Ljava/lang/String;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->ptex:[Ljava/lang/String;

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->px:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->px:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->py:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->py:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pvx:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pvx:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pvy:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pvy:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->plife:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->plife:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pmax:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pmax:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    .line 594
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->ps0:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->ps0:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->ps1:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->ps1:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pr:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pr:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pg:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pg:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pb:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pb:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pa:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pa:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->padd:[Z

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->padd:[Z

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget-boolean v2, v2, v3

    aput-boolean v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pcell:[Z

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pcell:[Z

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget-boolean v2, v2, v3

    aput-boolean v2, v1, v0

    .line 595
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->prot:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->prot:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pspin:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pspin:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pc:[I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->pc:[I

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->live:I

    aget v2, v2, v3

    aput v2, v1, v0

    .line 596
    add-int/lit8 v0, v0, -0x1

    .line 589
    :cond_d8
    :goto_d8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 599
    :cond_dc
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->px:[F

    aget v2, v1, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->pvx:[F

    aget v3, v3, v0

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 600
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->py:[F

    aget v2, v1, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->pvy:[F

    aget v3, v3, v0

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 601
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->prot:[F

    aget v2, v1, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->pspin:[F

    aget v3, v3, v0

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 602
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pcell:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_d8

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pvx:[F

    aget v2, v1, v0

    mul-float v3, v5, p0

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->pvy:[F

    aget v2, v1, v0

    mul-float v3, v5, p0

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    goto :goto_d8

    .line 604
    :cond_11d
    return-void
.end method

.method private static stepShots(F)V
    .registers 5

    .prologue
    .line 530
    const/4 v0, 0x0

    :goto_1
    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    if-ge v0, v1, :cond_79

    .line 531
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shT:[F

    aget v2, v1, v0

    add-float/2addr v2, p0

    aput v2, v1, v0

    .line 532
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shT:[F

    aget v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shD:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b

    .line 530
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    :cond_1b
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shKind:[I

    aget v1, v1, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shX1:[F

    aget v2, v2, v0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shY1:[F

    aget v3, v3, v0

    invoke-static {v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModIntro;->hit(IFF)V

    .line 534
    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    .line 535
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shKind:[I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shKind:[I

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shX0:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shX0:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shY0:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shY0:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shX1:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shX1:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shY1:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shY1:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shT:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shT:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    aget v2, v2, v3

    aput v2, v1, v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->shD:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shD:[F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shots:I

    aget v2, v2, v3

    aput v2, v1, v0

    .line 536
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 538
    :cond_79
    return-void
.end method

.method private static stepStars(F)V
    .registers 9

    .prologue
    const-wide/16 v6, 0x76c0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 647
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0xa28

    cmp-long v2, v2, v4

    if-gez v2, :cond_49

    .line 648
    :goto_d
    const/4 v1, 0x0

    :goto_e
    const/16 v2, 0x96

    if-ge v1, v2, :cond_5f

    .line 649
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sy:[F

    aget v3, v2, v1

    const/high16 v4, 0x43160000    # 150.0f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->sz:[F

    aget v5, v5, v1

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    mul-float/2addr v4, p0

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 650
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sy:[F

    aget v2, v2, v1

    const/high16 v3, -0x3bd60000    # -680.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_46

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sy:[F

    aget v3, v2, v1

    const/high16 v4, 0x44aa0000    # 1360.0f

    add-float/2addr v3, v4

    aput v3, v2, v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sx:[F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    const v4, 0x45228000    # 2600.0f

    mul-float/2addr v3, v4

    aput v3, v2, v1

    .line 648
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 647
    :cond_49
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_51

    move v0, v1

    goto :goto_d

    :cond_51
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    const v3, 0x451c4000    # 2500.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_d

    .line 652
    :cond_5f
    return-void
.end method

.method private static strings()V
    .registers 3

    .prologue
    .line 226
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModIntro;->harness:Z

    if-eqz v0, :cond_9

    const-class v0, Lfr/testudo/spacecorsair/mod/ModLang;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 227
    :cond_9
    const-string v0, "Somewhere in Reaver space."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sWhere:Ljava/lang/String;

    .line 228
    const-string v0, "Pilot licence: LEVEL 25"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sLicence:Ljava/lang/String;

    .line 229
    const-string v0, "Hull: ALBATROS, line cruiser, three heavy turrets"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sHull:Ljava/lang/String;

    .line 230
    const-string v0, "BOUNTY"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sBounty:Ljava/lang/String;

    .line 231
    const-string v0, "BLOODFORGE"

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sTarget:Ljava/lang/String;

    .line 232
    const-string v0, "Reaver flagship, level 40"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sTargetRole:Ljava/lang/String;

    .line 233
    const-string v0, "2,000,000 cr"

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sReward:Ljava/lang/String;

    .line 234
    const-string v0, "Contract accepted."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sAccepted:Ljava/lang/String;

    .line 235
    const-string v0, "TAP TO SKIP"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sTapSkip:Ljava/lang/String;

    .line 236
    const-string v0, "TAP AGAIN TO SKIP"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sTapAgain:Ljava/lang/String;

    .line 237
    const-string v0, "SHIELD DOWN"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sShieldDown:Ljava/lang/String;

    .line 238
    const-string v0, "HULL CRITICAL"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sHullCrit:Ljava/lang/String;

    .line 239
    const-string v0, "FURNACE RAM"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sRam:Ljava/lang/String;

    .line 240
    const-string v0, "HULL LOST"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sHullLost:Ljava/lang/String;

    .line 241
    const-string v0, "BLOODFORGE  LV 40"

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sBossPlate:Ljava/lang/String;

    .line 242
    const-string v0, "ALBATROS  LV 25"

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sShipPlate:Ljava/lang/String;

    .line 243
    const-string v0, "HULL"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sHullBar:Ljava/lang/String;

    .line 244
    const-string v0, "SHIELD"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sShieldBar:Ljava/lang/String;

    .line 245
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Hull lost. Bounty void."

    .line 246
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A Genesis salvage crew pulled your escape pod out of the wreck."

    .line 247
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Licence revoked. Ship impounded. Savings seized for the recovery."

    .line 248
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Reinstated at the lowest rank, in a loaner hull."

    .line 249
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sCaps:[Ljava/lang/String;

    .line 251
    const-string v0, "GENESIS"

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sTitle1:Ljava/lang/String;

    .line 252
    const-string v0, "TUTORIAL SECTOR"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModIntro;->sTitle2:Ljava/lang/String;

    .line 253
    return-void
.end method

.method private static tex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFFFZFFFF)V
    .registers 21

    .prologue
    .line 892
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->cur:Ljavax/microedition/khronos/opengles/GL10;

    .line 893
    if-eqz v2, :cond_d

    if-eqz p0, :cond_d

    const v1, 0x3b03126f    # 0.002f

    cmpg-float v1, p9, v1

    if-gtz v1, :cond_e

    .line 914
    :cond_d
    :goto_d
    return-void

    .line 894
    :cond_e
    instance-of v1, p0, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    if-eqz v1, :cond_1c

    move-object v1, p0

    .line 895
    check-cast v1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;

    .line 896
    iget-boolean v3, v1, Lfr/testudo/spacecorsair/mod/ModArt$Lazy;->resident:Z

    if-eqz v3, :cond_d

    .line 897
    invoke-static {v2, v1}, Lfr/testudo/spacecorsair/mod/ModArt;->use(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/mod/ModArt$Lazy;)V

    .line 899
    :cond_1c
    const/16 v1, 0xde1

    invoke-interface {v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 900
    const/16 v1, 0xde1

    iget v3, p0, Lfr/testudo/spacecorsair/display/Texture;->name:I

    invoke-interface {v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 901
    const v1, 0x8078

    invoke-interface {v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 902
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    move/from16 v0, p11

    invoke-virtual {v1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    move/from16 v0, p12

    invoke-virtual {v1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    move/from16 v0, p13

    invoke-virtual {v1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    move/from16 v0, p12

    invoke-virtual {v1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    const/4 v3, 0x4

    move/from16 v0, p11

    invoke-virtual {v1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    const/4 v3, 0x5

    move/from16 v0, p14

    invoke-virtual {v1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    const/4 v3, 0x6

    move/from16 v0, p13

    invoke-virtual {v1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    const/4 v3, 0x7

    move/from16 v0, p14

    invoke-virtual {v1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 903
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 904
    if-eqz p10, :cond_7c

    const/16 v1, 0x302

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 905
    :cond_7c
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 906
    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    mul-float/2addr v1, p1

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    mul-float/2addr v3, p2

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->Z:F

    invoke-interface {v2, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 907
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v2, p5, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 908
    sget v1, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    mul-float/2addr v1, p3

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    mul-float/2addr v3, p4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v2, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 909
    invoke-interface {v2, p6, p7, p8, p9}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 910
    const/4 v1, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->QUAD:Ljava/nio/FloatBuffer;

    invoke-interface {v2, v1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 911
    const/4 v1, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->UV:Ljava/nio/FloatBuffer;

    invoke-interface {v2, v1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 912
    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-interface {v2, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 913
    if-eqz p10, :cond_d

    const/16 v1, 0x302

    const/16 v3, 0x303

    invoke-interface {v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto/16 :goto_d
.end method

.method private static text(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFFI)V
    .registers 20

    .prologue
    .line 935
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->cur:Ljavax/microedition/khronos/opengles/GL10;

    .line 936
    if-eqz v1, :cond_d

    if-eqz p0, :cond_d

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v2, p7, v2

    if-gtz v2, :cond_e

    .line 953
    :cond_d
    :goto_d
    return-void

    .line 939
    :cond_e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->textOut:Lfr/testudo/spacecorsair/mod/ModIntro$TextOut;

    if-eqz v2, :cond_46

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->textOut:Lfr/testudo/spacecorsair/mod/ModIntro$TextOut;

    invoke-interface {v2, p0, p3}, Lfr/testudo/spacecorsair/mod/ModIntro$TextOut;->width(Ljava/lang/String;Lfr/testudo/spacecorsair/textengine/TextSize;)F

    move-result v2

    .line 945
    :goto_18
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->midX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->midY:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->S:F

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    .line 946
    const/4 v5, 0x1

    move/from16 v0, p8

    if-ne v0, v5, :cond_51

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float/2addr v3, v2

    .line 948
    :cond_2d
    :goto_2d
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->textOut:Lfr/testudo/spacecorsair/mod/ModIntro$TextOut;

    if-eqz v2, :cond_58

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModIntro;->textOut:Lfr/testudo/spacecorsair/mod/ModIntro$TextOut;

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p7

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v1 .. v9}, Lfr/testudo/spacecorsair/mod/ModIntro$TextOut;->draw(Ljava/lang/String;FFLfr/testudo/spacecorsair/textengine/TextSize;FFFF)V

    goto :goto_d

    .line 941
    :cond_46
    invoke-static {p3}, Lfr/testudo/spacecorsair/mod/ModIntro;->font(Lfr/testudo/spacecorsair/textengine/TextSize;)Lfr/testudo/spacecorsair/textengine/GLText;

    move-result-object v2

    .line 942
    if-eqz v2, :cond_d

    .line 943
    invoke-virtual {v2, p0}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v2

    goto :goto_18

    .line 947
    :cond_51
    const/4 v5, 0x2

    move/from16 v0, p8

    if-ne v0, v5, :cond_2d

    sub-float/2addr v3, v2

    goto :goto_2d

    .line 949
    :cond_58
    float-to-int v3, v3

    float-to-int v4, v4

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p7

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v9, 0x1

    move-object v2, p0

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v10, p3

    invoke-static/range {v1 .. v10}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 950
    const v2, 0x8074

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 951
    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 952
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_d
.end method

.method public static touch(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    .line 127
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->active:Z

    if-nez v1, :cond_7

    const/4 v0, 0x0

    .line 137
    :cond_6
    :goto_6
    return v0

    .line 129
    :cond_7
    if-eqz p0, :cond_6

    :try_start_9
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_6

    .line 130
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    .line 131
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->lastTapT:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2b

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->lastTapT:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x9c4

    cmp-long v1, v4, v6

    if-gez v1, :cond_2b

    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->skipReq:Z

    goto :goto_6

    .line 134
    :catch_29
    move-exception v1

    goto :goto_6

    .line 132
    :cond_2b
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->lastTapT:J

    const/4 v1, 0x1

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModIntro;->skipHint:Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_30} :catch_29

    goto :goto_6
.end method

.method private static turn(FFF)F
    .registers 6

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 501
    sub-float v0, p1, p0

    rem-float/2addr v0, v2

    const/high16 v1, 0x44070000    # 540.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v2

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    .line 502
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_15

    .line 503
    :goto_14
    return p1

    :cond_15
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float p1, p0, v0

    goto :goto_14
.end method

.method private static update(J)V
    .registers 24

    .prologue
    .line 342
    move-wide/from16 v0, p0

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v19, v2, v3

    .line 344
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0xa28

    cmp-long v2, v2, v4

    if-gez v2, :cond_df

    const/high16 v2, -0x3b9f0000    # -900.0f

    .line 345
    :goto_11
    sget-boolean v3, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v3, :cond_25

    const/high16 v3, -0x3bf40000    # -560.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    sput v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    const/high16 v3, -0x3c9a0000    # -230.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    .line 347
    :cond_25
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x2328

    cmp-long v2, v2, v4

    if-ltz v2, :cond_45

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sWarp:Z

    if-nez v2, :cond_45

    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sWarp:Z

    const v2, 0x3f666666    # 0.9f

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->flash:F

    const-string v2, "warp_in"

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 348
    :cond_45
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x26ac

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5f

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sHorn:Z

    if-nez v2, :cond_5f

    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sHorn:Z

    const-string v2, "flagship_horn"

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 350
    :cond_5f
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x2328

    cmp-long v2, v2, v4

    if-gez v2, :cond_110

    const v2, 0x44a28000    # 1300.0f

    .line 360
    :cond_6a
    :goto_6a
    const/high16 v3, 0x44070000    # 540.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    sput v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    const/high16 v3, 0x43660000    # 230.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    .line 362
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x2328

    cmp-long v2, v2, v4

    if-gez v2, :cond_171

    const/high16 v2, 0x3f800000    # 1.0f

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->zoom:F

    .line 366
    :goto_86
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v4, 0x82dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_9e

    const/4 v2, 0x0

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->flash:F

    const v4, 0x3fcccccd    # 1.6f

    mul-float v4, v4, v19

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->flash:F

    .line 367
    :cond_9e
    const/4 v2, 0x0

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float v4, v4, v19

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    .line 368
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_199

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    mul-float/2addr v2, v3

    :goto_bf
    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeX:F

    .line 369
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    mul-float/2addr v2, v3

    :goto_d4
    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shakeY:F

    .line 371
    const-string v2, "albatros"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v2

    if-nez v2, :cond_19f

    .line 488
    :goto_de
    return-void

    .line 344
    :cond_df
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x12c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_fd

    const/high16 v2, -0x3b9f0000    # -900.0f

    const/high16 v3, 0x44610000    # 900.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0xa28

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x45098000    # 2200.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModIntro;->easeOut(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    goto/16 :goto_11

    :cond_fd
    const/high16 v2, 0x40c00000    # 6.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    long-to-double v4, v4

    const-wide v6, 0x408c200000000000L    # 900.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    goto/16 :goto_11

    .line 351
    :cond_110
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x2bc0

    cmp-long v2, v2, v4

    if-gez v2, :cond_12f

    const v2, 0x44a28000    # 1300.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x2328

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x45098000    # 2200.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModIntro;->easeOut(F)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    goto/16 :goto_6a

    .line 352
    :cond_12f
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_14a

    const/high16 v2, 0x41000000    # 8.0f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    long-to-double v4, v4

    const-wide v6, 0x4094500000000000L    # 1300.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    goto/16 :goto_6a

    .line 355
    :cond_14a
    const-wide v2, 0x4135b12000000000L    # 1421600.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x440ca000    # 562.5f

    sub-float/2addr v2, v3

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    .line 356
    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v2, v3

    .line 357
    neg-float v2, v2

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x7530

    sub-long/2addr v4, v6

    long-to-float v3, v4

    mul-float/2addr v2, v3

    .line 358
    const/high16 v3, -0x3ab80000    # -3200.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6a

    const/4 v3, 0x1

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bfGone:Z

    goto/16 :goto_6a

    .line 363
    :cond_171
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x2ee0

    cmp-long v2, v2, v4

    if-gez v2, :cond_192

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e19999a    # 0.15f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x2328

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x453b8000    # 3000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModIntro;->easeOut(F)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->zoom:F

    goto/16 :goto_86

    .line 364
    :cond_192
    const v2, 0x3f59999a    # 0.85f

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->zoom:F

    goto/16 :goto_86

    .line 368
    :cond_199
    const/4 v2, 0x0

    goto/16 :goto_bf

    .line 369
    :cond_19c
    const/4 v2, 0x0

    goto/16 :goto_d4

    .line 373
    :cond_19f
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v2, :cond_227

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0xa28

    cmp-long v2, v2, v4

    if-ltz v2, :cond_227

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x76c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_227

    .line 374
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_1b6
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_227

    .line 375
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    if-nez v16, :cond_224

    const/16 v2, -0xd

    :goto_1c5
    int-to-float v2, v2

    const/high16 v6, 0x44160000    # 600.0f

    mul-float/2addr v2, v6

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v2, v6

    const/high16 v6, 0x43600000    # 224.0f

    invoke-static {v3, v4, v5, v2, v6}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v4

    .line 376
    const/high16 v2, 0x435c0000    # 220.0f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v5, 0x42f00000    # 120.0f

    mul-float/2addr v3, v5

    add-float v6, v2, v3

    .line 377
    const-string v2, "fx_fire"

    const/4 v3, 0x0

    aget v3, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    neg-float v5, v5

    mul-float/2addr v5, v6

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    neg-float v7, v7

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x43820000    # 260.0f

    const/high16 v8, 0x41d00000    # 26.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f266666    # 0.65f

    const v12, 0x3e99999a    # 0.3f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModIntro;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 374
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_1b6

    .line 375
    :cond_224
    const/16 v2, 0xd

    goto :goto_1c5

    .line 380
    :cond_227
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x24b8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2c1

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfGone:Z

    if-nez v2, :cond_2c1

    .line 381
    const/16 v2, 0x8

    new-array v0, v2, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_938

    .line 382
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_23f
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_2c1

    .line 383
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    mul-int/lit8 v5, v16, 0x2

    aget v5, v17, v5

    const v6, 0x449c4000    # 1250.0f

    mul-float/2addr v5, v6

    mul-int/lit8 v6, v16, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v17, v6

    const v7, 0x449c4000    # 1250.0f

    mul-float/2addr v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v4

    .line 384
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x7530

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2bd

    const v2, 0x400ccccd    # 2.2f

    move v8, v2

    .line 385
    :goto_26c
    const/high16 v2, 0x43820000    # 260.0f

    mul-float/2addr v2, v8

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v5, 0x42f00000    # 120.0f

    mul-float/2addr v3, v5

    add-float v6, v2, v3

    .line 386
    const-string v2, "fx_fire"

    const/4 v3, 0x0

    aget v3, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    mul-float/2addr v5, v6

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v7, v9

    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v7, v9

    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    const/high16 v9, 0x42380000    # 46.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3e4ccccd    # 0.2f

    const v13, 0x3f733333    # 0.95f

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModIntro;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 382
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_23f

    .line 384
    :cond_2bd
    const/high16 v2, 0x3f800000    # 1.0f

    move v8, v2

    goto :goto_26c

    .line 390
    :cond_2c1
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v2, :cond_35b

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x30d4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_35b

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x6978

    cmp-long v2, v2, v4

    if-gez v2, :cond_35b

    .line 391
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->nextBolt:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_35b

    .line 392
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x8c

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->nextBolt:J

    .line 393
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x8c

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3

    rem-long/2addr v2, v4

    long-to-int v2, v2

    .line 394
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->CR_PADS:[F

    mul-int/lit8 v7, v2, 0x2

    aget v6, v6, v7

    const/high16 v7, 0x44160000    # 600.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->CR_PADS:[F

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v7, v2

    const/high16 v7, 0x44160000    # 600.0f

    mul-float/2addr v2, v7

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v2, v7

    invoke-static {v3, v4, v5, v6, v2}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v4

    .line 395
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    const v7, 0x3e6147ae    # 0.22f

    mul-float/2addr v6, v7

    const v7, 0x449c4000    # 1250.0f

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const v8, 0x3f19999a    # 0.6f

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    const v8, 0x449c4000    # 1250.0f

    mul-float/2addr v7, v8

    invoke-static {v2, v3, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v2

    .line 396
    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v3, 0x1

    aget v6, v2, v3

    .line 397
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v4, v3

    const/4 v7, 0x1

    aget v4, v4, v7

    const/high16 v7, 0x43be0000    # 380.0f

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->shot(IFFFFF)V

    .line 398
    const-string v2, "gun_medium"

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f8ccccd    # 1.1f

    const-wide/16 v6, 0x78

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 401
    :cond_35b
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v2, :cond_3f9

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x3458

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3f9

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_3f9

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->nextShell:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3f9

    .line 402
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x4c2c

    cmp-long v2, v2, v6

    if-gez v2, :cond_5a3

    const/16 v2, 0x334

    :goto_383
    int-to-long v2, v2

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->nextShell:J

    .line 403
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shellSide:I

    .line 404
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shellSide:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x8

    sput v3, Lfr/testudo/spacecorsair/mod/ModIntro;->shellSide:I

    .line 405
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->BF_PADS:[F

    mul-int/lit8 v7, v2, 0x2

    aget v6, v6, v7

    const v7, 0x449c4000    # 1250.0f

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->BF_PADS:[F

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v7, v2

    const v7, 0x449c4000    # 1250.0f

    mul-float/2addr v2, v7

    invoke-static {v3, v4, v5, v6, v2}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v4

    .line 406
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v6, v7

    const/high16 v7, 0x44160000    # 600.0f

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    const/high16 v8, 0x44160000    # 600.0f

    mul-float/2addr v7, v8

    invoke-static {v2, v3, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v2

    .line 407
    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v3, 0x1

    aget v6, v2, v3

    .line 408
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget v3, v4, v3

    const/4 v7, 0x1

    aget v4, v4, v7

    const v7, 0x44228000    # 650.0f

    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->shot(IFFFFF)V

    .line 409
    const-string v2, "gun_heavy"

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3f4ccccd    # 0.8f

    const-wide/16 v6, 0xc8

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 411
    :cond_3f9
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x4c2c

    cmp-long v2, v2, v4

    if-ltz v2, :cond_42f

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sShield:Z

    if-nez v2, :cond_42f

    .line 412
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sShield:Z

    .line 413
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shield:F

    .line 414
    const-string v2, "shield_down"

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 415
    const-string v2, "vfx_shield_bubble"

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    const v5, 0x443b8000    # 750.0f

    const-wide/16 v6, 0x1f4

    const v8, 0x3ee66666    # 0.45f

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 417
    :cond_42f
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x5dc0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_44a

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sAlarm:Z

    if-nez v2, :cond_44a

    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sAlarm:Z

    const-string v2, "hull_alarm"

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 419
    :cond_44a
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v2, :cond_4d8

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->hull:F

    const v3, 0x3f0ccccd    # 0.55f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4d8

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->nextSmoke:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4d8

    .line 420
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x6e

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->nextSmoke:J

    .line 421
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const/high16 v3, 0x44160000    # 600.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v14, v2, v3

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const/high16 v3, 0x44160000    # 600.0f

    mul-float/2addr v2, v3

    const v3, 0x3f19999a    # 0.6f

    mul-float v15, v2, v3

    .line 422
    const-string v2, "fx_smoke_sheet"

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    add-float/2addr v3, v14

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    add-float/2addr v4, v15

    const/high16 v5, 0x43340000    # 180.0f

    const-wide/16 v6, 0x578

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/16 v13, 0x10

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 423
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->hull:F

    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4d8

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4d8

    const-string v2, "fx_fire_sheet"

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v14

    add-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v15

    add-float/2addr v4, v5

    const/high16 v5, 0x42f00000    # 120.0f

    const-wide/16 v6, 0x2bc

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f19999a    # 0.6f

    const/high16 v10, 0x3e800000    # 0.25f

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/16 v13, 0x10

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 426
    :cond_4d8
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x6978

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4f2

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sLane:Z

    if-nez v2, :cond_4f2

    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sLane:Z

    const-string v2, "titan_throne"

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 427
    :cond_4f2
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_511

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sCharge:Z

    if-nez v2, :cond_511

    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sCharge:Z

    const-string v2, "flagship_horn"

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    const/high16 v2, 0x41200000    # 10.0f

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    .line 428
    :cond_511
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5a7

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfGone:Z

    if-nez v2, :cond_5a7

    .line 429
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_520
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5a7

    .line 430
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    const v6, 0x449c4000    # 1250.0f

    mul-float/2addr v5, v6

    const v6, 0x3dcccccd    # 0.1f

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const v7, 0x449c4000    # 1250.0f

    mul-float/2addr v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v4

    .line 431
    const/high16 v2, 0x43480000    # 200.0f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v3, v5

    add-float v6, v2, v3

    .line 432
    const-string v2, "fx_fire"

    const/4 v3, 0x0

    aget v3, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    mul-float/2addr v5, v6

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    const/high16 v8, 0x42700000    # 60.0f

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    sget v7, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    const/high16 v8, 0x42700000    # 60.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x442f0000    # 700.0f

    const/high16 v8, 0x428c0000    # 70.0f

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3ee66666    # 0.45f

    const v12, 0x3e19999a    # 0.15f

    const v13, 0x3f333333    # 0.7f

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModIntro;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 429
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto/16 :goto_520

    .line 402
    :cond_5a3
    const/16 v2, 0x230

    goto/16 :goto_383

    .line 435
    :cond_5a7
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x76c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_770

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sImpact:Z

    if-nez v2, :cond_770

    .line 436
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sImpact:Z

    .line 437
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    .line 438
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->hull:F

    .line 439
    const/high16 v2, 0x3f800000    # 1.0f

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->flash:F

    .line 440
    const/high16 v2, 0x42340000    # 45.0f

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    .line 441
    const-string v2, "titan_blast"

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 442
    const-string v2, "hull_breach"

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 443
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    const/high16 v4, 0x44160000    # 600.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1x:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    const/high16 v4, 0x44160000    # 600.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1y:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1r:F

    .line 444
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    const/high16 v4, 0x44160000    # 600.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2x:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    const/high16 v4, 0x44160000    # 600.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2y:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2r:F

    .line 445
    const-string v2, "fx_explosion_big_sheet"

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    const/high16 v5, 0x44700000    # 960.0f

    const-wide/16 v6, 0x44c

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f400000    # 0.75f

    const v10, 0x3ee66666    # 0.45f

    const/4 v11, 0x1

    const/16 v12, 0x8

    const/16 v13, 0x40

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 446
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_632
    const/16 v2, 0x10

    move/from16 v0, v18

    if-ge v0, v2, :cond_6c6

    .line 447
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x40c90ff9

    mul-float v6, v2, v3

    const/high16 v2, 0x430c0000    # 140.0f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x43d20000    # 420.0f

    mul-float/2addr v3, v4

    add-float v7, v2, v3

    .line 448
    const-string v2, "debris_sheet"

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    const/high16 v5, 0x42f00000    # 120.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    const/high16 v8, 0x43960000    # 300.0f

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v7

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    const/16 v8, 0x578

    .line 449
    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v7, v7, 0xa28

    int-to-float v7, v7

    const/high16 v8, 0x41e00000    # 28.0f

    sget-object v9, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const/high16 v10, 0x42300000    # 44.0f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x41a00000    # 20.0f

    const v10, 0x3f0ccccd    # 0.55f

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3ef5c28f    # 0.48f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x1

    sget-object v16, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Random;->nextFloat()F

    move-result v16

    const/high16 v17, 0x3f000000    # 0.5f

    sub-float v16, v16, v17

    const/high16 v17, 0x43fa0000    # 500.0f

    mul-float v16, v16, v17

    sget-object v17, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    const/16 v20, 0x10

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v17

    .line 448
    invoke-static/range {v2 .. v17}, Lfr/testudo/spacecorsair/mod/ModIntro;->part(Ljava/lang/String;FFFFFFFFFFFZZFI)V

    .line 446
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_632

    .line 451
    :cond_6c6
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_6c9
    const/16 v2, 0x28

    move/from16 v0, v16

    if-ge v0, v2, :cond_71e

    .line 452
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x40c90ff9

    mul-float v6, v2, v3

    const/high16 v2, 0x43960000    # 300.0f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x442f0000    # 700.0f

    mul-float/2addr v3, v4

    add-float v7, v2, v3

    .line 453
    const-string v2, "fx_spark"

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v7

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    const/16 v8, 0x1f4

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v7, v7, 0x1f4

    int-to-float v7, v7

    const/high16 v8, 0x41b00000    # 22.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f4ccccd    # 0.8f

    const v12, 0x3ee66666    # 0.45f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModIntro;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 451
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_6c9

    .line 455
    :cond_71e
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_721
    const/16 v2, 0xa

    move/from16 v0, v16

    if-ge v0, v2, :cond_770

    .line 456
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x40c90ff9

    mul-float v6, v2, v3

    const/high16 v2, 0x42700000    # 60.0f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v3, v4

    add-float v7, v2, v3

    .line 457
    const-string v2, "fx_smoke"

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v7

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v6, v7

    const v7, 0x451c4000    # 2500.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x43820000    # 260.0f

    const v10, 0x3eb33333    # 0.35f

    const v11, 0x3ea8f5c3    # 0.33f

    const v12, 0x3ea3d70a    # 0.32f

    const v13, 0x3f333333    # 0.7f

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModIntro;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 455
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_721

    .line 460
    :cond_770
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-eqz v2, :cond_84d

    .line 462
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1x:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    neg-float v3, v3

    const/high16 v4, 0x42dc0000    # 110.0f

    mul-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, v19

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1x:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1y:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    const/high16 v4, 0x42dc0000    # 110.0f

    mul-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, v19

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1y:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1r:F

    const/high16 v3, 0x41e00000    # 28.0f

    mul-float v3, v3, v19

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h1r:F

    .line 463
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2x:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    const/high16 v4, 0x42b40000    # 90.0f

    mul-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    const/high16 v5, 0x42200000    # 40.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float v3, v3, v19

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2x:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2y:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->dx:F

    neg-float v3, v3

    const/high16 v4, 0x42b40000    # 90.0f

    mul-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->dy:F

    const/high16 v5, 0x42200000    # 40.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float v3, v3, v19

    add-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2y:F

    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2r:F

    const/high16 v3, 0x41b00000    # 22.0f

    mul-float v3, v3, v19

    sub-float/2addr v2, v3

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->h2r:F

    .line 464
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->nextBoom:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_84d

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v4, 0x82dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_84d

    .line 465
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x1a4

    add-long/2addr v2, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->nextBoom:J

    .line 466
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v14

    .line 467
    const-string v2, "fx_explosion_big_sheet"

    if-eqz v14, :cond_8c0

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->h1x:F

    :goto_7fe
    if-eqz v14, :cond_8c4

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->h1y:F

    :goto_802
    const/high16 v5, 0x44160000    # 600.0f

    const v6, 0x3eb33333    # 0.35f

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->rnd:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x320

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f333333    # 0.7f

    const v10, 0x3ecccccd    # 0.4f

    const/4 v11, 0x1

    const/16 v12, 0x8

    const/16 v13, 0x40

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 468
    const-string v2, "fx_smoke_sheet"

    if-eqz v14, :cond_8c8

    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->h1x:F

    :goto_82b
    if-eqz v14, :cond_8cc

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->h1y:F

    :goto_82f
    const/high16 v5, 0x43960000    # 300.0f

    const-wide/16 v6, 0x708

    const v8, 0x3ee66666    # 0.45f

    const v9, 0x3ee66666    # 0.45f

    const v10, 0x3ee66666    # 0.45f

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/16 v13, 0x10

    invoke-static/range {v2 .. v13}, Lfr/testudo/spacecorsair/mod/ModIntro;->boom(Ljava/lang/String;FFFJFFFZII)V

    .line 469
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModIntro;->shake:F

    .line 472
    :cond_84d
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v4, 0x88b8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_869

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sFail:Z

    if-nez v2, :cond_869

    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModIntro;->sFail:Z

    const-string v2, "mission_fail"

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 474
    :cond_869
    const/4 v2, 0x0

    move v3, v2

    :goto_86b
    const/4 v2, 0x3

    if-ge v3, v2, :cond_8d3

    .line 475
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->CR_PADS:[F

    mul-int/lit8 v7, v3, 0x2

    aget v6, v6, v7

    const/high16 v7, 0x44160000    # 600.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->CR_PADS:[F

    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    const/high16 v8, 0x44160000    # 600.0f

    mul-float/2addr v7, v8

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    invoke-static {v2, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v2

    .line 476
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x2580

    cmp-long v4, v4, v6

    if-ltz v4, :cond_8d0

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v4, :cond_8d0

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v2, v2, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    invoke-static {v4, v2, v5, v6}, Lfr/testudo/spacecorsair/mod/ModIntro;->aim(FFFF)F

    move-result v2

    .line 477
    :goto_8ac
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->crAim:[F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->crAim:[F

    aget v5, v5, v3

    const/high16 v6, 0x43200000    # 160.0f

    mul-float v6, v6, v19

    invoke-static {v5, v2, v6}, Lfr/testudo/spacecorsair/mod/ModIntro;->turn(FFF)F

    move-result v2

    aput v2, v4, v3

    .line 474
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_86b

    .line 467
    :cond_8c0
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->h2x:F

    goto/16 :goto_7fe

    :cond_8c4
    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->h2y:F

    goto/16 :goto_802

    .line 468
    :cond_8c8
    sget v3, Lfr/testudo/spacecorsair/mod/ModIntro;->h2x:F

    goto/16 :goto_82b

    :cond_8cc
    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->h2y:F

    goto/16 :goto_82f

    .line 476
    :cond_8d0
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->crSpin:F

    goto :goto_8ac

    .line 479
    :cond_8d3
    const/4 v2, 0x0

    move v3, v2

    :goto_8d5
    const/16 v2, 0x8

    if-ge v3, v2, :cond_92a

    .line 480
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfX:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bfY:F

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModIntro;->BF_PADS:[F

    mul-int/lit8 v7, v3, 0x2

    aget v6, v6, v7

    const v7, 0x449c4000    # 1250.0f

    mul-float/2addr v6, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModIntro;->BF_PADS:[F

    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    const v8, 0x449c4000    # 1250.0f

    mul-float/2addr v7, v8

    invoke-static {v2, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/ModIntro;->local(FFFFF)[F

    move-result-object v2

    .line 481
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v6, 0x2904

    cmp-long v4, v4, v6

    if-ltz v4, :cond_927

    sget-boolean v4, Lfr/testudo/spacecorsair/mod/ModIntro;->wrecked:Z

    if-nez v4, :cond_927

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v2, v2, v5

    sget v5, Lfr/testudo/spacecorsair/mod/ModIntro;->crX:F

    sget v6, Lfr/testudo/spacecorsair/mod/ModIntro;->crY:F

    invoke-static {v4, v2, v5, v6}, Lfr/testudo/spacecorsair/mod/ModIntro;->aim(FFFF)F

    move-result v2

    .line 482
    :goto_913
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModIntro;->bfAim:[F

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModIntro;->bfAim:[F

    aget v5, v5, v3

    const/high16 v6, 0x42b40000    # 90.0f

    mul-float v6, v6, v19

    invoke-static {v5, v2, v6}, Lfr/testudo/spacecorsair/mod/ModIntro;->turn(FFF)F

    move-result v2

    aput v2, v4, v3

    .line 479
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8d5

    .line 481
    :cond_927
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->bfSpin:F

    goto :goto_913

    .line 484
    :cond_92a
    invoke-static/range {v19 .. v19}, Lfr/testudo/spacecorsair/mod/ModIntro;->stepShots(F)V

    .line 485
    invoke-static/range {v19 .. v19}, Lfr/testudo/spacecorsair/mod/ModIntro;->stepParts(F)V

    .line 486
    invoke-static/range {p0 .. p1}, Lfr/testudo/spacecorsair/mod/ModIntro;->stepBooms(J)V

    .line 487
    invoke-static/range {v19 .. v19}, Lfr/testudo/spacecorsair/mod/ModIntro;->stepStars(F)V

    goto/16 :goto_de

    .line 381
    :array_938
    .array-data 4
        -0x42666666    # -0.075f
        0x3ed70a3d    # 0.42f
        -0x43333333    # -0.025f
        0x3edc28f6    # 0.43f
        0x3ccccccd    # 0.025f
        0x3edc28f6    # 0.43f
        0x3d99999a    # 0.075f
        0x3ed70a3d    # 0.42f
    .end array-data
.end method

.method private static veil()F
    .registers 12

    .prologue
    const-wide/16 v10, 0x15e

    const-wide/32 v8, 0x82dc

    const v6, 0x44bb8000    # 1500.0f

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 327
    sget v2, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    if-ltz v2, :cond_35

    .line 328
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sget v4, Lfr/testudo/spacecorsair/mod/ModIntro;->skipFromT:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 329
    cmp-long v4, v2, v10

    if-gez v4, :cond_2a

    long-to-float v2, v2

    const/high16 v3, 0x43af0000    # 350.0f

    div-float/2addr v2, v3

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_28

    :goto_23
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 337
    :cond_27
    :goto_27
    return v1

    :cond_28
    move v0, v1

    .line 329
    goto :goto_23

    .line 330
    :cond_2a
    sub-long/2addr v2, v10

    long-to-float v2, v2

    const/high16 v3, 0x442f0000    # 700.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_27

    .line 332
    :cond_35
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_45

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    long-to-float v2, v2

    div-float/2addr v2, v6

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    goto :goto_27

    .line 333
    :cond_45
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0xa28

    cmp-long v2, v2, v4

    if-gez v2, :cond_5a

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/16 v4, 0x5dc

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x44898000    # 1100.0f

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    goto :goto_27

    .line 334
    :cond_5a
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    cmp-long v2, v2, v8

    if-ltz v2, :cond_27

    .line 335
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v4, 0x88b8

    cmp-long v2, v2, v4

    if-gez v2, :cond_70

    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    sub-long/2addr v0, v8

    long-to-float v0, v0

    div-float v1, v0, v6

    goto :goto_27

    .line 336
    :cond_70
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v4, 0xb478

    cmp-long v2, v2, v4

    if-gez v2, :cond_7b

    move v1, v0

    goto :goto_27

    .line 337
    :cond_7b
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModIntro;->t:J

    const-wide/32 v4, 0xb478

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_27
.end method
