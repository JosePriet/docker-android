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

    .line 152
    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 155
    const/4 v0, -0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    .line 160
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanLife:F

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    .line 168
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    .line 169
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 191
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->members:[Ljava/lang/Object;

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    .line 758
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->tints:Ljava/util/WeakHashMap;

    .line 782
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 817
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

    .line 850
    if-eqz p0, :cond_f

    :try_start_3
    const-string v1, "escapeCertainDeath"

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 853
    :cond_f
    :goto_f
    return-object v0

    .line 851
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

    .line 852
    :catch_20
    move-exception v1

    goto :goto_f
.end method

.method private static achieve()V
    .registers 3

    .prologue
    .line 840
    :try_start_0
    const-string v0, "escapeCertainDeath"

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->valueOf(Ljava/lang/String;)Lfr/testudo/spacecorsair/game/achievements/Achievement;

    move-result-object v0

    .line 841
    iget-boolean v1, v0, Lfr/testudo/spacecorsair/game/achievements/Achievement;->done:Z

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/achievements/Achievement;->setCompleted()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 845
    :cond_d
    :goto_d
    return-void

    .line 842
    :catch_e
    move-exception v0

    .line 843
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
    .line 685
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

    .line 710
    :goto_11
    return v0

    .line 687
    :cond_12
    :try_start_12
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 688
    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 689
    if-eqz v5, :cond_22

    iget-boolean v1, v5, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v1, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_11

    .line 690
    :cond_24
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    const v2, 0x3f0ccccd    # 0.55f

    mul-float v3, v1, v2

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    .line 691
    iget-boolean v2, v5, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v2, :cond_39

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-ne v5, v2, :cond_e0

    :cond_39
    const/4 v2, 0x1

    .line 692
    :goto_3a
    if-eqz v2, :cond_f9

    sget v2, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->evasive(I)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 696
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModView;->defaultRadius()F

    move-result v2

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->distanceShoot:F

    invoke-static {v2, v4, v6}, Lfr/testudo/spacecorsair/mod/ModCcef;->hideRadius(FFF)F

    move-result v2

    .line 697
    const/4 v4, 0x1

    aget v6, v0, v4

    long-to-float v7, p1

    sub-float/2addr v6, v7

    aput v6, v0, v4

    .line 698
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

    if-nez v4, :cond_e3

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_6e
    aput v4, v0, v6

    const/4 v6, 0x1

    const/4 v4, 0x0

    aget v4, v0, v4

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_e5

    const v4, 0x451c4000    # 2500.0f

    :goto_7d
    aput v4, v0, v6

    .line 699
    :cond_7f
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_f9

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_f9

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    .line 701
    :goto_90
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v6, v5, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v3, v4, v6, v2, v1}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->rangePoint(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;FF)V

    .line 703
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

    .line 704
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

    .line 705
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

    .line 706
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    const v2, 0x4101999a    # 8.1f

    invoke-static {p0, v1, p1, p2, v2}, Lfr/testudo/spacecorsair/mod/ModCcef;->steer(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;JF)V

    .line 707
    invoke-static {p0, v0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModCcef;->dodge(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[FJ)V

    .line 708
    const/4 v0, 0x1

    goto/16 :goto_11

    .line 691
    :cond_e0
    const/4 v2, 0x0

    goto/16 :goto_3a

    .line 698
    :cond_e3
    const/4 v4, 0x0

    goto :goto_6e

    :cond_e5
    const v4, 0x453b8000    # 3000.0f

    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_eb} :catch_f5

    move-result-wide v8

    const-wide v10, 0x409f400000000000L    # 2000.0

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v4, v7

    goto :goto_7d

    .line 709
    :catch_f5
    move-exception v0

    .line 710
    const/4 v0, 0x0

    goto/16 :goto_11

    :cond_f9
    move v2, v3

    goto :goto_90
.end method

.method private static aim(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;ILfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 16

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 632
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 633
    if-nez v0, :cond_e

    .line 651
    :cond_d
    :goto_d
    return-void

    .line 634
    :cond_e
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->guest()Lfr/testudo/spacecorsair/business/Element;

    move-result-object v4

    .line 635
    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->guestPrime:Z

    if-eqz v1, :cond_90

    if-eqz v4, :cond_90

    move-object v2, p2

    move-object v1, v4

    .line 636
    :goto_1a
    if-eqz v2, :cond_23

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModCcef;->secondarySlot(I)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object v1, v2

    .line 637
    :cond_23
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 638
    if-eqz v4, :cond_89

    if-eq v4, p2, :cond_89

    if-eq v4, v2, :cond_89

    instance-of v2, v4, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v2, :cond_89

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v2

    if-nez v2, :cond_89

    iget-boolean v2, v4, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_89

    iget v2, v4, Lfr/testudo/spacecorsair/business/Element;->life:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_89

    move v2, v3

    .line 639
    :goto_40
    aget v5, v0, v7

    long-to-float v6, p3

    sub-float/2addr v5, v6

    aput v5, v0, v7

    .line 640
    aget v5, v0, v7

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_7f

    .line 641
    const v5, 0x453b8000    # 3000.0f

    aput v5, v0, v7

    .line 642
    if-nez v2, :cond_7f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v6, v8

    if-gez v0, :cond_7f

    .line 643
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->prey(Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_7f

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

    .line 647
    :cond_7f
    if-nez v2, :cond_d

    if-eq v4, v1, :cond_d

    .line 648
    if-ne v1, p2, :cond_8b

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    goto :goto_d

    .line 638
    :cond_89
    const/4 v2, 0x0

    goto :goto_40

    .line 649
    :cond_8b
    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    goto/16 :goto_d

    :cond_90
    move-object v2, v4

    move-object v1, p2

    goto :goto_1a
.end method

.method private static arrival(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 7

    .prologue
    .line 359
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

    .line 360
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0
.end method

.method private static boost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 3

    .prologue
    const v1, 0x3f8ccccd    # 1.1f

    .line 498
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityDuree:I

    if-lez v0, :cond_d

    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 499
    :cond_d
    iput v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityValue:F

    .line 500
    const/16 v0, 0xfa

    iput v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityDuree:I

    .line 502
    :cond_13
    return-void
.end method

.method public static calm(Lfr/testudo/spacecorsair/business/world/civil/CivilShip;)Z
    .registers 7

    .prologue
    const/high16 v5, 0x45fa0000    # 8000.0f

    .line 586
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

    .line 601
    :goto_1d
    return v0

    .line 588
    :cond_1e
    :try_start_1e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 589
    const/4 v1, 0x0

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    .line 590
    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->ESCAPE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 591
    if-eqz v0, :cond_65

    .line 592
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->subtract(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 593
    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 594
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

    .line 595
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->goal:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->setEscapePoint(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 597
    :cond_65
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onChaseStop()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_68} :catch_6a

    .line 601
    :goto_68
    const/4 v0, 0x1

    goto :goto_1d

    .line 598
    :catch_6a
    move-exception v0

    goto :goto_68
.end method

.method public static chase()Z
    .registers 2

    .prologue
    .line 174
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
    .line 571
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 572
    iget-object v3, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 573
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 574
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 575
    if-eqz v0, :cond_28

    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_28

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->isPolice(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 573
    :cond_28
    :goto_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 576
    :cond_2c
    const/4 v4, 0x1

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    .line 577
    iget-object v4, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toDelete:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_28

    .line 579
    :catch_35
    move-exception v0

    .line 582
    :cond_36
    return-void
.end method

.method static clears()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 859
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 860
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

    .line 507
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

    .line 512
    :cond_14
    :goto_14
    return p1

    .line 508
    :cond_15
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_23

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 509
    :cond_23
    :goto_23
    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_14

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 510
    const/4 v0, 0x1

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->playerHit(FZZ)F
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_37} :catch_3b

    move-result p1

    goto :goto_14

    .line 508
    :cond_39
    const/4 v0, 0x0

    goto :goto_23

    .line 511
    :catch_3b
    move-exception v0

    goto :goto_14
.end method

.method private static dodge(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[FJ)V
    .registers 14

    .prologue
    .line 725
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    add-float v2, v0, v1

    .line 726
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c0

    .line 727
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 728
    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->removed:Z

    if-eqz v3, :cond_27

    .line 726
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 729
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

    .line 730
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

    .line 731
    mul-float v0, v5, v5

    mul-float v7, v6, v6

    add-float/2addr v0, v7

    .line 732
    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, v0, v7

    if-ltz v7, :cond_23

    .line 733
    mul-float v7, v3, v5

    mul-float v8, v4, v6

    add-float/2addr v7, v8

    div-float/2addr v7, v0

    .line 734
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_23

    const/high16 v8, 0x42a00000    # 80.0f

    cmpl-float v8, v7, v8

    if-gtz v8, :cond_23

    .line 735
    mul-float v8, v5, v7

    sub-float/2addr v3, v8

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    .line 736
    mul-float v7, v3, v3

    mul-float v8, v4, v4

    add-float/2addr v7, v8

    mul-float v8, v2, v2

    const/high16 v9, 0x40100000    # 2.25f

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_23

    .line 737
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 738
    neg-float v0, v6

    mul-float/2addr v0, v3

    mul-float v2, v4, v5

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_c1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 739
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

    .line 740
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    neg-float v4, v6

    div-float/2addr v4, v1

    mul-float/2addr v4, v2

    mul-float/2addr v4, v0

    div-float v1, v5, v1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {v3, v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 741
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

    .line 744
    :cond_c0
    return-void

    .line 738
    :cond_c1
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_8e
.end method

.method public static doomScale(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 2

    .prologue
    .line 533
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

    .line 821
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-eqz v0, :cond_f

    .line 835
    :cond_e
    :goto_e
    return-void

    .line 823
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

    .line 824
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

    .line 825
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 826
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->txt:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    neg-float v0, v0

    mul-float v2, p1, v8

    const/high16 v4, 0x42200000    # 40.0f

    add-float/2addr v2, v4

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 827
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

    .line 828
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->txt:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 829
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    long-to-float v0, v0

    const v1, 0x469c4000    # 20000.0f

    div-float/2addr v0, v1

    sub-float/2addr v9, v0

    .line 830
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

    .line 831
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

    .line 832
    :catch_ed
    move-exception v0

    goto/16 :goto_e
.end method

.method private static dress(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;IF)V
    .registers 6

    .prologue
    .line 420
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    mul-float/2addr v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    .line 421
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxLife:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    .line 422
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    mul-float/2addr v0, p2

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    .line 423
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    const v1, 0x3faccccd    # 1.35f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->pouseeForce:F

    .line 424
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->maxTurnFactor:F

    .line 425
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModV34;->bigShield:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;

    .line 426
    if-eqz v0, :cond_36

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    mul-float/2addr v1, p2

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cap:F

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->cur:F

    iget v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    mul-float/2addr v1, p2

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModV34$Sh;->rate:F

    .line 427
    :cond_36
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    if-eqz v0, :cond_4a

    move-object v0, p0

    .line 428
    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/ennemis/FrelonShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    .line 429
    if-eqz v0, :cond_4a

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    mul-float/2addr v1, p2

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iget v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->capacity:F

    iput v1, v0, Lfr/testudo/spacecorsair/business/player/Shield;->currentValue:F

    .line 431
    :cond_4a
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModPolice;->className(I)Ljava/lang/String;

    move-result-object v0

    .line 432
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

    .line 433
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->specificNameDecalX:I

    .line 434
    return-void

    .line 432
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
    .line 518
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->chase()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->members:[Ljava/lang/Object;

    array-length v0, v0

    if-eqz v0, :cond_d

    if-nez p0, :cond_e

    .line 529
    :cond_d
    :goto_d
    return-void

    .line 520
    :cond_e
    :try_start_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_15
    if-ltz v1, :cond_d

    .line 521
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 522
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-nez v2, :cond_23

    .line 520
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_15

    .line 523
    :cond_23
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    .line 524
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

    .line 526
    :catch_3d
    move-exception v0

    goto :goto_d
.end method

.method private static end(Ljava/lang/String;Z)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 456
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

    .line 457
    sput v4, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 458
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 459
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 462
    :try_start_26
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 463
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

    .line 464
    :catch_4d
    move-exception v0

    .line 467
    :cond_4e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_5b

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->removed:Z

    if-nez v0, :cond_5b

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->standDown()V

    .line 468
    :cond_5b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 469
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 470
    sput-object v5, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 471
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->snapshot()V

    .line 472
    sput-boolean v4, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    .line 473
    invoke-static {v5, v4}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    .line 474
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 475
    if-eqz p1, :cond_7d

    .line 476
    :try_start_74
    const-string v0, "The hunters have lost your trail."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7d} :catch_7e

    .line 478
    :cond_7d
    :goto_7d
    return-void

    .line 476
    :catch_7e
    move-exception v0

    goto :goto_7d
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

.method public static follows(I)Z
    .registers 2

    .prologue
    .line 128
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
    .line 654
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModLan;->proxy:Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 655
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
    .line 122
    const v0, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    .line 123
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

    .line 483
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareDuree:I

    .line 484
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationSnareValue:F

    .line 485
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityDuree:I

    .line 486
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationAgilityValue:F

    .line 487
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationPoisonDuree:I

    .line 488
    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadDuree:I

    .line 489
    iput v1, p0, Lfr/testudo/spacecorsair/business/Element;->alterationReloadValue:F

    .line 490
    return-void
.end method

.method public static immuneTo(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 2

    .prologue
    .line 494
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

    .line 201
    if-nez p0, :cond_4

    .line 204
    :cond_3
    :goto_3
    return v1

    .line 202
    :cond_4
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->members:[Ljava/lang/Object;

    move v0, v1

    .line 203
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
    .line 543
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockdown()Z

    move-result v0

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->warpTime(IZ)I

    move-result v0

    return v0
.end method

.method private static land(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 15

    .prologue
    .line 364
    const/4 v0, 0x3

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 365
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-nez v0, :cond_39

    const/4 v0, 0x1

    move v1, v0

    .line 366
    :goto_9
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clears()I

    move-result v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->scale(I)F

    move-result v13

    .line 367
    const/4 v2, 0x0

    .line 368
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1b
    if-ltz v3, :cond_f5

    .line 369
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

    .line 370
    if-nez v4, :cond_3c

    move v0, v2

    .line 368
    :goto_35
    add-int/lit8 v3, v3, -0x1

    move v2, v0

    goto :goto_1b

    .line 365
    :cond_39
    const/4 v0, 0x0

    move v1, v0

    goto :goto_9

    .line 371
    :cond_3c
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0, v13}, Lfr/testudo/spacecorsair/mod/ModCcef;->dress(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;IF)V

    .line 372
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

    .line 373
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

    .line 374
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

    .line 375
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->updateSapCoords()V

    .line 376
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->addToCurrentLevel()V

    .line 377
    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->initChasePlayer()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 378
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

    .line 379
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 381
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_ea

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 382
    :cond_ea
    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_35

    .line 372
    :cond_ee
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_5f

    .line 378
    :cond_f2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_ce

    .line 384
    :cond_f5
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    if-eqz v0, :cond_267

    .line 385
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

    .line 386
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v3, :cond_267

    .line 387
    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 388
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 389
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    const-string v3, "CCEF Titan"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    .line 390
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->specificName:Ljava/lang/String;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPoliceTitan;->rename(Ljava/lang/String;)V

    .line 391
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

    .line 392
    :cond_151
    add-int/lit8 v2, v2, 0x1

    move v12, v2

    .line 395
    :goto_154
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->snapshot()V

    .line 396
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_163

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    if-eqz v0, :cond_25f

    .line 397
    :cond_163
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1b9

    .line 398
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

    .line 399
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 400
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 401
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 402
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    .line 403
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c0

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-nez v0, :cond_1c0

    const-string v0, "landing failed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    .line 416
    :goto_1b5
    return-void

    .line 398
    :cond_1b6
    const-string v0, ""

    goto :goto_188

    .line 404
    :cond_1b9
    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const-wide/16 v2, 0x1f4

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    .line 406
    :cond_1c0
    :goto_1c0
    if-lez v12, :cond_1c5

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    .line 407
    :cond_1c5
    if-lez v12, :cond_223

    if-eqz v1, :cond_223

    .line 408
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

    .line 409
    const-string v0, "warp_in"

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    const-wide/16 v4, 0x5dc

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 410
    const-string v0, "flagship_horn"

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    const-wide/16 v4, 0xbb8

    invoke-static {v0, v1, v2, v4, v5}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 411
    const-string v0, "CCEF"

    const-string v1, "Local lockdown. Criminal marked for elimination"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xfa0

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModTitanAI;->callout(Ljava/lang/String;Ljava/lang/String;FFFI)V

    .line 412
    const-string v0, "CCEF, Central Criminal Elimination Force: we have landed. This sector is under local lockdown until the criminal is eliminated. Warping out will take longer."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 413
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    .line 415
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

    .line 405
    :cond_25f
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    goto/16 :goto_1c0

    .line 415
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
    .line 798
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

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x578

    rem-long/2addr v0, v2

    .line 787
    const-wide/16 v2, 0x2bc

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x8c

    cmp-long v0, v0, v2

    if-gez v0, :cond_80

    move v9, v8

    .line 788
    :goto_1c
    const/high16 v0, 0x42200000    # 40.0f

    const v1, 0x3e6147ae    # 0.22f

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 789
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    neg-float v2, p1

    mul-float/2addr v2, v11

    neg-float v4, p1

    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v4, v10}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 790
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 791
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    mul-float v2, p1, v11

    neg-float v4, p1

    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v10

    sget-object v10, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v4, v10}, Lfr/testudo/spacecorsair/mod/ModFx;->local(Lfr/testudo/spacecorsair/engine/Vector2;FFFLfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 792
    const-string v0, "fx_core"

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lb:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v10, 0x1

    move v4, v3

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->spr(Ljava/lang/String;FFFFFFFFFZ)V

    .line 793
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

    .line 794
    return-void

    .line 787
    :cond_80
    const v9, 0x3e4ccccd    # 0.2f

    goto :goto_1c
.end method

.method static livery(Ljava/lang/String;FLfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;
    .registers 7

    .prologue
    .line 750
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

    .line 751
    if-eqz v1, :cond_26

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, p1, p1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 755
    :goto_24
    return-object v0

    .line 752
    :catch_25
    move-exception v0

    .line 755
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
    .line 548
    if-nez p1, :cond_39

    .line 549
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

    .line 563
    :catch_31
    move-exception v0

    .line 566
    :cond_32
    :goto_32
    return-void

    .line 550
    :cond_33
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    goto :goto_32

    .line 553
    :cond_39
    if-eqz p0, :cond_32

    .line 554
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 555
    const/4 v0, 0x0

    move v1, v0

    :goto_3f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 556
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 557
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-nez v3, :cond_53

    .line 555
    :cond_4f
    :goto_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    .line 558
    :cond_53
    check-cast v0, Lfr/testudo/spacecorsair/business/world/Portal;

    .line 559
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 560
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->portals:Ljava/util/WeakHashMap;

    iget v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
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
    .line 179
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
    .line 926
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

    .line 927
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

    .line 328
    invoke-static {v9, v3}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockPortals(Lfr/testudo/spacecorsair/game/levels/Level;Z)V

    .line 329
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_42

    :cond_13
    move v2, v4

    .line 330
    :goto_14
    if-eqz v2, :cond_68

    .line 331
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

    .line 329
    goto :goto_14

    :cond_44
    move v0, v1

    .line 331
    goto :goto_3e

    .line 332
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

    .line 334
    :cond_68
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->st:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 336
    sput-object v9, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    .line 337
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->snapshot()V

    .line 338
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    .line 339
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-nez v0, :cond_81

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->restore()V

    .line 342
    :cond_80
    :goto_80
    return-void

    .line 340
    :cond_81
    if-eqz v2, :cond_91

    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->follows(I)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "trail lost"

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    goto :goto_80

    .line 341
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
    .line 186
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->diedSinceTitan:Z

    .line 187
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_d

    const-string v0, "player destroyed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    .line 188
    :cond_d
    return-void
.end method

.method public static playerHit(FZZ)F
    .registers 5

    .prologue
    .line 140
    if-nez p1, :cond_3

    .line 142
    :goto_2
    return p0

    .line 141
    :cond_3
    const v0, 0x3f933333    # 1.15f

    mul-float/2addr v0, p0

    .line 142
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

    .line 660
    if-nez p0, :cond_5

    move-object v3, v4

    .line 674
    :cond_4
    :goto_4
    return-object v3

    .line 662
    :cond_5
    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 664
    const v1, 0x44bb8000    # 1500.0f

    .line 665
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_13
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 666
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 667
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

    .line 665
    :goto_41
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v0

    goto :goto_13

    .line 668
    :cond_46
    instance-of v2, v0, Lfr/testudo/spacecorsair/business/ennemis/FixedTourelle;

    if-eqz v2, :cond_4c

    move-object v0, v3

    goto :goto_41

    .line 669
    :cond_4c
    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    .line 670
    cmpg-float v7, v2, v1

    if-gez v7, :cond_5f

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5a} :catch_5c

    move v1, v2

    goto :goto_41

    .line 673
    :catch_5c
    move-exception v0

    move-object v3, v4

    .line 674
    goto :goto_4

    :cond_5f
    move-object v0, v3

    goto :goto_41
.end method

.method private static queue(IF)V
    .registers 5

    .prologue
    .line 274
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
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

    .line 276
    return-void
.end method

.method private static queueFresh()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 265
    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    .line 266
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->toLand:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 267
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->toLandLife:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 268
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

    .line 269
    :cond_32
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titanToLand:Z

    .line 270
    sput v5, Lfr/testudo/spacecorsair/mod/ModCcef;->titanLife:F

    .line 271
    return-void
.end method

.method public static radar(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFLfr/testudo/spacecorsair/business/Element;)Z
    .registers 15

    .prologue
    const v8, 0x3f4ccccd    # 0.8f

    .line 803
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->lockdown()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 814
    :goto_a
    return v0

    .line 805
    :cond_b
    :try_start_b
    invoke-static {p5}, Lfr/testudo/spacecorsair/mod/ModCcef;->isCcef(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 806
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

    .line 807
    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, p4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 808
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

    .line 809
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

    .line 814
    :cond_5e
    :goto_5e
    const/4 v0, 0x1

    goto :goto_a

    .line 811
    :catch_60
    move-exception v0

    goto :goto_5e
.end method

.method static regularTitanKilled()V
    .registers 4

    .prologue
    .line 222
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_5

    .line 236
    :goto_4
    return-void

    .line 224
    :cond_5
    :try_start_5
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    .line 225
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->setOrigin(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 226
    const/4 v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 227
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 228
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 229
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    .line 230
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 231
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 232
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

    .line 233
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

    .line 878
    sget-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->restored:Z

    if-eqz v2, :cond_9

    .line 898
    :cond_8
    :goto_8
    return-void

    .line 879
    :cond_9
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModCcef;->restored:Z

    .line 881
    :try_start_b
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 882
    if-nez v2, :cond_67

    .line 883
    :goto_11
    if-eqz v0, :cond_8

    .line 884
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 885
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    .line 886
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lv:I

    .line 887
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 888
    const-string v2, "1"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 889
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 890
    array-length v2, v0

    if-le v2, v4, :cond_6f

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_52
    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    .line 891
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->queueFresh()V

    .line 892
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->guestPrime:Z

    .line 893
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 894
    const-string v0, "restored pending hunt"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_62} :catch_63

    goto :goto_8

    .line 895
    :catch_63
    move-exception v0

    .line 896
    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    goto :goto_8

    .line 882
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

    .line 890
    goto :goto_52
.end method

.method private static save()V
    .registers 6

    .prologue
    .line 866
    :try_start_0
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 867
    if-nez v0, :cond_7

    .line 873
    :goto_6
    return-void

    .line 868
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

    .line 870
    :catch_19
    move-exception v0

    goto :goto_6

    .line 869
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
    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 616
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->shotScan:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 628
    :cond_e
    return-void

    .line 617
    :cond_f
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shotScan:J

    .line 618
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 620
    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 621
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

    .line 622
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 623
    instance-of v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    if-eqz v3, :cond_38

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v3, :cond_3c

    .line 621
    :cond_38
    :goto_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 624
    :cond_3c
    check-cast v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 625
    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v3, :cond_38

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v3, v3, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v3, :cond_50

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/Mod;->isDrone(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 626
    :cond_50
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModCcef;->shots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38
.end method

.method public static secondarySlot(I)Z
    .registers 3

    .prologue
    .line 147
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
    .line 258
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->factionIndex(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->fi:I

    .line 259
    if-nez p0, :cond_19

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->level(I)I

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->lv:I

    .line 260
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPolice;->guestHeatLeads()Z

    move-result v0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->guestPrime:Z

    .line 261
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->queueFresh()V

    .line 262
    return-void

    .line 259
    :cond_19
    iget v0, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->levelMax:I

    goto :goto_9
.end method

.method public static shieldRate(F)F
    .registers 2

    .prologue
    .line 538
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

    .line 606
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

    .line 607
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

.method private static snapshot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 194
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_c
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 195
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

    .line 194
    goto :goto_c

    .line 196
    :cond_24
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v1, :cond_2f

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    aput-object v2, v0, v1

    .line 197
    :cond_2f
    sput-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->members:[Ljava/lang/Object;

    .line 198
    return-void
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
    .line 345
    const/4 v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 346
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landTries:I

    .line 347
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    .line 348
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPolice;->ccefStandDown(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 349
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clearPolice()V

    .line 350
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->arrival(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 351
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 352
    const-string v0, "Incoming transmission from the Human Intergalactic Council: for the crimes you have committed, you are sentenced to termination. The sentence will be carried out without delay."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 354
    :cond_2a
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playDanger()V

    .line 355
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

    .line 356
    return-void
.end method

.method static steer(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/engine/Vector2;JF)V
    .registers 13

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 716
    iget v0, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 717
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 718
    div-float v2, p4, v2

    const v3, 0x3c449ba6    # 0.012f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 719
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    const/high16 v4, 0x435c0000    # 220.0f

    div-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 720
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

    .line 721
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
    .registers 7

    .prologue
    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 906
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->testAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 923
    :goto_e
    return-void

    .line 907
    :cond_f
    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->testAt:J

    .line 908
    const-string v0, "corsair_ccef"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModDev;->testFlag(Ljava/lang/String;)Z

    move-result v0

    .line 909
    if-eqz v0, :cond_41

    sget-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->testOn:Z

    if-nez v1, :cond_41

    sget v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-nez v1, :cond_41

    .line 911
    :try_start_21
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->setOrigin(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 912
    const/4 v1, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 913
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 914
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 915
    const/4 v1, 0x0

    sput v1, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    .line 916
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 917
    const-string v1, "test trigger"

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_41} :catch_44

    .line 922
    :cond_41
    :goto_41
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->testOn:Z

    goto :goto_e

    .line 918
    :catch_44
    move-exception v1

    goto :goto_41
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 282
    if-nez p0, :cond_8

    .line 324
    :cond_7
    :goto_7
    return-void

    .line 283
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

    .line 321
    :catch_16
    move-exception v0

    goto :goto_7

    .line 284
    :cond_18
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    .line 285
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModCcef;->lastLevel:Ljava/lang/Object;

    if-eq v1, v2, :cond_29

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModCcef;->lastLevel:Ljava/lang/Object;

    if-nez v1, :cond_52

    :goto_26
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->onLevel(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 286
    :cond_29
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->test(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 287
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 288
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_7

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-nez v0, :cond_7

    .line 289
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-ne v0, v3, :cond_55

    .line 290
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->safe(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModPrologue;->active:Z

    if-nez v0, :cond_7

    .line 291
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->start(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    goto :goto_7

    .line 285
    :cond_52
    iget-object v0, v1, Lfr/testudo/spacecorsair/game/levels/Level;->id:Lfr/testudo/spacecorsair/game/levels/LevelId;

    goto :goto_26

    .line 294
    :cond_55
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    add-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 295
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->boost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 296
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

    .line 297
    :cond_74
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->slowTimer:J

    sub-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->slowTimer:J

    .line 298
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

    .line 299
    :cond_9f
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b6

    .line 300
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    sub-long/2addr v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    .line 301
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModCcef;->warpLeft:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_b2

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->land(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 302
    :cond_b2
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->landed:Z

    if-eqz v0, :cond_7

    .line 304
    :cond_b6
    invoke-static {v1, p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->scanShots(Lfr/testudo/spacecorsair/game/levels/Level;Lfr/testudo/spacecorsair/business/player/PlayerShip;)V

    .line 305
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_c2
    if-ltz v1, :cond_12d

    .line 306
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->squad:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 307
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

    .line 305
    :goto_f8
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_c2

    .line 308
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

    .line 309
    :cond_117
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->immune(Lfr/testudo/spacecorsair/business/Element;)V

    .line 310
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModPolice;->policeState(Lfr/testudo/spacecorsair/business/Element;)[J

    move-result-object v2

    .line 311
    if-eqz v2, :cond_129

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModView;->outside(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v3

    if-nez v3, :cond_129

    invoke-static {p0, v0, v2, p1, p2}, Lfr/testudo/spacecorsair/mod/ModPolice;->missiles(Lfr/testudo/spacecorsair/business/player/PlayerShip;Lfr/testudo/spacecorsair/business/ennemis/Ennemis;[JJ)V

    .line 312
    :cond_129
    invoke-static {v0, v1, p0, p1, p2}, Lfr/testudo/spacecorsair/mod/ModCcef;->aim(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;ILfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto :goto_f8

    .line 314
    :cond_12d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eqz v0, :cond_15d

    .line 315
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

    .line 319
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

    .line 316
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

    .line 317
    :cond_18e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->immune(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_15d

    .line 320
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

    .line 240
    sget v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    if-eqz v0, :cond_6

    .line 255
    :goto_5
    return-void

    .line 242
    :cond_6
    :try_start_6
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 243
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

    .line 252
    :catch_1d
    move-exception v0

    .line 253
    sput v2, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    goto :goto_5

    .line 244
    :cond_21
    :try_start_21
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModCcef;->setOrigin(Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 245
    const/4 v0, 0x1

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->phase:I

    .line 246
    const-wide/16 v0, 0x0

    sput-wide v0, Lfr/testudo/spacecorsair/mod/ModCcef;->clock:J

    .line 247
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->kills:I

    .line 248
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/mod/ModCcef;->hops:I

    .line 249
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    .line 250
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->save()V

    .line 251
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
    .line 762
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->titan:Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    if-eq p0, v0, :cond_a

    :cond_8
    move-object v0, p1

    .line 765
    :cond_9
    :goto_9
    return-object v0

    .line 763
    :cond_a
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCcef;->tints:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModCcef$Tint;

    .line 764
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
    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->diedSinceTitan:Z

    .line 213
    :try_start_3
    const-string v0, "Warning: a police titan has been deployed. Destroy it or slip its pursuit and you WILL be hunted down for good."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V

    .line 214
    const-string v0, "titan warning"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_12

    .line 218
    :goto_11
    return-void

    .line 215
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public static warpTime(IZ)I
    .registers 4

    .prologue
    .line 135
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

    .line 437
    const-string v0, "squad destroyed"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModCcef;->log(Ljava/lang/String;)V

    .line 438
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModCcef;->achGiven:Z

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->achieve()V

    .line 440
    :cond_10
    const v0, 0x989680

    :try_start_13
    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModQol;->addCredits(ILfr/testudo/spacecorsair/business/Element;)V

    .line 441
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_68

    .line 443
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "v35_core_neutral"

    const-string v3, "neutral"

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModV35;->cores(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 444
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

    .line 445
    :cond_59
    const-string v0, "ccef_clears"

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModCcef;->clears()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    :cond_68
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCreditInApp(I)V

    .line 448
    const-string v0, "Human Intergalactic Council: we did not know you were such a skilled hunter. Take this as the price of our mistake: 10,000,000 credits, 10 core parts, 2 cores of every faction and 20 alien credits. Know this: you will not escape next time."

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModQol;->post(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_7c} :catch_82

    .line 452
    :goto_7c
    const-string v0, "squad destroyed"

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModCcef;->end(Ljava/lang/String;Z)V

    .line 453
    return-void

    .line 449
    :catch_82
    move-exception v0

    goto :goto_7c
.end method
