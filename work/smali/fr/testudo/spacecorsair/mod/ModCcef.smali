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

.field public static final FOLLOW_SECTORS:I = 0x5

.field static final G:F = 0.9f

.field public static final HIDE_MAX:F = 2.0f

.field static final HUNT:I = 0x3

.field static final LAND_TRIES:I = 0x1e

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

.field public static final SCALE_PER_CLEAR:F = 0.05f

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

.field private static hops:I

.field private static kills:I

.field private static landTries:I

.field private static landed:Z

.field private static lastLevel:Ljava/lang/Object;

.field private static final lb:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static lv:I

.field private static volatile members:[Ljava/lang/Object;

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

.field private static testAt:J

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

.field private static titanLife:F

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

.field private static final toLandLife:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final txt:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static warpLeft:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_64

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->SQUAD:[I

    .line 157
    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 160
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    .line 165
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanLife:F

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    .line 173
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    .line 174
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 196
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->members:[Ljava/lang/Object;

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    .line 763
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->tints:Ljava/util/WeakHashMap;

    .line 787
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 822
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->txt:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void

    .line 76
    :array_64
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

    .line 856
    if-eqz p0, :cond_f

    :try_start_3
    const-string v1, "escapeCertainDeath"

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 859
    :cond_f
    :goto_f
    return-object v0

    .line 857
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

    .line 858
    :catch_20
    move-exception v1

    goto :goto_f
.end method

.method private static achieve()V
    .registers 3

    .prologue
    .line 845
    :try_start_0
    const-string v0, "escapeCertainDeath"

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/achievements/Achievement;

    move-result-object v0

    .line 846
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->done:Z

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V

    .line 847
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "achievement done="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->done:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    .line 851
    :goto_25
    return-void

    .line 848
    :catch_26
    move-exception v0

    .line 849
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

    goto :goto_25
.end method

.method public static ai(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;J)Z
    .registers 16

    .prologue
    .line 690
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

    .line 715
    :goto_11
    return v0

    .line 692
    :cond_12
    :try_start_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 693
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 694
    if-eqz v5, :cond_22

    iget-boolean v1, v5, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v1, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_11

    .line 695
    :cond_24
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    const v2, 0x3f0ccccd    # 0.55f

    mul-float v3, v1, v2

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    .line 696
    iget-boolean v2, v5, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v2, :cond_39

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne v5, v2, :cond_e4

    :cond_39
    const/4 v2, 0x1

    .line 697
    :goto_3a
    if-eqz v2, :cond_fd

    sget v2, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->evasive(I)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 701
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModView;->defaultRadius()F

    move-result v2

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    invoke-static {v2, v4, v6}, Lfr/testudo/spacecorsair/mod/ModCcef;->hideRadius(FFF)F

    move-result v2

    .line 702
    const/4 v4, 0x1

    aget v6, v0, v4

    long-to-float v7, p1

    sub-float/2addr v6, v7

    aput v6, v0, v4

    .line 703
    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_7f

    const/4 v6, 0x0

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_e7

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_6e
    aput v4, v0, v6

    const/4 v6, 0x1

    const/4 v4, 0x0

    aget v4, v0, v4

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_e9

    const v4, 0x451c4000    # 2500.0f

    :goto_7d
    aput v4, v0, v6

    .line 704
    :cond_7f
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_fd

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_fd

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    .line 706
    :goto_90
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v6, v2, v1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->rangePoint(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FF)V

    .line 708
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

    .line 709
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

    .line 710
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

    .line 711
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->speed()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {p0, v1, p1, p2, v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->steer(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;JF)V

    .line 712
    invoke-static {p0, v0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModCcef;->dodge(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[FJ)V

    .line 713
    const/4 v0, 0x1

    goto/16 :goto_11

    .line 696
    :cond_e4
    const/4 v2, 0x0

    goto/16 :goto_3a

    .line 703
    :cond_e7
    const/4 v4, 0x0

    goto :goto_6e

    :cond_e9
    const v4, 0x453b8000    # 3000.0f

    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_ef} :catch_f9

    move-result-wide v8

    const-wide v10, 0x409f400000000000L    # 2000.0

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v4, v7

    goto :goto_7d

    .line 714
    :catch_f9
    move-exception v0

    .line 715
    const/4 v0, 0x0

    goto/16 :goto_11

    :cond_fd
    move v2, v3

    goto :goto_90
.end method

.method private static aim(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;ILfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 637
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 638
    if-nez v0, :cond_e

    .line 656
    :cond_d
    :goto_d
    return-void

    .line 639
    :cond_e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->guest()Lfr/testudo/spacecorsair/business/Element;

    move-result-object v4

    .line 640
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->guestPrime:Z

    if-eqz v1, :cond_97

    if-eqz v4, :cond_97

    move-object v2, p2

    move-object v1, v4

    .line 641
    :goto_1a
    if-eqz v2, :cond_23

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModCcef;->secondarySlot(I)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object v1, v2

    .line 642
    :cond_23
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 643
    if-eqz v4, :cond_90

    if-eq v4, p2, :cond_90

    if-eq v4, v2, :cond_90

    instance-of v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_90

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_90

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->isDrone(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    iget-boolean v2, v4, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_90

    iget v2, v4, Lfr/testudo/spacecorsair/business/Element;->life:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_90

    move v2, v3

    .line 644
    :goto_46
    aget v5, v0, v7

    long-to-float v6, p3

    sub-float/2addr v5, v6

    aput v5, v0, v7

    .line 645
    aget v5, v0, v7

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_85

    .line 646
    const v5, 0x453b8000    # 3000.0f

    aput v5, v0, v7

    .line 647
    if-nez v2, :cond_85

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v6, v8

    if-gez v0, :cond_85

    .line 648
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->prey(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_85

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

    .line 652
    :cond_85
    if-nez v2, :cond_d

    if-eq v4, v1, :cond_d

    .line 653
    if-ne v1, p2, :cond_92

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto/16 :goto_d

    .line 643
    :cond_90
    const/4 v2, 0x0

    goto :goto_46

    .line 654
    :cond_92
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto/16 :goto_d

    :cond_97
    move-object v2, v4

    move-object v1, p2

    goto :goto_1a
.end method

.method private static arrival(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 7

    .prologue
    .line 364
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

    .line 365
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method private static boost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 3

    .prologue
    const v1, 0x3f8ccccd    # 1.1f

    .line 503
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityDuree:I

    if-lez v0, :cond_d

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 504
    :cond_d
    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityValue:F

    .line 505
    const/16 v0, 0xfa

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityDuree:I

    .line 507
    :cond_13
    return-void
.end method

.method public static calm(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)Z
    .registers 7

    .prologue
    const/high16 v5, 0x45fa0000    # 8000.0f

    .line 591
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

    .line 606
    :goto_1d
    return v0

    .line 593
    :cond_1e
    :try_start_1e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 594
    const/4 v1, 0x0

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 595
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 596
    if-eqz v0, :cond_65

    .line 597
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->subtract(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 598
    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 599
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

    .line 600
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 602
    :cond_65
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onChaseStop()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_68} :catch_6a

    .line 606
    :goto_68
    const/4 v0, 0x1

    goto :goto_1d

    .line 603
    :catch_6a
    move-exception v0

    goto :goto_68
.end method

.method public static chase()Z
    .registers 2

    .prologue
    .line 179
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
    .line 576
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 577
    iget-object v3, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 578
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 579
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 580
    if-eqz v0, :cond_28

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_28

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 578
    :cond_28
    :goto_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 581
    :cond_2c
    const/4 v4, 0x1

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 582
    iget-object v4, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_28

    .line 584
    :catch_35
    move-exception v0

    .line 587
    :cond_36
    return-void
.end method

.method static clears()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 865
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 866
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

    .line 512
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

    .line 517
    :cond_14
    :goto_14
    return p1

    .line 513
    :cond_15
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_23

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 514
    :cond_23
    :goto_23
    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_14

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 515
    const/4 v0, 0x1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->playerHit(FZZ)F
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_37} :catch_3b

    move-result p1

    goto :goto_14

    .line 513
    :cond_39
    const/4 v0, 0x0

    goto :goto_23

    .line 516
    :catch_3b
    move-exception v0

    goto :goto_14
.end method

.method static dmgTaken()F
    .registers 4

    .prologue
    .line 106
    const-string v0, "ccef.dmg_taken"

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3d4ccccd    # 0.05f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModTune;->f(Ljava/lang/String;FFF)F

    move-result v0

    return v0
.end method

.method private static dodge(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[FJ)V
    .registers 14

    .prologue
    .line 730
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    add-float v2, v0, v1

    .line 731
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c1

    .line 732
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 733
    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    if-eqz v3, :cond_27

    .line 731
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 734
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

    .line 735
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

    .line 736
    mul-float v0, v5, v5

    mul-float v7, v6, v6

    add-float/2addr v0, v7

    .line 737
    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, v0, v7

    if-ltz v7, :cond_23

    .line 738
    mul-float v7, v3, v5

    mul-float v8, v4, v6

    add-float/2addr v7, v8

    div-float/2addr v7, v0

    .line 739
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_23

    const/high16 v8, 0x42a00000    # 80.0f

    cmpl-float v8, v7, v8

    if-gtz v8, :cond_23

    .line 740
    mul-float v8, v5, v7

    sub-float/2addr v3, v8

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    .line 741
    mul-float v7, v3, v3

    mul-float v8, v4, v4

    add-float/2addr v7, v8

    mul-float v8, v2, v2

    const/high16 v9, 0x40100000    # 2.25f

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_23

    .line 742
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 743
    neg-float v0, v6

    mul-float/2addr v0, v3

    mul-float v2, v4, v5

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_c2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 744
    :goto_8e
    const/high16 v2, 0x3f800000    # 1.0f

    long-to-float v3, p2

    const/high16 v4, 0x42f00000    # 120.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40600000    # 3.5f

    mul-float/2addr v2, v3

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->speed()F

    move-result v3

    mul-float/2addr v2, v3

    .line 745
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    neg-float v4, v6

    div-float/2addr v4, v1

    mul-float/2addr v4, v2

    mul-float/2addr v4, v0

    div-float v1, v5, v1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {v3, v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 746
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gez v0, :cond_c1

    const/4 v0, 0x3

    const/4 v1, 0x3

    aget v1, p1, v1

    neg-float v1, v1

    aput v1, p1, v0

    .line 749
    :cond_c1
    return-void

    .line 743
    :cond_c2
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_8e
.end method

.method public static doomScale(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 2

    .prologue
    .line 538
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->dmgTaken()F

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_10
.end method

.method static drawOver(Lfr/testudo/spacecorsair/business/player/PlayerShip;F)V
    .registers 14

    .prologue
    const v8, 0x3f19999a    # 0.6f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 826
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-eqz v0, :cond_f

    .line 840
    :cond_e
    :goto_e
    return-void

    .line 828
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

    .line 829
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

    .line 830
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 831
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->txt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    neg-float v0, v0

    mul-float v2, p1, v8

    const/high16 v4, 0x42200000    # 40.0f

    add-float/2addr v2, v4

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 832
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

    .line 833
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->txt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 834
    const/4 v0, 0x0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    long-to-float v1, v2

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->warpInMs()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v9, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 835
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

    .line 836
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
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_f3} :catch_f5

    goto/16 :goto_e

    .line 837
    :catch_f5
    move-exception v0

    goto/16 :goto_e
.end method

.method private static dress(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;IF)V
    .registers 6

    .prologue
    .line 425
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 426
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 427
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 428
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->speed()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    .line 429
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    .line 430
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    .line 431
    if-eqz v0, :cond_37

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    mul-float/2addr v1, p2

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    mul-float/2addr v1, p2

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    .line 432
    :cond_37
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v0, :cond_4b

    move-object v0, p0

    .line 433
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 434
    if-eqz v0, :cond_4b

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v1, p2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 436
    :cond_4b
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->className(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModLang;->spanish()Z

    move-result v1

    if-eqz v1, :cond_6e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CCEF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_68
    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificName:Ljava/lang/String;

    .line 438
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 439
    return-void

    .line 437
    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CCEF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_68
.end method

.method static dropHidden(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 523
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->members:[Ljava/lang/Object;

    array-length v0, v0

    if-eqz v0, :cond_d

    if-nez p0, :cond_e

    .line 534
    :cond_d
    :goto_d
    return-void

    .line 525
    :cond_e
    :try_start_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_15
    if-ltz v1, :cond_d

    .line 526
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 527
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-nez v2, :cond_23

    .line 525
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_15

    .line 528
    :cond_23
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 529
    if-eqz v0, :cond_1f

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eq v0, v2, :cond_1f

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModView;->outside(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_3c} :catch_3d

    goto :goto_1f

    .line 531
    :catch_3d
    move-exception v0

    goto :goto_d
.end method

.method private static end(Ljava/lang/String;Z)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 461
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

    .line 462
    sput v4, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 463
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 465
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 467
    :try_start_26
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 468
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v3, :cond_32

    const/4 v3, 0x1

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v1, :cond_32

    iget-object v3, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_4c} :catch_4d

    goto :goto_32

    .line 469
    :catch_4d
    move-exception v0

    .line 472
    :cond_4e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_5b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v0, :cond_5b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->standDown()V

    .line 473
    :cond_5b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 474
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 475
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 476
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->snapshot()V

    .line 477
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    .line 478
    invoke-static {v5, v4}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    .line 479
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 480
    if-eqz p1, :cond_7d

    .line 481
    :try_start_74
    const-string v0, "The hunters have lost your trail."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7d} :catch_7e

    .line 483
    :cond_7d
    :goto_7d
    return-void

    .line 481
    :catch_7e
    move-exception v0

    goto :goto_7d
.end method

.method public static evasive(I)Z
    .registers 2

    .prologue
    .line 116
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

.method public static follows(I)Z
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x5

    if-ge p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static guest()Lfr/testudo/spacecorsair/business/Element;
    .registers 3

    .prologue
    .line 659
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 660
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

.method public static hideRadius(FFF)F
    .registers 5

    .prologue
    .line 127
    const v0, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    .line 128
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return v0
.end method

.method static immune(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 488
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    .line 489
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareValue:F

    .line 490
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    .line 491
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityValue:F

    .line 492
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    .line 493
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    .line 494
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadValue:F

    .line 495
    return-void
.end method

.method public static immuneTo(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 499
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
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 206
    if-nez p0, :cond_4

    .line 209
    :cond_3
    :goto_3
    return v1

    .line 207
    :cond_4
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->members:[Ljava/lang/Object;

    move v0, v1

    .line 208
    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v3, v2, v0

    if-ne v3, p0, :cond_10

    const/4 v1, 0x1

    goto :goto_3

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static jumpTime(I)I
    .registers 2

    .prologue
    .line 548
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockdown()Z

    move-result v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->warpTime(IZ)I

    move-result v0

    return v0
.end method

.method private static land(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 15

    .prologue
    .line 369
    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 370
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-nez v0, :cond_39

    const/4 v0, 0x1

    move v1, v0

    .line 371
    :goto_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clears()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->scale(I)F

    move-result v13

    .line 372
    const/4 v2, 0x0

    .line 373
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1b
    if-ltz v3, :cond_f5

    .line 374
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

    .line 375
    if-nez v4, :cond_3c

    move v0, v2

    .line 373
    :goto_35
    add-int/lit8 v3, v3, -0x1

    move v2, v0

    goto :goto_1b

    .line 370
    :cond_39
    const/4 v0, 0x0

    move v1, v0

    goto :goto_9

    .line 376
    :cond_3c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0, v13}, Lfr/testudo/spacecorsair/mod/ModCcef;->dress(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;IF)V

    .line 377
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_ee

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 378
    :goto_5f
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v0, v5

    if-gez v5, :cond_7a

    iget v5, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v5, v0

    iput v5, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    iput v0, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    iget-object v0, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    if-eqz v0, :cond_7a

    iget-object v0, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v5, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->lifeInPourc:F

    invoke-virtual {v0, v5}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 379
    :cond_7a
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

    .line 380
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 381
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 382
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 383
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

    if-gez v0, :cond_f2

    const/high16 v0, -0x40800000    # -1.0f

    :goto_ce
    aput v0, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 386
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_ea

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 387
    :cond_ea
    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_35

    .line 377
    :cond_ee
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_5f

    .line 383
    :cond_f2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_ce

    .line 389
    :cond_f5
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    if-eqz v0, :cond_267

    .line 390
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

    .line 391
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v3, :cond_267

    .line 392
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 393
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 394
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const-string v3, "CCEF Titan"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 395
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->rename(Ljava/lang/String;)V

    .line 396
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanLife:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_151

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v3, v3, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModCcef;->titanLife:F

    mul-float/2addr v3, v4

    iput v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const/high16 v3, 0x42c80000    # 100.0f

    sget v4, Lfr/testudo/spacecorsair/mod/ModCcef;->titanLife:F

    mul-float/2addr v3, v4

    iput v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->lifeInPourc:F

    .line 397
    :cond_151
    add-int/lit8 v2, v2, 0x1

    move v12, v2

    .line 400
    :goto_154
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->snapshot()V

    .line 401
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_163

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    if-eqz v0, :cond_25f

    .line 402
    :cond_163
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1b9

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "landing gave up on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    if-eqz v0, :cond_1b6

    const-string v0, " + titan"

    :goto_188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 404
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 405
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 406
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 407
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    .line 408
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c0

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-nez v0, :cond_1c0

    const-string v0, "landing failed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    .line 421
    :goto_1b5
    return-void

    .line 403
    :cond_1b6
    const-string v0, ""

    goto :goto_188

    .line 409
    :cond_1b9
    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const-wide/16 v2, 0x1f4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    .line 411
    :cond_1c0
    :goto_1c0
    if-lez v12, :cond_1c5

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    .line 412
    :cond_1c5
    if-lez v12, :cond_223

    if-eqz v1, :cond_223

    .line 413
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

    .line 414
    const-string v0, "warp_in"

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    const-wide/16 v4, 0x5dc

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 415
    const-string v0, "flagship_horn"

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    const-wide/16 v4, 0xbb8

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 416
    const-string v0, "CCEF"

    const-string v1, "Local lockdown. Criminal marked for elimination"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xfa0

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callout(Ljava/lang/String;Ljava/lang/String;FFFI)V

    .line 417
    const-string v0, "CCEF, Central Criminal Elimination Force: we have landed. This sector is under local lockdown until the criminal is eliminated. Warping out will take longer."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 418
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    .line 420
    :cond_223
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

    if-eqz v0, :cond_264

    const-string v0, " + titan"

    :goto_248
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

    goto/16 :goto_1b5

    .line 410
    :cond_25f
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    goto/16 :goto_1c0

    .line 420
    :cond_264
    const-string v0, ""

    goto :goto_248

    :cond_267
    move v12, v2

    goto/16 :goto_154
.end method

.method static lightSize(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 3

    .prologue
    .line 803
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

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x578

    rem-long/2addr v0, v2

    .line 792
    const-wide/16 v2, 0x2bc

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x8c

    cmp-long v0, v0, v2

    if-gez v0, :cond_80

    move v9, v8

    .line 793
    :goto_1c
    const/high16 v0, 0x42200000    # 40.0f

    const v1, 0x3e6147ae    # 0.22f

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 794
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    neg-float v2, p1

    mul-float/2addr v2, v11

    neg-float v4, p1

    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v4, v10}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 795
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 796
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    mul-float v2, p1, v11

    neg-float v4, p1

    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v4, v10}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 797
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 798
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

    .line 799
    return-void

    .line 792
    :cond_80
    const v9, 0x3e4ccccd    # 0.2f

    goto :goto_1c
.end method

.method static livery(Ljava/lang/String;FLfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 7

    .prologue
    .line 755
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

    .line 756
    if-eqz v1, :cond_26

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, p1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 760
    :goto_24
    return-object v0

    .line 757
    :catch_25
    move-exception v0

    .line 760
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
    .line 553
    if-nez p1, :cond_39

    .line 554
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

    .line 568
    :catch_31
    move-exception v0

    .line 571
    :cond_32
    :goto_32
    return-void

    .line 555
    :cond_33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    goto :goto_32

    .line 558
    :cond_39
    if-eqz p0, :cond_32

    .line 559
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 560
    const/4 v0, 0x0

    move v1, v0

    :goto_3f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 561
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 562
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-nez v3, :cond_53

    .line 560
    :cond_4f
    :goto_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    .line 563
    :cond_53
    check-cast v0, Lfr/testudo/spacecorsair/business/world/Portal;

    .line 564
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 565
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    iget v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
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
    .line 184
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
    .line 947
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

    .line 948
    return-void
.end method

.method private static onLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 333
    invoke-static {v9, v3}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    .line 334
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_42

    :cond_13
    move v2, v4

    .line 335
    :goto_14
    if-eqz v2, :cond_68

    .line 336
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    iget v6, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1c

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->classOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v6

    iget v7, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_44

    iget v7, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    iget v0, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    div-float v0, v7, v0

    :goto_3e
    invoke-static {v6, v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->queue(IF)V

    goto :goto_1c

    :cond_42
    move v2, v3

    .line 334
    goto :goto_14

    :cond_44
    move v0, v1

    .line 336
    goto :goto_3e

    .line 337
    :cond_46
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_68

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_68

    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_66

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    div-float v1, v0, v1

    :cond_66
    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->titanLife:F

    .line 339
    :cond_68
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 340
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 341
    sput-object v9, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 342
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->snapshot()V

    .line 343
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    .line 344
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-nez v0, :cond_81

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->restore()V

    .line 347
    :cond_80
    :goto_80
    return-void

    .line 345
    :cond_81
    if-eqz v2, :cond_91

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->follows(I)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "trail lost"

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    goto :goto_80

    .line 346
    :cond_91
    if-eqz v2, :cond_80

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    sput v4, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hunt follows into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    goto :goto_80
.end method

.method static playerDied()V
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->diedSinceTitan:Z

    .line 192
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_d

    const-string v0, "player destroyed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    .line 193
    :cond_d
    return-void
.end method

.method public static playerHit(FZZ)F
    .registers 7

    .prologue
    .line 145
    if-nez p1, :cond_3

    .line 147
    :goto_2
    return p0

    .line 146
    :cond_3
    const-string v0, "ccef.player_dmg"

    const v1, 0x3f933333    # 1.15f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModTune;->f(Ljava/lang/String;FFF)F

    move-result v0

    mul-float/2addr v0, p0

    .line 147
    if-eqz p2, :cond_18

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->dmgTaken()F

    move-result v1

    mul-float/2addr v0, v1

    :cond_18
    move p0, v0

    goto :goto_2
.end method

.method private static prey(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 665
    if-nez p0, :cond_5

    move-object v3, v4

    .line 679
    :cond_4
    :goto_4
    return-object v3

    .line 667
    :cond_5
    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 669
    const v1, 0x44bb8000    # 1500.0f

    .line 670
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_13
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 671
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 672
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_65

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_65

    iget v2, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v7, 0x0

    cmpg-float v2, v2, v7

    if-lez v2, :cond_65

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->isDrone(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-eqz v2, :cond_4c

    move-object v0, v3

    .line 670
    :goto_47
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v0

    goto :goto_13

    .line 673
    :cond_4c
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    if-eqz v2, :cond_52

    move-object v0, v3

    goto :goto_47

    .line 674
    :cond_52
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 675
    cmpg-float v7, v2, v1

    if-gez v7, :cond_65

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_60} :catch_62

    move v1, v2

    goto :goto_47

    .line 678
    :catch_62
    move-exception v0

    move-object v3, v4

    .line 679
    goto :goto_4

    :cond_65
    move-object v0, v3

    goto :goto_47
.end method

.method private static queue(IF)V
    .registers 5

    .prologue
    .line 279
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method private static queueFresh()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 270
    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    .line 271
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 272
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 273
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clears()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->squad(I[D)[I

    move-result-object v1

    array-length v2, v1

    :goto_19
    if-ge v0, v2, :cond_32

    aget v3, v1, v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 274
    :cond_32
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 275
    sput v5, Lfr/testudo/spacecorsair/mod/ModCcef;->titanLife:F

    .line 276
    return-void
.end method

.method public static radar(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFLfr/testudo/spacecorsair/business/Element;)Z
    .registers 15

    .prologue
    const v8, 0x3f4ccccd    # 0.8f

    .line 808
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockdown()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 819
    :goto_a
    return v0

    .line 810
    :cond_b
    :try_start_b
    invoke-static {p5}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 811
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

    .line 812
    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, p4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 813
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

    .line 814
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

    .line 819
    :cond_5e
    :goto_5e
    const/4 v0, 0x1

    goto :goto_a

    .line 816
    :catch_60
    move-exception v0

    goto :goto_5e
.end method

.method static regularTitanKilled()V
    .registers 4

    .prologue
    .line 227
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_5

    .line 241
    :goto_4
    return-void

    .line 229
    :cond_5
    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 230
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->setOrigin(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 231
    const/4 v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 232
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 233
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 234
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    .line 235
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 236
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 237
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
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_39} :catch_3a

    goto :goto_4

    .line 238
    :catch_3a
    move-exception v0

    goto :goto_4
.end method

.method private static restore()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 884
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->restored:Z

    if-eqz v2, :cond_9

    .line 904
    :cond_8
    :goto_8
    return-void

    .line 885
    :cond_9
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModCcef;->restored:Z

    .line 887
    :try_start_b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 888
    if-nez v2, :cond_67

    .line 889
    :goto_11
    if-eqz v0, :cond_8

    .line 890
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 891
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    .line 892
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lv:I

    .line 893
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 894
    const-string v2, "1"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 895
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 896
    array-length v2, v0

    if-le v2, v4, :cond_6f

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_52
    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    .line 897
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->queueFresh()V

    .line 898
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->guestPrime:Z

    .line 899
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 900
    const-string v0, "restored pending hunt"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_62} :catch_63

    goto :goto_8

    .line 901
    :catch_63
    move-exception v0

    .line 902
    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    goto :goto_8

    .line 888
    :cond_67
    :try_start_67
    const-string v0, "ccef_pending"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6d} :catch_63

    move-result-object v0

    goto :goto_11

    :cond_6f
    move v0, v1

    .line 896
    goto :goto_52
.end method

.method private static save()V
    .registers 6

    .prologue
    .line 872
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 873
    if-nez v0, :cond_7

    .line 879
    :goto_6
    return-void

    .line 874
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

    .line 876
    :catch_19
    move-exception v0

    goto :goto_6

    .line 875
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

    if-eqz v0, :cond_77

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

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_76} :catch_19

    goto :goto_6

    :cond_77
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method public static scale(I)F
    .registers 4

    .prologue
    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3d4ccccd    # 0.05f

    const/4 v2, 0x0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static scanShots(Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 8

    .prologue
    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 621
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->shotScan:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 633
    :cond_e
    return-void

    .line 622
    :cond_f
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shotScan:J

    .line 623
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 625
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 626
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

    .line 627
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 628
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v3, :cond_38

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v3, :cond_3c

    .line 626
    :cond_38
    :goto_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 629
    :cond_3c
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 630
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v3, :cond_38

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v3, :cond_50

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 631
    :cond_50
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38
.end method

.method public static secondarySlot(I)Z
    .registers 3

    .prologue
    .line 152
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
    .registers 2

    .prologue
    .line 263
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->factionIndex(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    .line 264
    if-nez p0, :cond_19

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->level(I)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->lv:I

    .line 265
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->guestHeatLeads()Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->guestPrime:Z

    .line 266
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->queueFresh()V

    .line 267
    return-void

    .line 264
    :cond_19
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    goto :goto_9
.end method

.method public static shieldRate(F)F
    .registers 2

    .prologue
    .line 543
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

    .line 611
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

    .line 612
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

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->isDrone(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x2

    goto :goto_15
.end method

.method private static snapshot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 199
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_c
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 200
    :goto_f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    move v0, v1

    .line 199
    goto :goto_c

    .line 201
    :cond_24
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v1, :cond_2f

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    aput-object v2, v0, v1

    .line 202
    :cond_2f
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->members:[Ljava/lang/Object;

    .line 203
    return-void
.end method

.method static speed()F
    .registers 4

    .prologue
    .line 105
    const-string v0, "ccef.speed"

    const v1, 0x3faccccd    # 1.35f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModTune;->f(Ljava/lang/String;FFF)F

    move-result v0

    return v0
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
    .line 350
    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 351
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    .line 352
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->warpInMs()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    .line 353
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->ccefStandDown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 354
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clearPolice()V

    .line 355
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->arrival(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 356
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    .line 357
    const-string v0, "Incoming transmission from the Human Intergalactic Council: for the crimes you have committed, you are sentenced to termination. The sentence will be carried out without delay."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 359
    :cond_2c
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countdown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms, clock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method static steer(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;JF)V
    .registers 13

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 721
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 722
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 723
    div-float v2, p4, v2

    const v3, 0x3c449ba6    # 0.012f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 724
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    const/high16 v4, 0x435c0000    # 220.0f

    div-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 725
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

    .line 726
    return-void
.end method

.method public static survived(J)Z
    .registers 6

    .prologue
    .line 111
    const-string v0, "ccef.survive_s"

    const/high16 v1, 0x42f00000    # 120.0f

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x44610000    # 900.0f

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModTune;->f(Ljava/lang/String;FFF)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static test(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 10

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 912
    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModCcef;->testAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_12

    .line 944
    :cond_11
    :goto_11
    return-void

    .line 913
    :cond_12
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->testAt:J

    .line 914
    const-string v1, "corsair_ccef"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v1

    .line 915
    if-eqz v1, :cond_44

    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->testOn:Z

    if-nez v2, :cond_44

    sget v2, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-nez v2, :cond_44

    .line 917
    :try_start_24
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->setOrigin(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 918
    const/4 v2, 0x1

    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 919
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 920
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 921
    const/4 v2, 0x0

    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    .line 922
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 923
    const-string v2, "test trigger"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_44} :catch_96

    .line 928
    :cond_44
    :goto_44
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->testOn:Z

    .line 931
    :try_start_46
    const-string v1, "corsair_ccef_god"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->invincible:Z

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    cmpg-float v1, v1, v8

    if-gez v1, :cond_5b

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    .line 932
    :cond_5b
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-eqz v1, :cond_11

    const-string v1, "corsair_ccef_kill"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 933
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->members:[Ljava/lang/Object;

    move v1, v0

    .line 934
    :goto_6a
    array-length v0, v2

    if-ge v1, v0, :cond_11

    .line 935
    aget-object v0, v2, v1

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 936
    if-eqz v0, :cond_7e

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v3, :cond_7e

    iget v3, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_82

    .line 934
    :cond_7e
    :goto_7e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6a

    .line 937
    :cond_82
    const/4 v3, 0x0

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->invincible:Z

    .line 938
    iget v3, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    const v4, 0x49742400    # 1000000.0f

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p0, v4}, Lfr/testudo/spacecorsair/business/Element;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_92} :catch_93

    goto :goto_7e

    .line 941
    :catch_93
    move-exception v0

    goto/16 :goto_11

    .line 924
    :catch_96
    move-exception v2

    goto :goto_44
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 287
    if-nez p0, :cond_8

    .line 329
    :cond_7
    :goto_7
    return-void

    .line 288
    :cond_8
    :try_start_8
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v1, :cond_12

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_18

    :cond_12
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->playerDied()V

    goto :goto_7

    .line 326
    :catch_16
    move-exception v0

    goto :goto_7

    .line 289
    :cond_18
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 290
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lastLevel:Ljava/lang/Object;

    if-eq v1, v2, :cond_29

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->lastLevel:Ljava/lang/Object;

    if-nez v1, :cond_52

    :goto_26
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->onLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 291
    :cond_29
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->test(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 292
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 293
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_7

    .line 294
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-ne v0, v3, :cond_55

    .line 295
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->safe(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v0, :cond_7

    .line 296
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->start(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto :goto_7

    .line 290
    :cond_52
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_26

    .line 299
    :cond_55
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    add-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 300
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->boost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 301
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    if-nez v0, :cond_74

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModCcef;->survived(J)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->achieve()V

    const-string v0, "survived 120 s"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 302
    :cond_74
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->slowTimer:J

    sub-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->slowTimer:J

    .line 303
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->slowTimer:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_9f

    const-wide/16 v2, 0x3e8

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->slowTimer:J

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clearPolice()V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockdown()Z

    move-result v0

    if-eqz v0, :cond_90

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    :cond_90
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    rem-long/2addr v2, v4

    cmp-long v0, v2, v8

    if-nez v0, :cond_9f

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 304
    :cond_9f
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b6

    .line 305
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    sub-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    .line 306
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_b2

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->land(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 307
    :cond_b2
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-eqz v0, :cond_7

    .line 309
    :cond_b6
    invoke-static {v1, p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->scanShots(Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 310
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_c2
    if-ltz v1, :cond_12d

    .line 311
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 312
    iget v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_fc

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->snapshot()V

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

    .line 310
    :goto_f8
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_c2

    .line 313
    :cond_fc
    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-eqz v2, :cond_117

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->classOf(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->queue(IF)V

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->snapshot()V

    const-string v0, "ship lost without a kill: redeploy"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    goto :goto_f8

    .line 314
    :cond_117
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->immune(Lfr/testudo/spacecorsair/business/Element;)V

    .line 315
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeState(Lfr/testudo/spacecorsair/business/Element;)[J

    move-result-object v2

    .line 316
    if-eqz v2, :cond_129

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModView;->outside(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-nez v3, :cond_129

    invoke-static {p0, v0, v2, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->missiles(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[JJ)V

    .line 317
    :cond_129
    invoke-static {v0, v1, p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModCcef;->aim(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;ILfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto :goto_f8

    .line 319
    :cond_12d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_15d

    .line 320
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->life:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_17a

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->snapshot()V

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

    .line 324
    :cond_15d
    :goto_15d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_169

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    if-eqz v0, :cond_194

    :cond_169
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    goto/16 :goto_7

    .line 321
    :cond_17a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-eqz v0, :cond_18e

    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->snapshot()V

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanLife:F

    goto :goto_15d

    .line 322
    :cond_18e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->immune(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_15d

    .line 325
    :cond_194
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-nez v0, :cond_7

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->win(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    :try_end_1a3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1a3} :catch_16

    goto/16 :goto_7
.end method

.method static titanEscaped(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 245
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_6

    .line 260
    :goto_5
    return-void

    .line 247
    :cond_6
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 248
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->diedSinceTitan:Z

    if-nez v1, :cond_17

    if-eqz v0, :cond_17

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_21

    :cond_17
    const-string v0, "titan sector left by death: no hunt"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_1d

    goto :goto_5

    .line 257
    :catch_1d
    move-exception v0

    .line 258
    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    goto :goto_5

    .line 249
    :cond_21
    :try_start_21
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->setOrigin(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 250
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 251
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 252
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 253
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 255
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 256
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
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_4d} :catch_1d

    goto :goto_5
.end method

.method static titanLivery(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 5

    .prologue
    .line 767
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eq p0, v0, :cond_a

    :cond_8
    move-object v0, p1

    .line 770
    :cond_9
    :goto_9
    return-object v0

    .line 768
    :cond_a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->tints:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCcef$Tint;

    .line 769
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
    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->diedSinceTitan:Z

    .line 218
    :try_start_3
    const-string v0, "Warning: a police titan has been deployed. Destroy it or slip its pursuit and you WILL be hunted down for good."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 219
    const-string v0, "titan warning"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_12

    .line 223
    :goto_11
    return-void

    .line 220
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method static warpInMs()J
    .registers 4

    .prologue
    .line 107
    const-string v0, "ccef.warp_in_s"

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/mod/ModTune;->f(Ljava/lang/String;FFF)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public static warpTime(IZ)I
    .registers 7

    .prologue
    .line 140
    if-eqz p1, :cond_14

    int-to-float v0, p0

    const-string v1, "ccef.warp_mult"

    const/high16 v2, 0x3fc00000    # 1.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModTune;->f(Ljava/lang/String;FFF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :cond_14
    return p0
.end method

.method private static win(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 442
    const-string v0, "squad destroyed"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 443
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->achieve()V

    .line 445
    :cond_10
    :try_start_10
    const-string v0, "ccef.reward_credits"

    const v2, 0x989680

    const/4 v3, 0x0

    const v4, 0x5f5e100

    invoke-static {v0, v2, v3, v4}, Lfr/testudo/spacecorsair/mod/ModTune;->i(Ljava/lang/String;III)I

    move-result v0

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModQol;->addCredits(ILfr/testudo/spacecorsair/business/Element;)V

    .line 446
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_72

    .line 448
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "v35_core_neutral"

    const-string v3, "neutral"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 449
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v4, v3

    move v0, v1

    :goto_3c
    if-ge v0, v4, :cond_63

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

    goto :goto_3c

    .line 450
    :cond_63
    const-string v0, "ccef_clears"

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clears()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 452
    :cond_72
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCreditInApp(I)V

    .line 453
    const-string v0, "Human Intergalactic Council: we did not know you were such a skilled hunter. Take this as the price of our mistake: 10,000,000 credits, 10 core parts, 2 cores of every faction and 20 alien credits. Know this: you will not escape next time."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_86} :catch_8c

    .line 457
    :goto_86
    const-string v0, "squad destroyed"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    .line 458
    return-void

    .line 454
    :catch_8c
    move-exception v0

    goto :goto_86
.end method
