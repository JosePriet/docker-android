.class public final Lfr/testudo/spacecorsair/mod/ModCcef;
.super Ljava/lang/Object;
.source "ModCcef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModCcef$Tint;
    }
.end annotation


# static fields
.field public static final ACH:Ljava/lang/String; = "escapeCertainDeath"

.field public static final AI:Z = true

.field static final B:F = 1.0f

.field public static final CLEARS_PER_EXTRA:I = 0x2

.field public static final DMG_TAKEN:F = 0.5f

.field public static final EVADE_KILLS:I = 0x2

.field static final G:F = 0.9f

.field static final HUNT:I = 0x3

.field static final NONE:I = 0x0

.field public static final ON:Z = true

.field static final PENDING:I = 0x1

.field public static final PLAYER_AGILITY:F = 1.1f

.field public static final PLAYER_DMG:F = 1.15f

.field public static final PREY_CHANCE:F = 0.5f

.field public static final PREY_CHECK_MS:J = 0xbb8L

.field public static final PREY_RANGE:F = 1500.0f

.field static final R:F = 0.25f

.field public static final REWARD_ALIEN:I = 0x14

.field public static final REWARD_CREDITS:I = 0x989680

.field public static final REWARD_FACTION_CORES:I = 0x2

.field public static final REWARD_NEUTRAL_CORES:I = 0xa

.field public static final SCALE_PER_CLEAR:F = 1.05f

.field public static final SPEED:F = 1.35f

.field static final SQUAD:[I

.field public static final SURVIVE_MS:J = 0x1d4c0L

.field static final TINT_B:F = 0.68f

.field static final TINT_G:F = 0.62f

.field static final TINT_R:F = 0.56f

.field public static final TURN:F = 1.3f

.field static final WARP:I = 0x2

.field public static final WARP_IN_MS:J = 0x4e20L

.field public static final WARP_MULT:F = 1.5f

.field private static achGiven:Z

.field private static final at:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static clock:J

.field private static diedSinceTitan:Z

.field private static fi:I

.field private static final goal:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static guestPrime:Z

.field private static kills:I

.field private static landed:Z

.field private static lastLevel:Ljava/lang/Object;

.field private static final lb:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static lv:I

.field private static phase:I

.field private static final portals:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/world/Portal;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static preyScan:J

.field private static restored:Z

.field private static shotScan:J

.field private static final shots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/projectiles/Projectile;",
            ">;"
        }
    .end annotation
.end field

.field private static slowTimer:J

.field private static final squad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;"
        }
    .end annotation
.end field

.field private static final st:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "[F>;"
        }
    .end annotation
.end field

.field private static testOn:Z

.field private static final tints:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/display/Drawable;",
            "Lfr/testudo/spacecorsair/mod/ModCcef$Tint;",
            ">;"
        }
    .end annotation
.end field

.field private static titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

.field private static titanToLand:Z

.field private static final toLand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final txt:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static warpLeft:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_56

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->SQUAD:[I

    .line 138
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 141
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    .line 149
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    .line 150
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    .line 662
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->tints:Ljava/util/WeakHashMap;

    .line 686
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 721
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->txt:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void

    .line 76
    nop

    :array_56
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static achText(Lfr/testudo/spacecorsair/game/achievements/Achievement;Z)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 754
    if-eqz p0, :cond_f

    :try_start_3
    const-string v1, "escapeCertainDeath"

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 757
    :cond_f
    :goto_f
    return-object v0

    .line 755
    :cond_10
    if-eqz p1, :cond_19

    const-string v1, "Survive a CCEF hunt for 120 seconds, or destroy the squad."

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_19
    const-string v1, "Escape from Certain Death"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_f

    .line 756
    :catch_20
    move-exception v1

    goto :goto_f
.end method

.method private static achieve()V
    .registers 3

    .prologue
    .line 744
    :try_start_0
    const-string v0, "escapeCertainDeath"

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/achievements/Achievement;

    move-result-object v0

    .line 745
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->done:Z

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 749
    :cond_d
    :goto_d
    return-void

    .line 746
    :catch_e
    move-exception v0

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "achievement missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static ai(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;J)Z
    .registers 16

    .prologue
    .line 591
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    .line 614
    :goto_11
    return v0

    .line 593
    :cond_12
    :try_start_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 594
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 595
    if-eqz v5, :cond_22

    iget-boolean v1, v5, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v1, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_11

    .line 596
    :cond_24
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    const v2, 0x3f0ccccd    # 0.55f

    mul-float v3, v1, v2

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    .line 597
    iget-boolean v2, v5, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v2, :cond_39

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne v5, v2, :cond_e2

    :cond_39
    const/4 v2, 0x1

    .line 598
    :goto_3a
    if-eqz v2, :cond_107

    sget v2, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->evasive(I)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 599
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModView;->radius()F

    move-result v2

    const v4, 0x3f59999a    # 0.85f

    div-float/2addr v2, v4

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v2, v4

    .line 600
    const/4 v4, 0x1

    aget v6, v0, v4

    long-to-float v7, p1

    sub-float/2addr v6, v7

    aput v6, v0, v4

    .line 601
    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_82

    const/4 v6, 0x0

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_e5

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_71
    aput v4, v0, v6

    const/4 v6, 0x1

    const/4 v4, 0x0

    aget v4, v0, v4

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_e7

    const v4, 0x451c4000    # 2500.0f

    :goto_80
    aput v4, v0, v6

    .line 602
    :cond_82
    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    const v6, 0x3f733333    # 0.95f

    mul-float/2addr v4, v6

    cmpl-float v4, v4, v2

    if-lez v4, :cond_f7

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v1, v3

    .line 605
    :goto_92
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v6, v2, v1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->rangePoint(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FF)V

    .line 607
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    .line 608
    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 609
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    neg-float v2, v2

    div-float/2addr v2, v3

    const/high16 v5, 0x43820000    # 260.0f

    mul-float/2addr v2, v5

    const/4 v5, 0x3

    aget v5, v0, v5

    mul-float/2addr v2, v5

    div-float/2addr v1, v3

    const/high16 v3, 0x43820000    # 260.0f

    mul-float/2addr v1, v3

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v1, v3

    invoke-virtual {v4, v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 610
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x4101999a    # 8.1f

    invoke-static {p0, v1, p1, p2, v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->steer(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;JF)V

    .line 611
    invoke-static {p0, v0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModCcef;->dodge(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[FJ)V

    .line 612
    const/4 v0, 0x1

    goto/16 :goto_11

    .line 597
    :cond_e2
    const/4 v2, 0x0

    goto/16 :goto_3a

    .line 601
    :cond_e5
    const/4 v4, 0x0

    goto :goto_71

    :cond_e7
    const v4, 0x453b8000    # 3000.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x409f400000000000L    # 2000.0

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v4, v7

    goto :goto_80

    .line 603
    :cond_f7
    const/4 v4, 0x0

    aget v4, v0, v4
    :try_end_fa
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_fa} :catch_103

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_107

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v1, v2

    goto :goto_92

    .line 613
    :catch_103
    move-exception v0

    .line 614
    const/4 v0, 0x0

    goto/16 :goto_11

    :cond_107
    move v2, v3

    goto :goto_92
.end method

.method private static aim(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;ILfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 538
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 539
    if-nez v0, :cond_e

    .line 557
    :cond_d
    :goto_d
    return-void

    .line 540
    :cond_e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->guest()Lfr/testudo/spacecorsair/business/Element;

    move-result-object v4

    .line 541
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->guestPrime:Z

    if-eqz v1, :cond_89

    if-eqz v4, :cond_89

    move-object v2, p2

    move-object v1, v4

    .line 542
    :goto_1a
    if-eqz v2, :cond_23

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModCcef;->secondarySlot(I)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object v1, v2

    .line 543
    :cond_23
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 544
    if-eqz v4, :cond_83

    if-eq v4, p2, :cond_83

    if-eq v4, v2, :cond_83

    instance-of v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_83

    iget-boolean v2, v4, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_83

    iget v2, v4, Lfr/testudo/spacecorsair/business/Element;->life:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_83

    move v2, v3

    .line 545
    :goto_3a
    aget v5, v0, v7

    long-to-float v6, p3

    sub-float/2addr v5, v6

    aput v5, v0, v7

    .line 546
    aget v5, v0, v7

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_79

    .line 547
    const v5, 0x453b8000    # 3000.0f

    aput v5, v0, v7

    .line 548
    if-nez v2, :cond_79

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v6, v8

    if-gez v0, :cond_79

    .line 549
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->prey(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_79

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prey "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    move v2, v3

    .line 553
    :cond_79
    if-nez v2, :cond_d

    if-eq v4, v1, :cond_d

    .line 554
    if-ne v1, p2, :cond_85

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_d

    .line 544
    :cond_83
    const/4 v2, 0x0

    goto :goto_3a

    .line 555
    :cond_85
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_d

    :cond_89
    move-object v2, v4

    move-object v1, p2

    goto :goto_1a
.end method

.method private static arrival(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 7

    .prologue
    .line 309
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, -0x3ab80000    # -3200.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method private static boost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 3

    .prologue
    const v1, 0x3f8ccccd    # 1.1f

    .line 419
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityDuree:I

    if-lez v0, :cond_d

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 420
    :cond_d
    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityValue:F

    .line 421
    const/16 v0, 0xfa

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityDuree:I

    .line 423
    :cond_13
    return-void
.end method

.method public static calm(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)Z
    .registers 7

    .prologue
    const/high16 v5, 0x45fa0000    # 8000.0f

    .line 492
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p0, :cond_1c

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCapitals;->cap(Ljava/lang/Object;)Lfr/testudo/spacecorsair/mod/ModCapitals$Cap;

    move-result-object v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x0

    .line 507
    :goto_1d
    return v0

    .line 494
    :cond_1e
    :try_start_1e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 495
    const/4 v1, 0x0

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 496
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 497
    if-eqz v0, :cond_65

    .line 498
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->subtract(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 499
    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 500
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v3, v0

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float v0, v4, v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 501
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 503
    :cond_65
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onChaseStop()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_68} :catch_6a

    .line 507
    :goto_68
    const/4 v0, 0x1

    goto :goto_1d

    .line 504
    :catch_6a
    move-exception v0

    goto :goto_68
.end method

.method public static chase()Z
    .registers 2

    .prologue
    .line 155
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static clearPolice()V
    .registers 5

    .prologue
    .line 477
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 478
    iget-object v3, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 479
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 480
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 481
    if-eqz v0, :cond_28

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_28

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 479
    :cond_28
    :goto_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 482
    :cond_2c
    const/4 v4, 0x1

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 483
    iget-object v4, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_28

    .line 485
    :catch_35
    move-exception v0

    .line 488
    :cond_36
    return-void
.end method

.method static clears()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 763
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 764
    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const-string v2, "ccef_clears"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_7
.end method

.method public static damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 428
    :try_start_1
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p2, :cond_14

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_14

    if-eqz p0, :cond_14

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_15

    .line 433
    :cond_14
    :goto_14
    return p1

    .line 429
    :cond_15
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_23

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 430
    :cond_23
    :goto_23
    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_14

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 431
    const/4 v0, 0x1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->playerHit(FZZ)F
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_37} :catch_3b

    move-result p1

    goto :goto_14

    .line 429
    :cond_39
    const/4 v0, 0x0

    goto :goto_23

    .line 432
    :catch_3b
    move-exception v0

    goto :goto_14
.end method

.method private static dodge(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[FJ)V
    .registers 14

    .prologue
    .line 629
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    add-float v2, v0, v1

    .line 630
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c0

    .line 631
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 632
    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    if-eqz v3, :cond_27

    .line 630
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 633
    :cond_27
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v5

    .line 634
    iget-object v5, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v5, v6

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v6, v0, v6

    .line 635
    mul-float v0, v5, v5

    mul-float v7, v6, v6

    add-float/2addr v0, v7

    .line 636
    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, v0, v7

    if-ltz v7, :cond_23

    .line 637
    mul-float v7, v3, v5

    mul-float v8, v4, v6

    add-float/2addr v7, v8

    div-float/2addr v7, v0

    .line 638
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_23

    const/high16 v8, 0x42a00000    # 80.0f

    cmpl-float v8, v7, v8

    if-gtz v8, :cond_23

    .line 639
    mul-float v8, v5, v7

    sub-float/2addr v3, v8

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    .line 640
    mul-float v7, v3, v3

    mul-float v8, v4, v4

    add-float/2addr v7, v8

    mul-float v8, v2, v2

    const/high16 v9, 0x40100000    # 2.25f

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_23

    .line 641
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 642
    neg-float v0, v6

    mul-float/2addr v0, v3

    mul-float v2, v4, v5

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_c1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 643
    :goto_8e
    const/high16 v2, 0x3f800000    # 1.0f

    long-to-float v3, p2

    const/high16 v4, 0x42f00000    # 120.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40600000    # 3.5f

    mul-float/2addr v2, v3

    const v3, 0x3faccccd    # 1.35f

    mul-float/2addr v2, v3

    .line 644
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    neg-float v4, v6

    div-float/2addr v4, v1

    mul-float/2addr v4, v2

    mul-float/2addr v4, v0

    div-float v1, v5, v1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {v3, v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 645
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gez v0, :cond_c0

    const/4 v0, 0x3

    const/4 v1, 0x3

    aget v1, p1, v1

    neg-float v1, v1

    aput v1, p1, v0

    .line 648
    :cond_c0
    return-void

    .line 642
    :cond_c1
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_8e
.end method

.method public static doomScale(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 2

    .prologue
    .line 439
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_e
    return v0

    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_e
.end method

.method static drawOver(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 14

    .prologue
    const v8, 0x3f19999a    # 0.6f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 725
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-eqz v0, :cond_f

    .line 739
    :cond_e
    :goto_e
    return-void

    .line 727
    :cond_f
    const-wide/16 v0, 0x0

    :try_start_11
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    const-wide/16 v4, 0x3e7

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HOSTILE WARP SIGNATURES: "

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 729
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 730
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->txt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    neg-float v0, v0

    mul-float v2, p1, v8

    const/high16 v4, 0x42200000    # 40.0f

    add-float/2addr v2, v4

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 731
    const v0, 0x3ecccccd    # 0.4f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v0, v1

    add-float v7, v8, v0

    .line 732
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->txt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 733
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    long-to-float v0, v0

    const v1, 0x469c4000    # 20000.0f

    div-float/2addr v0, v1

    sub-float/2addr v9, v0

    .line 734
    const-string v0, "marker_hostile"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x44160000    # 600.0f

    const/high16 v4, 0x44c80000    # 1600.0f

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    const/high16 v4, 0x44160000    # 600.0f

    const/high16 v5, 0x44c80000    # 1600.0f

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-float v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    const v7, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f800000    # 1.0f

    const v10, 0x3eb33333    # 0.35f

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v9, v11

    add-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 735
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fb47ae147ae147bL    # 0.08

    cmpg-double v0, v0, v2

    if-gez v0, :cond_e

    const-string v0, "fx_shock"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, -0x3c060000    # -500.0f

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v2

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, -0x3c060000    # -500.0f

    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModFx;->rnd(FF)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x43fa0000    # 500.0f

    const/high16 v4, 0x43fa0000    # 500.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3e800000    # 0.25f

    const v7, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f19999a    # 0.6f

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_eb} :catch_ed

    goto/16 :goto_e

    .line 736
    :catch_ed
    move-exception v0

    goto/16 :goto_e
.end method

.method private static dress(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;IF)V
    .registers 6

    .prologue
    .line 350
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 351
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 352
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 353
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    const v1, 0x3faccccd    # 1.35f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    .line 354
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    .line 355
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    .line 356
    if-eqz v0, :cond_36

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    mul-float/2addr v1, p2

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    mul-float/2addr v1, p2

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    .line 357
    :cond_36
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v0, :cond_4a

    move-object v0, p0

    .line 358
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 359
    if-eqz v0, :cond_4a

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v1, p2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 361
    :cond_4a
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->className(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v1

    if-eqz v1, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CCEF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_67
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 364
    return-void

    .line 362
    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CCEF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_67
.end method

.method private static end(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 387
    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 388
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 389
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 390
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 391
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 392
    sput-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 393
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    .line 394
    invoke-static {v3, v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    .line 395
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 396
    if-eqz p1, :cond_40

    .line 397
    :try_start_37
    const-string v0, "The hunters have lost your trail."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_40} :catch_41

    .line 399
    :cond_40
    :goto_40
    return-void

    .line 397
    :catch_41
    move-exception v0

    goto :goto_40
.end method

.method public static evasive(I)Z
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x2

    if-lt p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static extras(I)I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static follows(J)Z
    .registers 4

    .prologue
    .line 116
    invoke-static {p0, p1}, Lfr/testudo/spacecorsair/mod/ModCcef;->survived(J)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static guest()Lfr/testudo/spacecorsair/business/Element;
    .registers 3

    .prologue
    .line 560
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 561
    if-eqz v0, :cond_10

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_10

    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static immune(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 404
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    .line 405
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareValue:F

    .line 406
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    .line 407
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityValue:F

    .line 408
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    .line 409
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    .line 410
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadValue:F

    .line 411
    return-void
.end method

.method public static immuneTo(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 415
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isCcef(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    if-nez p0, :cond_6

    move v0, v1

    .line 174
    :cond_5
    :goto_5
    return v0

    .line 173
    :cond_6
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-ne p0, v2, :cond_e

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-nez v2, :cond_5

    .line 174
    :cond_e
    instance-of v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_22

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_22
    move v0, v1

    goto :goto_5
.end method

.method public static jumpTime(I)I
    .registers 2

    .prologue
    .line 449
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockdown()Z

    move-result v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->warpTime(IZ)I

    move-result v0

    return v0
.end method

.method private static land(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 15

    .prologue
    .line 314
    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 315
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-nez v0, :cond_39

    const/4 v0, 0x1

    move v1, v0

    .line 316
    :goto_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clears()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->scale(I)F

    move-result v13

    .line 317
    const/4 v2, 0x0

    .line 318
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1b
    if-ltz v3, :cond_b4

    .line 319
    sget v4, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lfr/testudo/spacecorsair/mod/ModCcef;->lv:I

    const/4 v6, 0x1

    invoke-static {v4, v0, v5, v6}, Lfr/testudo/spacecorsair/mod/ModPolice;->build(IIIZ)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v4

    .line 320
    if-nez v4, :cond_3c

    move v0, v2

    .line 318
    :goto_35
    add-int/lit8 v3, v3, -0x1

    move v2, v0

    goto :goto_1b

    .line 315
    :cond_39
    const/4 v0, 0x0

    move v1, v0

    goto :goto_9

    .line 321
    :cond_3c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0, v13}, Lfr/testudo/spacecorsair/mod/ModCcef;->dress(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;IF)V

    .line 322
    iget-object v0, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x408c200000000000L    # 900.0

    mul-double/2addr v6, v8

    const-wide v8, 0x407c200000000000L    # 450.0

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x408c200000000000L    # 900.0

    mul-double/2addr v6, v8

    const-wide v8, 0x407c200000000000L    # 450.0

    sub-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 323
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 324
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 325
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 326
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    const/4 v0, 0x4

    new-array v6, v0, [F

    const/4 v0, 0x0

    const/4 v7, 0x0

    aput v7, v6, v0

    const/4 v0, 0x1

    const/4 v7, 0x0

    aput v7, v6, v0

    const/4 v0, 0x2

    const/4 v7, 0x0

    aput v7, v6, v0

    const/4 v7, 0x3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v8, v10

    if-gez v0, :cond_b1

    const/high16 v0, -0x40800000    # -1.0f

    :goto_9f
    aput v0, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 329
    add-int/lit8 v0, v2, 0x1

    goto :goto_35

    .line 326
    :cond_b1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_9f

    .line 331
    :cond_b4
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    if-eqz v0, :cond_19a

    .line 332
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    const/4 v3, 0x0

    sget v4, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget-object v0, v0, v3

    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    sget v3, Lfr/testudo/spacecorsair/mod/ModCcef;->lv:I

    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-direct {v4, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-static {v0, v3, v4, v13}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->spawnCcef(Ljava/lang/String;ILfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 333
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v3, :cond_19a

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    .line 335
    :goto_e6
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f2

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    if-eqz v0, :cond_f9

    :cond_f2
    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const-wide/16 v2, 0x1f4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    .line 336
    :cond_f9
    if-lez v12, :cond_fe

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    .line 337
    :cond_fe
    if-lez v12, :cond_15c

    if-eqz v1, :cond_15c

    .line 338
    const-string v0, "fx_shock"

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x45160000    # 2400.0f

    const-wide/16 v6, 0x4b0

    const/high16 v8, 0x3e800000    # 0.25f

    const v9, 0x3f666666    # 0.9f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lfr/testudo/spacecorsair/mod/ModLive;->fx(Ljava/lang/String;IIFFFJFFFZ)V

    .line 339
    const-string v0, "warp_in"

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    const-wide/16 v4, 0x5dc

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 340
    const-string v0, "flagship_horn"

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    const-wide/16 v4, 0xbb8

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 341
    const-string v0, "CCEF"

    const-string v1, "Local lockdown. Criminal marked for elimination"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xfa0

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callout(Ljava/lang/String;Ljava/lang/String;FFFI)V

    .line 342
    const-string v0, "CCEF, Central Criminal Elimination Force: we have landed. This sector is under local lockdown until the criminal is eliminated. Warping out will take longer."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 343
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    .line 345
    :cond_15c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "landed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (left "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    if-eqz v0, :cond_197

    const-string v0, " + titan"

    :goto_181
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") scale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 346
    return-void

    .line 345
    :cond_197
    const-string v0, ""

    goto :goto_181

    :cond_19a
    move v12, v2

    goto/16 :goto_e6
.end method

.method static lightSize(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 3

    .prologue
    .line 702
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const v1, 0x3f333333    # 0.7f

    div-float/2addr v0, v1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method static lights(Lfr/testudo/spacecorsair/business/Element;F)V
    .registers 14

    .prologue
    const v7, 0x3f666666    # 0.9f

    const/high16 v6, 0x3e800000    # 0.25f

    const v11, 0x3df5c28f    # 0.12f

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x578

    rem-long/2addr v0, v2

    .line 691
    const-wide/16 v2, 0x2bc

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x8c

    cmp-long v0, v0, v2

    if-gez v0, :cond_80

    move v9, v8

    .line 692
    :goto_1c
    const/high16 v0, 0x42200000    # 40.0f

    const v1, 0x3e6147ae    # 0.22f

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 693
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    neg-float v2, p1

    mul-float/2addr v2, v11

    neg-float v4, p1

    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v4, v10}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 694
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 695
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    mul-float v2, p1, v11

    neg-float v4, p1

    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v4, v10}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 696
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 697
    const-string v0, "fx_glow"

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v3, p1

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v4, p1

    const v10, 0x3d75c28f    # 0.06f

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 698
    return-void

    .line 691
    :cond_80
    const v9, 0x3e4ccccd    # 0.2f

    goto :goto_1c
.end method

.method static livery(Ljava/lang/String;FLfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 7

    .prologue
    .line 654
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ccef_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 655
    if-eqz v1, :cond_26

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, p1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 659
    :goto_24
    return-object v0

    .line 656
    :catch_25
    move-exception v0

    .line 659
    :cond_26
    if-nez p2, :cond_2a

    const/4 v0, 0x0

    goto :goto_24

    :cond_2a
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCcef$Tint;

    invoke-direct {v0, p2}, Lfr/testudo/spacecorsair/mod/ModCcef$Tint;-><init>(Lfr/testudo/spacecorsair/display/Drawable;)V

    goto :goto_24
.end method

.method private static lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V
    .registers 7

    .prologue
    .line 454
    if-nez p1, :cond_39

    .line 455
    :try_start_2
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/testudo/spacecorsair/business/world/Portal;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    goto :goto_c

    .line 469
    :catch_31
    move-exception v0

    .line 472
    :cond_32
    :goto_32
    return-void

    .line 456
    :cond_33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    goto :goto_32

    .line 459
    :cond_39
    if-eqz p0, :cond_32

    .line 460
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 461
    const/4 v0, 0x0

    move v1, v0

    :goto_3f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 462
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 463
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-nez v3, :cond_53

    .line 461
    :cond_4f
    :goto_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    .line 464
    :cond_53
    check-cast v0, Lfr/testudo/spacecorsair/business/world/Portal;

    .line 465
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 466
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    iget v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lfr/testudo/spacecorsair/mod/ModCcef;->warpTime(IZ)I

    move-result v3

    iput v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_71} :catch_31

    goto :goto_4f
.end method

.method static lockdown()Z
    .registers 2

    .prologue
    .line 160
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-eqz v0, :cond_10

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static log(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ccef "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->log(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method private static onLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 280
    invoke-static {v7, v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    .line 281
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3a

    :cond_11
    move v1, v3

    .line 282
    :goto_12
    if-eqz v1, :cond_4a

    .line 283
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v5, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1a

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->classOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_3a
    move v1, v2

    .line 281
    goto :goto_12

    .line 284
    :cond_3c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_4a

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4a

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 286
    :cond_4a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 288
    sput-object v7, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 289
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    .line 290
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-nez v0, :cond_60

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->restore()V

    .line 293
    :cond_5f
    :goto_5f
    return-void

    .line 291
    :cond_60
    if-eqz v1, :cond_70

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModCcef;->follows(J)Z

    move-result v0

    if-nez v0, :cond_70

    const-string v0, "trail lost"

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    goto :goto_5f

    .line 292
    :cond_70
    if-eqz v1, :cond_5f

    sput v3, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hunt follows into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    goto :goto_5f
.end method

.method static playerDied()V
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->diedSinceTitan:Z

    .line 168
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_d

    const-string v0, "player destroyed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    .line 169
    :cond_d
    return-void
.end method

.method public static playerHit(FZZ)F
    .registers 5

    .prologue
    .line 126
    if-nez p1, :cond_3

    .line 128
    :goto_2
    return p0

    .line 127
    :cond_3
    const v0, 0x3f933333    # 1.15f

    mul-float/2addr v0, p0

    .line 128
    if-eqz p2, :cond_c

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    :cond_c
    move p0, v0

    goto :goto_2
.end method

.method private static prey(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 566
    if-nez p0, :cond_5

    move-object v3, v4

    .line 580
    :cond_4
    :goto_4
    return-object v3

    .line 568
    :cond_5
    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 570
    const v1, 0x44bb8000    # 1500.0f

    .line 571
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_13
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 572
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 573
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_5f

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_5f

    iget v2, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v7, 0x0

    cmpg-float v2, v2, v7

    if-lez v2, :cond_5f

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_46

    move-object v0, v3

    .line 571
    :goto_41
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v0

    goto :goto_13

    .line 574
    :cond_46
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    if-eqz v2, :cond_4c

    move-object v0, v3

    goto :goto_41

    .line 575
    :cond_4c
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 576
    cmpg-float v7, v2, v1

    if-gez v7, :cond_5f

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5a} :catch_5c

    move v1, v2

    goto :goto_41

    .line 579
    :catch_5c
    move-exception v0

    move-object v3, v4

    .line 580
    goto :goto_4

    :cond_5f
    move-object v0, v3

    goto :goto_41
.end method

.method public static radar(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFLfr/testudo/spacecorsair/business/Element;)Z
    .registers 15

    .prologue
    const v8, 0x3f4ccccd    # 0.8f

    .line 707
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockdown()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 718
    :goto_a
    return v0

    .line 709
    :cond_b
    :try_start_b
    invoke-static {p5}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 710
    const v0, 0x4019999a    # 2.4f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x4061800000000000L    # 140.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    .line 711
    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, p4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 712
    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3df5c28f    # 0.12f

    const/high16 v6, 0x3f800000    # 1.0f

    const v0, 0x3fb33333    # 1.4f

    mul-float v7, p4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 713
    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v7, p4, v8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_5e} :catch_60

    .line 718
    :cond_5e
    :goto_5e
    const/4 v0, 0x1

    goto :goto_a

    .line 715
    :catch_60
    move-exception v0

    goto :goto_5e
.end method

.method static regularTitanKilled()V
    .registers 4

    .prologue
    .line 192
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_5

    .line 205
    :goto_4
    return-void

    .line 194
    :cond_5
    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 195
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->setOrigin(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 196
    const/4 v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 197
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 198
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 199
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 200
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trigger: titan killed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_36} :catch_37

    goto :goto_4

    .line 202
    :catch_37
    move-exception v0

    goto :goto_4
.end method

.method private static restore()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 782
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->restored:Z

    if-eqz v2, :cond_8

    .line 804
    :cond_7
    :goto_7
    return-void

    .line 783
    :cond_8
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModCcef;->restored:Z

    .line 785
    :try_start_a
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 786
    if-nez v2, :cond_61

    .line 787
    :goto_10
    if-eqz v0, :cond_7

    .line 788
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 789
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    .line 790
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lfr/testudo/spacecorsair/mod/ModCcef;->lv:I

    .line 791
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 792
    const-string v3, "1"

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 793
    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 794
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    invoke-static {v4, v5}, Lfr/testudo/spacecorsair/mod/ModCcef;->follows(J)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ccef_pending"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_5c} :catch_5d

    goto :goto_7

    .line 801
    :catch_5d
    move-exception v0

    .line 802
    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    goto :goto_7

    .line 786
    :cond_61
    :try_start_61
    const-string v0, "ccef_pending"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 795
    :cond_69
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 796
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clears()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->squad(I[D)[I

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_79
    if-ge v0, v3, :cond_89

    aget v4, v2, v0

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 797
    :cond_89
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 798
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->guestPrime:Z

    .line 799
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 800
    const-string v0, "restored pending hunt"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_97} :catch_5d

    goto/16 :goto_7
.end method

.method private static save()V
    .registers 6

    .prologue
    .line 770
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 771
    if-nez v0, :cond_7

    .line 777
    :goto_6
    return-void

    .line 772
    :cond_7
    sget v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-nez v1, :cond_1b

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ccef_pending"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6

    .line 774
    :catch_19
    move-exception v0

    goto :goto_6

    .line 773
    :cond_1b
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ccef_pending"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModCcef;->lv:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    :goto_4f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6a} :catch_19

    goto :goto_6

    :cond_6b
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method public static scale(I)F
    .registers 5

    .prologue
    .line 84
    const-wide v0, 0x3ff0ccccc0000000L    # 1.0499999523162842

    const/4 v2, 0x0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static scanShots(Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 8

    .prologue
    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 522
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->shotScan:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 534
    :cond_e
    return-void

    .line 523
    :cond_f
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shotScan:J

    .line 524
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 527
    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x30

    if-ge v0, v3, :cond_e

    .line 528
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 529
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v3, :cond_38

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v3, :cond_3c

    .line 527
    :cond_38
    :goto_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 530
    :cond_3c
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 531
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v3, :cond_38

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v3, :cond_50

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 532
    :cond_50
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38
.end method

.method public static secondarySlot(I)Z
    .registers 3

    .prologue
    .line 133
    rem-int/lit8 v0, p0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static setOrigin(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 222
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->factionIndex(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    .line 223
    if-nez p0, :cond_36

    move v0, v1

    :goto_a
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->level(I)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->lv:I

    .line 224
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->guestHeatLeads()Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->guestPrime:Z

    .line 225
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clears()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->squad(I[D)[I

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v3, :cond_39

    aget v4, v2, v0

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 223
    :cond_36
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    goto :goto_a

    .line 227
    :cond_39
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 228
    return-void
.end method

.method public static shieldRate(F)F
    .registers 2

    .prologue
    .line 444
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV34;->levelShield()F

    move-result v0

    mul-float/2addr v0, p0

    :goto_b
    return v0

    :cond_c
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_b
.end method

.method public static side(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    instance-of v1, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v1, :cond_15

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 513
    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x2

    goto :goto_15
.end method

.method public static squad(I[D)[I
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->extras(I)I

    move-result v3

    .line 95
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->SQUAD:[I

    array-length v1, v1

    add-int/2addr v1, v3

    new-array v4, v1, [I

    .line 96
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->SQUAD:[I

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->SQUAD:[I

    array-length v2, v2

    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v0

    .line 97
    :goto_14
    if-ge v2, v3, :cond_3f

    .line 98
    if-eqz p1, :cond_3a

    array-length v0, p1

    if-ge v2, v0, :cond_3a

    aget-wide v0, p1, v2

    .line 99
    :goto_1d
    sget-object v5, Lfr/testudo/spacecorsair/mod/ModCcef;->SQUAD:[I

    array-length v5, v5

    add-int/2addr v5, v2

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModCcef;->SQUAD:[I

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModCcef;->SQUAD:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModCcef;->SQUAD:[I

    array-length v8, v8

    int-to-double v8, v8

    mul-double/2addr v0, v8

    double-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget v0, v6, v0

    aput v0, v4, v5

    .line 97
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 98
    :cond_3a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    goto :goto_1d

    .line 101
    :cond_3f
    return-object v4
.end method

.method private static start(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    .line 296
    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 297
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    .line 298
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->ccefStandDown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 299
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clearPolice()V

    .line 300
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->arrival(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 301
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_27

    .line 302
    const-string v0, "Incoming transmission from the Human Intergalactic Council: for the crimes you have committed, you are sentenced to termination. The sentence will be carried out without delay."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 304
    :cond_27
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countdown 20000 ms, clock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method static steer(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;JF)V
    .registers 13

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 620
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 621
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 622
    div-float v2, p4, v2

    const v3, 0x3c449ba6    # 0.012f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 623
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    const/high16 v4, 0x435c0000    # 220.0f

    div-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 624
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    mul-float/2addr v0, v2

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v5

    mul-float/2addr v0, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    invoke-virtual {v4, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 625
    return-void
.end method

.method public static survived(J)Z
    .registers 4

    .prologue
    .line 106
    const-wide/32 v0, 0x1d4c0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static test(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 5

    .prologue
    .line 810
    const-string v0, "corsair_ccef"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    .line 811
    if-eqz v0, :cond_2d

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->testOn:Z

    if-nez v1, :cond_2d

    sget v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-nez v1, :cond_2d

    .line 813
    :try_start_10
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->setOrigin(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 814
    const/4 v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 815
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 816
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 817
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 818
    const-string v1, "test trigger"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2d} :catch_30

    .line 823
    :cond_2d
    :goto_2d
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->testOn:Z

    .line 824
    return-void

    .line 819
    :catch_30
    move-exception v1

    goto :goto_2d
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 14

    .prologue
    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 234
    if-nez p0, :cond_9

    .line 276
    :cond_8
    :goto_8
    return-void

    .line 235
    :cond_9
    :try_start_9
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v1, :cond_13

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_19

    :cond_13
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->playerDied()V

    goto :goto_8

    .line 273
    :catch_17
    move-exception v0

    goto :goto_8

    .line 236
    :cond_19
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 237
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lastLevel:Ljava/lang/Object;

    if-eq v1, v2, :cond_2a

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->lastLevel:Ljava/lang/Object;

    if-nez v1, :cond_53

    :goto_27
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->onLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 238
    :cond_2a
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->test(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 239
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 240
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_8

    .line 241
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-ne v0, v3, :cond_56

    .line 242
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->safe(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v0, :cond_8

    .line 243
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->start(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto :goto_8

    .line 237
    :cond_53
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_27

    .line 246
    :cond_56
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    add-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 247
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->boost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 248
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    if-nez v0, :cond_75

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModCcef;->survived(J)Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->achieve()V

    const-string v0, "survived 120 s"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 249
    :cond_75
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->slowTimer:J

    sub-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->slowTimer:J

    .line 250
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->slowTimer:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_a0

    const-wide/16 v2, 0x3e8

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->slowTimer:J

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clearPolice()V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockdown()Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    :cond_91
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    rem-long/2addr v2, v4

    cmp-long v0, v2, v8

    if-nez v0, :cond_a0

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 251
    :cond_a0
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-ne v0, v7, :cond_b6

    .line 252
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    sub-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    .line 253
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_b2

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->land(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 254
    :cond_b2
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-eqz v0, :cond_8

    .line 256
    :cond_b6
    invoke-static {v1, p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->scanShots(Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 257
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_c2
    if-ltz v1, :cond_125

    .line 258
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 259
    iget v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_f9

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ship down, kills="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 257
    :goto_f5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_c2

    .line 260
    :cond_f9
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v2, :cond_115

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->classOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ship lost without a kill: redeploy"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    goto :goto_f5

    .line 261
    :cond_115
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->immune(Lfr/testudo/spacecorsair/business/Element;)V

    .line 262
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeState(Lfr/testudo/spacecorsair/business/Element;)[J

    move-result-object v2

    .line 263
    if-eqz v2, :cond_121

    invoke-static {p0, v0, v2, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->missiles(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[JJ)V

    .line 264
    :cond_121
    invoke-static {v0, v1, p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModCcef;->aim(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;ILfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto :goto_f5

    .line 266
    :cond_125
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_152

    .line 267
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_16c

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "titan down, kills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 271
    :cond_152
    :goto_152
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15e

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    if-eqz v0, :cond_17f

    :cond_15e
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    goto/16 :goto_8

    .line 268
    :cond_16c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-eqz v0, :cond_179

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    goto :goto_152

    .line 269
    :cond_179
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->immune(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_152

    .line 272
    :cond_17f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-nez v0, :cond_8

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->win(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_18e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_18e} :catch_17

    goto/16 :goto_8
.end method

.method static titanEscaped(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 209
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_6

    .line 219
    :goto_5
    return-void

    .line 210
    :cond_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 211
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->diedSinceTitan:Z

    if-nez v1, :cond_17

    if-eqz v0, :cond_17

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1d

    :cond_17
    const-string v0, "titan sector left by death: no hunt"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 212
    :cond_1d
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->setOrigin(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 213
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 214
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 215
    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 216
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 217
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trigger: titan escaped from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    goto :goto_5
.end method

.method static titanLivery(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 5

    .prologue
    .line 666
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eq p0, v0, :cond_a

    :cond_8
    move-object v0, p1

    .line 669
    :cond_9
    :goto_9
    return-object v0

    .line 667
    :cond_a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->tints:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCcef$Tint;

    .line 668
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lfr/testudo/spacecorsair/mod/ModCcef$Tint;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    iget-object v2, p1, Lfr/testudo/spacecorsair/display/Drawable;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    if-eq v1, v2, :cond_9

    :cond_1a
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModCcef$Tint;

    invoke-direct {v0, p1}, Lfr/testudo/spacecorsair/mod/ModCcef$Tint;-><init>(Lfr/testudo/spacecorsair/display/Drawable;)V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->tints:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method static titanWarning()V
    .registers 1

    .prologue
    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->diedSinceTitan:Z

    .line 183
    :try_start_3
    const-string v0, "Warning: a police titan has been deployed. Destroy it or slip its pursuit and you WILL be hunted down for good."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 184
    const-string v0, "titan warning"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_12

    .line 188
    :goto_11
    return-void

    .line 185
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public static warpTime(IZ)I
    .registers 4

    .prologue
    .line 121
    if-eqz p1, :cond_a

    int-to-float v0, p0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :cond_a
    return p0
.end method

.method private static win(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 367
    const-string v0, "squad destroyed"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 368
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->achieve()V

    .line 370
    :cond_10
    const v0, 0x989680

    :try_start_13
    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModQol;->addCredits(ILfr/testudo/spacecorsair/business/Element;)V

    .line 371
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_68

    .line 373
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "v35_core_neutral"

    const-string v3, "neutral"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 374
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v4, v3

    move v0, v1

    :goto_32
    if-ge v0, v4, :cond_59

    aget-object v5, v3, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v35_core_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 375
    :cond_59
    const-string v0, "ccef_clears"

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clears()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    :cond_68
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCreditInApp(I)V

    .line 378
    const-string v0, "Human Intergalactic Council: we did not know you were such a skilled hunter. Take this as the price of our mistake: 10,000,000 credits, 10 core parts, 2 cores of every faction and 20 alien credits. Know this: you will not escape next time."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_7c} :catch_82

    .line 382
    :goto_7c
    const-string v0, "squad destroyed"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    .line 383
    return-void

    .line 379
    :catch_82
    move-exception v0

    goto :goto_7c
.end method
