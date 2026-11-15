.class public final Lfr/testudo/spacecorsair/mod/ModHornet;
.super Ljava/lang/Object;
.source "ModHornet.java"


# static fields
.field static final ARC_DEG:F = 45.0f

.field static final ART:Ljava/lang/String; = "hornet"

.field static final COOL_AFTER_MS:J = 0x9c4L

.field static final COOL_PER_S:F = 0.2f

.field static final CUT:F = 0.15f

.field private static D:F = 0.0f

.field static final HEAT_CAP_SHARE:F = 0.35f

.field private static final NB:I = 0xc

.field static final OVERHEAT_MIN_MS:J = 0x1770L

.field static final OVERHEAT_QUIET_MS:J = 0xbb8L

.field static final RELEASE_MS:J = 0xfa0L

.field static final REST:[[F

.field static final STING_DOT_S:F = 3.0f

.field static final STING_EVERY_MS:J = 0x384L

.field static final STING_RANGE:F = 1500.0f

.field static final STING_SHARE:F = 0.35f

.field static final STX:F = 514.0f

.field static final STY:F = 214.7f

.field static final THREAT_TAU_MS:J = 0xbb8L

.field static final TRAVEL_MS:J = 0x2bcL

.field static final W:[Ljava/lang/String;

.field static final WPX:F = 400.0f

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static aimT:F

.field private static aimX:F

.field private static aimY:F

.field private static final assignedAt:[J

.field private static final b:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final heat:[F

.field private static final hotSince:[J

.field private static lastAssign:J

.field private static lastPlayerHit:J

.field private static final lastShHit:[J

.field private static lastT:J

.field private static logs:I

.field private static placed:Z

.field private static final px:[F

.field private static final py:[F

.field private static final rot:[F

.field private static final shArrive:[F

.field private static final shDir:[F

.field private static final shOn:[Z

.field private static stingFlash:F

.field private static stingMs:J

.field private static final threat:[F

.field private static final vx:[F

.field private static final vy:[F


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 44
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "FL"

    aput-object v1, v0, v4

    const-string v1, "FR"

    aput-object v1, v0, v5

    const-string v1, "RL"

    aput-object v1, v0, v2

    const-string v1, "RR"

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->W:[Ljava/lang/String;

    .line 46
    new-array v0, v3, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_90

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_98

    aput-object v1, v0, v5

    new-array v1, v2, [F

    fill-array-data v1, :array_a0

    aput-object v1, v0, v2

    new-array v1, v2, [F

    fill-array-data v1, :array_a8

    aput-object v1, v0, v6

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->REST:[[F

    .line 52
    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->px:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->py:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->vx:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->vy:[F

    new-array v0, v3, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->rot:[F

    .line 55
    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    .line 60
    new-array v0, v2, [F

    fill-array-data v0, :array_b0

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->shDir:[F

    .line 61
    new-array v0, v2, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    .line 62
    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->shArrive:[F

    .line 63
    new-array v0, v2, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    .line 64
    new-array v0, v2, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->lastShHit:[J

    new-array v0, v2, [J

    fill-array-data v0, :array_b8

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->hotSince:[J

    new-array v0, v2, [J

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->assignedAt:[J

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->dots:Ljava/util/List;

    .line 300
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->b:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void

    .line 46
    nop

    :array_90
    .array-data 4
        0x4359999a    # 217.6f
        0x435b999a    # 219.6f
    .end array-data

    :array_98
    .array-data 4
        0x4449b333    # 806.8f
        0x435b3333    # 219.2f
    .end array-data

    :array_a0
    .array-data 4
        0x435b999a    # 219.6f
        0x44556666    # 853.6f
    .end array-data

    :array_a8
    .array-data 4
        0x44490000    # 804.0f
        0x44556666    # 853.6f
    .end array-data

    .line 60
    :array_b0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    .line 64
    :array_b8
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 82
    if-eqz p0, :cond_b

    :try_start_3
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-nez v1, :cond_c

    .line 86
    :cond_b
    :goto_b
    return v0

    .line 83
    :cond_c
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_b

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->useParts(Ljava/lang/String;I)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_25} :catch_2a

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    .line 85
    :catch_2a
    move-exception v1

    goto :goto_b
.end method

.method private static angDiff(FF)F
    .registers 5

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 105
    sub-float v0, p0, p1

    rem-float/2addr v0, v2

    .line 106
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_c

    sub-float/2addr v0, v2

    .line 107
    :cond_c
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    add-float/2addr v0, v2

    .line 108
    :cond_13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private static assign(J)V
    .registers 16

    .prologue
    const/16 v10, 0xc

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    sget-wide v0, Lfr/testudo/spacecorsair/mod/ModHornet;->lastPlayerHit:J

    sub-long v0, p0, v0

    const-wide/16 v8, 0xfa0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_1a

    move v0, v5

    :goto_11
    if-ge v0, v10, :cond_1a

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 156
    :cond_1a
    const/4 v0, -0x1

    const/4 v4, -0x1

    move v1, v5

    .line 157
    :goto_1d
    if-ge v1, v10, :cond_3c

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    aget v2, v2, v1

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v7

    if-lez v2, :cond_39

    if-ltz v0, :cond_38

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    aget v2, v2, v1

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    aget v7, v7, v0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_39

    :cond_38
    move v0, v1

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_3c
    move v2, v5

    move v1, v4

    .line 158
    :goto_3e
    if-ltz v0, :cond_74

    if-ge v2, v10, :cond_74

    .line 159
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    aget v4, v4, v2

    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v4, v4, v7

    if-lez v4, :cond_61

    sub-int v4, v0, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v7, v0, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0xc

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v4, v6, :cond_64

    .line 158
    :cond_61
    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 160
    :cond_64
    if-ltz v1, :cond_72

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    aget v4, v4, v2

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    aget v7, v7, v1

    cmpl-float v4, v4, v7

    if-lez v4, :cond_61

    :cond_72
    move v1, v2

    goto :goto_61

    .line 162
    :cond_74
    if-gez v0, :cond_b8

    move v4, v3

    :goto_77
    if-gez v1, :cond_bd

    move v2, v3

    .line 163
    :goto_7a
    new-array v3, v12, [F

    .line 164
    new-array v7, v12, [Z

    .line 165
    if-ltz v0, :cond_c8

    if-ltz v1, :cond_c8

    .line 166
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c2

    move v1, v6

    .line 167
    :goto_97
    if-eqz v1, :cond_c4

    move v0, v4

    :goto_9a
    aput v0, v3, v5

    if-eqz v1, :cond_c6

    :goto_9e
    aput v2, v3, v6

    .line 168
    aput-boolean v6, v7, v6

    aput-boolean v6, v7, v5

    :cond_a4
    :goto_a4
    move v0, v5

    .line 173
    :goto_a5
    if-ge v0, v12, :cond_12c

    .line 174
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->hotSince:[J

    aget-wide v8, v1, v0

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-ltz v1, :cond_e0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    aput-boolean v5, v1, v0

    .line 173
    :cond_b5
    :goto_b5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 162
    :cond_b8
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModHornet;->binDeg(I)F

    move-result v4

    goto :goto_77

    :cond_bd
    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModHornet;->binDeg(I)F

    move-result v2

    goto :goto_7a

    :cond_c2
    move v1, v5

    .line 166
    goto :goto_97

    :cond_c4
    move v0, v2

    .line 167
    goto :goto_9a

    :cond_c6
    move v2, v4

    goto :goto_9e

    .line 169
    :cond_c8
    if-ltz v0, :cond_a4

    .line 170
    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_de

    move v0, v5

    .line 171
    :goto_d9
    aput v4, v3, v0

    aput-boolean v6, v7, v0

    goto :goto_a4

    :cond_de
    move v0, v6

    .line 170
    goto :goto_d9

    .line 175
    :cond_e0
    aget-boolean v1, v7, v0

    if-eqz v1, :cond_109

    .line 176
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_fa

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->shDir:[F

    aget v1, v1, v0

    aget v2, v3, v0

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->angDiff(FF)F

    move-result v1

    const/high16 v2, 0x420c0000    # 35.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_fe

    :cond_fa
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->assignedAt:[J

    aput-wide p0, v1, v0

    .line 177
    :cond_fe
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->shDir:[F

    aget v2, v3, v0

    aput v2, v1, v0

    .line 178
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    aput-boolean v6, v1, v0

    goto :goto_b5

    .line 179
    :cond_109
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_b5

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->lastShHit:[J

    aget-wide v8, v1, v0

    sub-long v8, p0, v8

    const-wide/16 v10, 0xfa0

    cmp-long v1, v8, v10

    if-ltz v1, :cond_b5

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->assignedAt:[J

    aget-wide v8, v1, v0

    sub-long v8, p0, v8

    const-wide/16 v10, 0xfa0

    cmp-long v1, v8, v10

    if-ltz v1, :cond_b5

    .line 180
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    aput-boolean v5, v1, v0

    goto :goto_b5

    .line 183
    :cond_12c
    return-void
.end method

.method private static binDeg(I)F
    .registers 3

    .prologue
    .line 185
    int-to-float v0, p0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static cap(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F
    .registers 4

    .prologue
    .line 150
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->maxLife:F

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 15

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 197
    cmpg-float v1, p1, v6

    if-lez v1, :cond_14

    if-eqz p2, :cond_14

    if-eqz p0, :cond_14

    :try_start_10
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v1, :cond_15

    .line 235
    :cond_14
    :goto_14
    return p1

    .line 198
    :cond_15
    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 199
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->active(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 201
    instance-of v1, p2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v1, :cond_25

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v1, :cond_7d

    .line 202
    :cond_25
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v1, :cond_14

    .line 203
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 208
    :goto_35
    invoke-static {p0, v2, v1}, Lfr/testudo/spacecorsair/mod/ModHornet;->localDeg(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)F

    move-result v2

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 210
    sput-wide v4, Lfr/testudo/spacecorsair/mod/ModHornet;->lastPlayerHit:J

    .line 211
    cmpg-float v1, v2, v6

    if-gez v1, :cond_93

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v1, v2

    :goto_46
    const/high16 v3, 0x41f00000    # 30.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    rem-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0xc

    rem-int/lit8 v1, v1, 0xc

    .line 212
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    aget v6, v3, v1

    add-float/2addr v6, p1

    aput v6, v3, v1

    move v1, v0

    .line 214
    :goto_5b
    const/4 v0, 0x2

    if-ge v1, v0, :cond_14

    .line 215
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_79

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->hotSince:[J

    aget-wide v6, v0, v1

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_79

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->shArrive:[F

    aget v0, v0, v1

    const v3, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_95

    .line 214
    :cond_79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5b

    .line 206
    :cond_7d
    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v2, v4

    sub-float v2, v1, v2

    iget-object v1, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v3, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    goto :goto_35

    :cond_93
    move v1, v2

    .line 211
    goto :goto_46

    .line 216
    :cond_95
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->shDir:[F

    aget v0, v0, v1

    invoke-static {v2, v0}, Lfr/testudo/spacecorsair/mod/ModHornet;->angDiff(FF)F

    move-result v0

    const/high16 v3, 0x42340000    # 45.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_79

    .line 217
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->cap(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v2

    .line 218
    const v0, 0x3e19999a    # 0.15f

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    aget v6, v6, v1

    div-float/2addr v6, v2

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v3, v11

    sub-float v3, v10, v3

    mul-float/2addr v0, v3

    .line 219
    sub-float v0, v10, v0

    mul-float/2addr v0, p1

    .line 220
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    aget v6, v3, v1

    add-float/2addr v6, p1

    aput v6, v3, v1

    .line 221
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->lastShHit:[J

    aput-wide v4, v3, v1

    .line 222
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    aget v3, v3, v1

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_113

    .line 223
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->hotSince:[J

    aput-wide v4, v2, v1

    .line 224
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 225
    const-string v2, "shield_down"

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3fa66666    # 1.3f

    const-wide/16 v6, 0x320

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 226
    const-string v2, "WING SHIELD OVERHEATED"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f0ccccd    # 0.55f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {p0, v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shield "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overheated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModHornet;->log(Ljava/lang/String;)V

    move p1, v0

    goto/16 :goto_14

    .line 228
    :cond_113
    sget v3, Lfr/testudo/spacecorsair/mod/ModHornet;->logs:I

    const/16 v4, 0x28

    if-ge v3, v4, :cond_161

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shield "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-float v4, p1, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " heat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x42c80000    # 100.0f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    aget v1, v5, v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModHornet;->log(Ljava/lang/String;)V
    :try_end_15b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15b} :catch_15e

    move p1, v0

    goto/16 :goto_14

    .line 234
    :catch_15e
    move-exception v0

    goto/16 :goto_14

    :cond_161
    move p1, v0

    goto/16 :goto_14
.end method

.method private static localDeg(Lfr/testudo/spacecorsair/business/player/PlayerShip;FF)F
    .registers 13

    .prologue
    .line 98
    iget v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 99
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v4, p1, v4

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v5, p2, v5

    .line 100
    float-to-double v6, v4

    mul-double/2addr v6, v2

    float-to-double v8, v5

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    neg-float v4, v4

    float-to-double v8, v4

    mul-double/2addr v0, v8

    float-to-double v4, v5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 101
    float-to-double v2, v6

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 240
    sget v0, Lfr/testudo/spacecorsair/mod/ModHornet;->logs:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModHornet;->logs:I

    const/16 v1, 0x78

    if-ge v0, v1, :cond_f

    const-string v0, "hornet"

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_f
    return-void
.end method

.method private static lx(F)F
    .registers 3

    .prologue
    .line 90
    const/high16 v0, 0x44800000    # 1024.0f

    div-float v0, p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    sget v1, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private static norm(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 188
    rem-float v0, p0, v2

    .line 189
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    sub-float/2addr v0, v2

    .line 190
    :cond_b
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    add-float/2addr v0, v2

    .line 191
    :cond_12
    return v0
.end method

.method public static over(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 14

    .prologue
    .line 390
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->active(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 415
    :cond_6
    :goto_6
    return-void

    .line 391
    :cond_7
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_6

    iget-object v1, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_6

    .line 393
    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v0, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 395
    sget-object v11, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 396
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_115

    .line 398
    :try_start_20
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->shArrive:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->shArrive:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 399
    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3e4ccccd    # 0.2f

    long-to-double v0, v0

    const-wide v6, 0x407f400000000000L    # 500.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    sget v2, Lfr/testudo/spacecorsair/mod/ModHornet;->stingFlash:F

    mul-float/2addr v1, v2

    add-float v9, v0, v1

    .line 400
    const-string v0, "hornet_stage5_core"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "hornet_stage5_core"

    iget v1, v11, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, v11, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v3, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    sget v4, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 401
    :cond_73
    const v0, 0x44008000    # 514.0f

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(F)F

    move-result v0

    const v1, 0x4356b333    # 214.7f

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(F)F

    move-result v1

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {p0, v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->toWorld(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)V

    .line 402
    iget v0, v11, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v1, v0

    iget v0, v11, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v2, v0

    .line 403
    const-string v0, "fx_glow"

    const v3, 0x3e23d70a    # 0.16f

    sget v4, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float/2addr v3, v4

    const v4, 0x3e23d70a    # 0.16f

    sget v5, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3e4ccccd    # 0.2f

    const v9, 0x3ee66666    # 0.45f

    const/high16 v10, 0x3f000000    # 0.5f

    sget v12, Lfr/testudo/spacecorsair/mod/ModHornet;->stingFlash:F

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 404
    sget v0, Lfr/testudo/spacecorsair/mod/ModHornet;->aimT:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_110

    .line 405
    sget v0, Lfr/testudo/spacecorsair/mod/ModHornet;->aimX:F

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v3

    iget v3, v11, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v0

    sget v0, Lfr/testudo/spacecorsair/mod/ModHornet;->aimY:F

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v4

    iget v4, v11, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v4, v0

    .line 406
    sub-float v0, v3, v1

    float-to-double v6, v0

    sub-float v0, v4, v2

    neg-float v0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 407
    const-string v0, "fx_glow"

    sub-float/2addr v3, v1

    const v6, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    sub-float v3, v4, v2

    const v4, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const v3, 0x3d75c28f    # 0.06f

    sget v4, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float/2addr v3, v4

    const v4, 0x3e6147ae    # 0.22f

    sget v6, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f59999a    # 0.85f

    const v8, 0x3ecccccd    # 0.4f

    const v9, 0x3f4ccccd    # 0.8f

    sget v10, Lfr/testudo/spacecorsair/mod/ModHornet;->aimT:F

    mul-float/2addr v9, v10

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V
    :try_end_110
    .catchall {:try_start_20 .. :try_end_110} :catchall_11b

    .line 410
    :cond_110
    const/4 v0, 0x0

    :try_start_111
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_113
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_113} :catch_115

    goto/16 :goto_6

    .line 412
    :catch_115
    move-exception v0

    .line 413
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_6

    .line 410
    :catchall_11b
    move-exception v0

    const/4 v1, 0x0

    :try_start_11d
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 411
    throw v0
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_120} :catch_115
.end method

.method private static reset()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 112
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModHornet;->placed:Z

    .line 113
    const-wide/16 v2, 0x0

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModHornet;->lastT:J

    move v0, v1

    .line 114
    :goto_9
    const/16 v2, 0xc

    if-ge v0, v2, :cond_14

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    aput v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_14
    move v0, v1

    .line 115
    :goto_15
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2d

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    aput-boolean v1, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->shArrive:[F

    aput v6, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    aput v6, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->hotSince:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 116
    :cond_2d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->dots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    return-void
.end method

.method private static sting(Lfr/testudo/spacecorsair/business/player/PlayerShip;JJ)V
    .registers 22

    .prologue
    .line 246
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->dots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    :goto_9
    if-ltz v5, :cond_53

    .line 247
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->dots:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 248
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Lfr/testudo/spacecorsair/business/Element;

    .line 249
    const/4 v4, 0x2

    aget-object v4, v2, v4

    check-cast v4, [J

    const/4 v6, 0x0

    aget-wide v6, v4, v6

    .line 250
    iget-boolean v4, v3, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_2f

    iget v4, v3, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v8, 0x0

    cmpg-float v4, v4, v8

    if-lez v4, :cond_2f

    cmp-long v4, p3, v6

    if-ltz v4, :cond_38

    :cond_2f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->dots:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    :cond_34
    :goto_34
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_9

    .line 251
    :cond_38
    const/4 v4, 0x1

    aget-object v2, v2, v4

    check-cast v2, [F

    const/4 v4, 0x0

    aget v2, v2, v4

    move-wide/from16 v0, p1

    long-to-float v4, v0

    mul-float/2addr v2, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    .line 252
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_34

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v3, v0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModV34;->skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V

    goto :goto_34

    .line 254
    :cond_53
    const/4 v2, 0x0

    sget v3, Lfr/testudo/spacecorsair/mod/ModHornet;->stingFlash:F

    move-wide/from16 v0, p1

    long-to-float v4, v0

    const/high16 v5, 0x437a0000    # 250.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModHornet;->stingFlash:F

    .line 255
    const/4 v2, 0x0

    sget v3, Lfr/testudo/spacecorsair/mod/ModHornet;->aimT:F

    move-wide/from16 v0, p1

    long-to-float v4, v0

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sput v2, Lfr/testudo/spacecorsair/mod/ModHornet;->aimT:F

    .line 256
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModHornet;->stingMs:J

    sub-long v2, v2, p1

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModHornet;->stingMs:J

    .line 257
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModHornet;->stingMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_87

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-eqz v2, :cond_88

    .line 297
    :cond_87
    :goto_87
    return-void

    .line 258
    :cond_88
    const-wide/16 v2, 0x384

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModHornet;->stingMs:J

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    if-eqz v2, :cond_87

    .line 260
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v6, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 261
    const/16 v16, 0x0

    .line 262
    const v3, 0x44bb8000    # 1500.0f

    .line 263
    const/4 v2, 0x0

    move v5, v2

    :goto_a1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_e0

    .line 264
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 265
    if-eqz v2, :cond_21b

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_21b

    iget-boolean v4, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_21b

    iget v4, v2, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_c6

    move-object/from16 v2, v16

    .line 263
    :goto_c0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object/from16 v16, v2

    goto :goto_a1

    .line 266
    :cond_c6
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->standing(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_d0

    move-object/from16 v2, v16

    goto :goto_c0

    .line 267
    :cond_d0
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v7}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    .line 268
    cmpg-float v7, v4, v3

    if-gez v7, :cond_21b

    move v3, v4

    goto :goto_c0

    .line 270
    :cond_e0
    if-eqz v16, :cond_87

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3eb33333    # 0.35f

    mul-float v4, v2, v3

    .line 273
    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v2, v4

    const/high16 v3, 0x40400000    # 3.0f

    div-float v5, v2, v3

    .line 274
    const/4 v3, 0x0

    .line 275
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->dots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_103
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_117

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    move-object/from16 v0, v16

    if-ne v7, v0, :cond_103

    move-object v3, v2

    .line 276
    :cond_117
    if-nez v3, :cond_1fd

    .line 277
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->dots:Ljava/util/List;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v5, v6, v7

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    const-wide/16 v8, 0xbb8

    add-long v8, v8, p3

    aput-wide v8, v5, v6

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :goto_13a
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_14a

    iget-object v3, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v3, :cond_14a

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    .line 288
    :cond_14a
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    .line 289
    const v3, 0x44008000    # 514.0f

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(F)F

    move-result v3

    const v4, 0x4356b333    # 214.7f

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(F)F

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->toWorld(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v4, v2

    .line 291
    const-string v2, "fx_beam"

    move-object/from16 v0, v16

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v16

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x41b00000    # 22.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f400000    # 0.75f

    const v10, 0x3e4ccccd    # 0.2f

    const v11, 0x3f59999a    # 0.85f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 292
    const-string v2, "fx_beamcore"

    move-object/from16 v0, v16

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v16

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f666666    # 0.9f

    const v11, 0x3f666666    # 0.9f

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 293
    const-string v2, "fx_core"

    move-object/from16 v0, v16

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43960000    # 300.0f

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x42dc0000    # 110.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f333333    # 0.7f

    const v12, 0x3e4ccccd    # 0.2f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 294
    const-string v2, "gun_medium"

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3fd9999a    # 1.7f

    const-wide/16 v6, 0x12c

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 295
    const/high16 v2, 0x3f800000    # 1.0f

    sput v2, Lfr/testudo/spacecorsair/mod/ModHornet;->stingFlash:F

    .line 296
    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModHornet;->aimX:F

    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModHornet;->aimY:F

    const/high16 v2, 0x3f800000    # 1.0f

    sput v2, Lfr/testudo/spacecorsair/mod/ModHornet;->aimT:F

    goto/16 :goto_87

    .line 279
    :cond_1fd
    const/4 v2, 0x1

    aget-object v2, v3, v2

    check-cast v2, [F

    .line 280
    const/4 v6, 0x2

    aget-object v3, v3, v6

    check-cast v3, [J

    .line 282
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v2, v7

    add-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v6

    .line 283
    const/4 v2, 0x0

    const-wide/16 v4, 0xbb8

    add-long v4, v4, p3

    aput-wide v4, v3, v2

    goto/16 :goto_13a

    :cond_21b
    move-object/from16 v2, v16

    goto/16 :goto_c0
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 14

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 122
    :try_start_2
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->active(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v1, :cond_18

    .line 123
    :cond_10
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModHornet;->placed:Z

    if-eqz v0, :cond_17

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModHornet;->reset()V

    .line 147
    :cond_17
    :goto_17
    return-void

    .line 126
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 127
    const/4 v1, 0x0

    const v4, 0x3dcccccd    # 0.1f

    long-to-float v5, p1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 129
    neg-long v6, p1

    long-to-double v6, v6

    const-wide v8, 0x40a7700000000000L    # 3000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v5, v6

    move v1, v0

    .line 130
    :goto_3a
    const/16 v6, 0xc

    if-ge v1, v6, :cond_48

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModHornet;->threat:[F

    aget v7, v6, v1

    mul-float/2addr v7, v5

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 131
    :cond_48
    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModHornet;->lastAssign:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-ltz v1, :cond_57

    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModHornet;->lastAssign:J

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/mod/ModHornet;->assign(J)V

    .line 132
    :cond_57
    :goto_57
    const/4 v1, 0x2

    if-ge v0, v1, :cond_d3

    .line 133
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->hotSince:[J

    aget-wide v6, v1, v0

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_a4

    .line 134
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->hotSince:[J

    aget-wide v6, v1, v0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1770

    cmp-long v1, v6, v8

    if-ltz v1, :cond_a1

    sget-wide v6, Lfr/testudo/spacecorsair/mod/ModHornet;->lastPlayerHit:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0xbb8

    cmp-long v1, v6, v8

    if-ltz v1, :cond_a1

    .line 135
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->hotSince:[J

    const-wide/16 v6, -0x1

    aput-wide v6, v1, v0

    .line 136
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    const/4 v5, 0x0

    aput v5, v1, v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shield "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " back online"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModHornet;->log(Ljava/lang/String;)V

    .line 132
    :cond_a1
    :goto_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 139
    :cond_a4
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->lastShHit:[J

    aget-wide v6, v1, v0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x9c4

    cmp-long v1, v6, v8

    if-ltz v1, :cond_a1

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v10

    if-lez v1, :cond_a1

    .line 140
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    const/4 v5, 0x0

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    aget v6, v6, v0

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->cap(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v7

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v1, v0

    goto :goto_a1

    .line 144
    :catch_d0
    move-exception v0

    goto/16 :goto_17

    .line 143
    :cond_d3
    invoke-static {p0, p1, p2, v2, v3}, Lfr/testudo/spacecorsair/mod/ModHornet;->sting(Lfr/testudo/spacecorsair/business/player/PlayerShip;JJ)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d6} :catch_d0

    goto/16 :goto_17
.end method

.method private static toWorld(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 8

    .prologue
    .line 94
    invoke-virtual {p3, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 95
    return-void
.end method

.method public static under(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 25

    .prologue
    .line 304
    :try_start_0
    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->active(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 385
    :cond_6
    :goto_6
    return-void

    .line 305
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    .line 306
    if-eqz v2, :cond_6

    iget-object v3, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v3, :cond_6

    .line 307
    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sput v2, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 309
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModHornet;->lastT:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_30

    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModHornet;->lastT:J

    sub-long v2, v16, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModHornet;->placed:Z

    .line 310
    :cond_30
    sget-wide v2, Lfr/testudo/spacecorsair/mod/ModHornet;->lastT:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_18a

    const v2, 0x3c83126f    # 0.016f

    move v8, v2

    .line 311
    :goto_3c
    sput-wide v16, Lfr/testudo/spacecorsair/mod/ModHornet;->lastT:J

    .line 312
    const v2, 0x3f28f5c3    # 0.66f

    sget v3, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float v9, v2, v3

    const v2, 0x3e6147ae    # 0.22f

    sget v3, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float v10, v2, v3

    .line 313
    const/4 v2, 0x0

    move v7, v2

    :goto_4e
    const/4 v2, 0x4

    if-ge v7, v2, :cond_1ec

    .line 314
    const/4 v2, 0x2

    if-ge v7, v2, :cond_1a3

    const/4 v2, 0x0

    move v6, v2

    .line 315
    :goto_56
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->REST:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(F)F

    move-result v4

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->REST:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(F)F

    move-result v11

    .line 316
    float-to-double v2, v4

    neg-float v5, v11

    float-to-double v12, v5

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 317
    const/4 v2, 0x0

    .line 318
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->hotSince:[J

    aget-wide v12, v3, v6

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-ltz v3, :cond_1a7

    const/4 v3, 0x1

    move v5, v3

    .line 319
    :goto_85
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_1b6

    if-nez v5, :cond_1b6

    .line 321
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->shDir:[F

    aget v2, v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 322
    float-to-double v2, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v2, v14

    double-to-float v4, v2

    neg-float v2, v9

    float-to-double v2, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v2, v14

    double-to-float v11, v2

    .line 323
    rem-int/lit8 v2, v7, 0x2

    if-nez v2, :cond_1ab

    const/4 v2, -0x1

    move v3, v2

    :goto_ab
    if-nez v6, :cond_1af

    const/4 v2, 0x1

    :goto_ae
    mul-int/2addr v2, v3

    int-to-float v2, v2

    .line 324
    mul-float v3, v2, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v3, v14

    add-float/2addr v4, v3

    .line 325
    mul-float/2addr v2, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v3, v12

    mul-float/2addr v2, v3

    add-float v3, v11, v2

    .line 326
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->shDir:[F

    aget v11, v2, v6

    if-nez v6, :cond_1b2

    const/4 v2, 0x0

    :goto_c9
    int-to-float v2, v2

    sub-float v2, v11, v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v2

    .line 332
    :goto_d0
    sget-object v11, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v11}, Lfr/testudo/spacecorsair/mod/ModHornet;->toWorld(Lfr/testudo/spacecorsair/business/player/PlayerShip;FFLfr/testudo/spacecorsair/engine/Vector2;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v11, v11, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v4, v11

    .line 334
    sget-boolean v11, Lfr/testudo/spacecorsair/mod/ModHornet;->placed:Z

    if-nez v11, :cond_106

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModHornet;->px:[F

    aput v3, v11, v7

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModHornet;->py:[F

    aput v4, v11, v7

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModHornet;->vx:[F

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModHornet;->vy:[F

    const/4 v13, 0x0

    aput v13, v12, v7

    aput v13, v11, v7

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModHornet;->rot:[F

    aput v2, v11, v7

    .line 336
    :cond_106
    const/high16 v11, 0x42180000    # 38.0f

    const/high16 v12, 0x40f00000    # 7.5f

    .line 337
    sget-object v13, Lfr/testudo/spacecorsair/mod/ModHornet;->vx:[F

    aget v14, v13, v7

    sget-object v15, Lfr/testudo/spacecorsair/mod/ModHornet;->px:[F

    aget v15, v15, v7

    sub-float/2addr v3, v15

    mul-float/2addr v3, v11

    sget-object v15, Lfr/testudo/spacecorsair/mod/ModHornet;->vx:[F

    aget v15, v15, v7

    mul-float/2addr v15, v12

    sub-float/2addr v3, v15

    mul-float/2addr v3, v8

    add-float/2addr v3, v14

    aput v3, v13, v7

    .line 338
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->vy:[F

    aget v13, v3, v7

    sget-object v14, Lfr/testudo/spacecorsair/mod/ModHornet;->py:[F

    aget v14, v14, v7

    sub-float/2addr v4, v14

    mul-float/2addr v4, v11

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModHornet;->vy:[F

    aget v11, v11, v7

    mul-float/2addr v11, v12

    sub-float/2addr v4, v11

    mul-float/2addr v4, v8

    add-float/2addr v4, v13

    aput v4, v3, v7

    .line 339
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->px:[F

    aget v4, v3, v7

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModHornet;->vx:[F

    aget v11, v11, v7

    mul-float/2addr v11, v8

    add-float/2addr v4, v11

    aput v4, v3, v7

    .line 340
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->py:[F

    aget v4, v3, v7

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModHornet;->vy:[F

    aget v11, v11, v7

    mul-float/2addr v11, v8

    add-float/2addr v4, v11

    aput v4, v3, v7

    .line 341
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->rot:[F

    aget v4, v3, v7

    sget-object v11, Lfr/testudo/spacecorsair/mod/ModHornet;->rot:[F

    aget v11, v11, v7

    sub-float/2addr v2, v11

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v2

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40a00000    # 5.0f

    mul-float/2addr v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    mul-float/2addr v2, v11

    add-float/2addr v2, v4

    aput v2, v3, v7

    .line 342
    rem-int/lit8 v2, v7, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_185

    .line 345
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->shArrive:[F

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->shOn:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_1ea

    if-nez v5, :cond_1ea

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModHornet;->assignedAt:[J

    aget-wide v4, v4, v6

    sub-long v4, v16, v4

    long-to-float v4, v4

    const/high16 v5, 0x442f0000    # 700.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_183
    aput v2, v3, v6

    .line 313
    :cond_185
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_4e

    .line 310
    :cond_18a
    const v2, 0x3a83126f    # 0.001f

    const v3, 0x3d4ccccd    # 0.05f

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModHornet;->lastT:J

    sub-long v4, v16, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v8, v2

    goto/16 :goto_3c

    .line 314
    :cond_1a3
    const/4 v2, 0x1

    move v6, v2

    goto/16 :goto_56

    .line 318
    :cond_1a7
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_85

    .line 323
    :cond_1ab
    const/4 v2, 0x1

    move v3, v2

    goto/16 :goto_ab

    :cond_1af
    const/4 v2, -0x1

    goto/16 :goto_ae

    .line 326
    :cond_1b2
    const/16 v2, 0xb4

    goto/16 :goto_c9

    .line 329
    :cond_1b6
    move-wide/from16 v0, v16

    long-to-double v12, v0

    const-wide v14, 0x408c200000000000L    # 900.0

    div-double/2addr v12, v14

    int-to-double v14, v7

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v3, v12

    sget v12, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float/2addr v3, v12

    const v12, 0x3c449ba6    # 0.012f

    mul-float/2addr v3, v12

    add-float/2addr v4, v3

    .line 330
    move-wide/from16 v0, v16

    long-to-double v12, v0

    const-wide v14, 0x4091300000000000L    # 1100.0

    div-double/2addr v12, v14

    mul-int/lit8 v3, v7, 0x2

    int-to-double v14, v3

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v3, v12

    sget v12, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float/2addr v3, v12

    const v12, 0x3c449ba6    # 0.012f

    mul-float/2addr v3, v12

    add-float/2addr v3, v11

    goto/16 :goto_d0

    .line 345
    :cond_1ea
    const/4 v2, 0x0

    goto :goto_183

    .line 348
    :cond_1ec
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModHornet;->placed:Z

    .line 349
    sget-object v18, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 350
    const/high16 v2, 0x3ec80000    # 0.390625f

    sget v3, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float v19, v2, v3

    .line 351
    const/4 v2, 0x1

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_1fa
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1fa} :catch_307

    .line 354
    const/4 v2, 0x0

    move v13, v2

    :goto_1fc
    const/4 v2, 0x2

    if-ge v13, v2, :cond_30f

    .line 355
    :try_start_1ff
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->shArrive:[F

    aget v2, v2, v13

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_20e

    .line 354
    :goto_20a
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_1fc

    .line 356
    :cond_20e
    mul-int/lit8 v4, v13, 0x2

    add-int/lit8 v6, v4, 0x1

    .line 357
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->px:[F

    aget v2, v2, v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->px:[F

    aget v3, v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v3

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float v14, v2, v3

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->py:[F

    aget v2, v2, v4

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->py:[F

    aget v3, v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v3

    move-object/from16 v0, v18

    iget v3, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float v15, v2, v3

    .line 358
    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->heat:[F

    aget v3, v3, v13

    invoke-static/range {p0 .. p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->cap(Lfr/testudo/spacecorsair/business/player/PlayerShip;)F

    move-result v5

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 359
    const v3, 0x3ee66666    # 0.45f

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v5, v2

    add-float v8, v3, v5

    const/high16 v3, 0x3f400000    # 0.75f

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v2

    sub-float v9, v3, v5

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v2, v5

    sub-float v10, v3, v2

    .line 360
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->shArrive:[F

    aget v3, v2, v13

    const v2, 0x3eb33333    # 0.35f

    const v5, 0x3df5c28f    # 0.12f

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4064000000000000L    # 160.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v7, v0

    mul-float/2addr v5, v7

    add-float/2addr v5, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->lastShHit:[J

    aget-wide v20, v2, v13

    sub-long v20, v16, v20

    const-wide/16 v22, 0xc8

    cmp-long v2, v20, v22

    if-gez v2, :cond_30d

    const v2, 0x3eb33333    # 0.35f

    :goto_296
    add-float/2addr v2, v5

    mul-float v11, v3, v2

    .line 361
    const-string v2, "fx_beam"

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->px:[F

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v3, v5

    move-object/from16 v0, v18

    iget v5, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModHornet;->py:[F

    aget v4, v5, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v4, v5

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModHornet;->px:[F

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v5, v7

    move-object/from16 v0, v18

    iget v7, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v5, v7

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModHornet;->py:[F

    aget v6, v7, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v6, v7

    move-object/from16 v0, v18

    iget v7, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v6, v7

    const v7, 0x3e99999a    # 0.3f

    sget v12, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float/2addr v7, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 363
    const-string v2, "fx_glow"

    const v3, 0x3f0ccccd    # 0.55f

    sget v4, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float v5, v3, v4

    const v3, 0x3f0ccccd    # 0.55f

    sget v4, Lfr/testudo/spacecorsair/mod/ModHornet;->D:F

    mul-float v6, v3, v4

    const/4 v7, 0x0

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v11, v3

    const/4 v12, 0x1

    move v3, v14

    move v4, v15

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V
    :try_end_300
    .catchall {:try_start_1ff .. :try_end_300} :catchall_302

    goto/16 :goto_20a

    .line 380
    :catchall_302
    move-exception v2

    const/4 v3, 0x0

    :try_start_304
    sput-boolean v3, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 381
    throw v2
    :try_end_307
    .catch Ljava/lang/Throwable; {:try_start_304 .. :try_end_307} :catch_307

    .line 382
    :catch_307
    move-exception v2

    .line 383
    const/4 v2, 0x0

    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto/16 :goto_6

    .line 360
    :cond_30d
    const/4 v2, 0x0

    goto :goto_296

    .line 365
    :cond_30f
    const/4 v2, 0x0

    move v15, v2

    :goto_311
    const/4 v2, 0x4

    if-ge v15, v2, :cond_452

    .line 366
    const/4 v2, 0x2

    if-ge v15, v2, :cond_41c

    const/4 v2, 0x0

    move v14, v2

    .line 367
    :goto_319
    :try_start_319
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->hotSince:[J

    aget-wide v2, v2, v14

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_420

    const/4 v2, 0x1

    move v13, v2

    .line 368
    :goto_325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hornet_stage5_w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->W:[Ljava/lang/String;

    aget-object v3, v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->px:[F

    aget v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModHornet;->py:[F

    aget v4, v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v4, v5

    .line 370
    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->spin:F

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModHornet;->rot:[F

    aget v6, v6, v15

    add-float v7, v5, v6

    .line 371
    if-eqz v13, :cond_424

    const v5, 0x3f0ccccd    # 0.55f

    const v6, 0x3e4ccccd    # 0.2f

    move-wide/from16 v0, v16

    long-to-double v8, v0

    const-wide v10, 0x4051800000000000L    # 70.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v6, v8

    add-float v8, v5, v6

    .line 372
    :goto_37f
    if-eqz v13, :cond_428

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v9, v8, v5

    :goto_386
    if-eqz v13, :cond_42c

    const v5, 0x3f333333    # 0.7f

    mul-float v10, v8, v5

    :goto_38d
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move/from16 v5, v19

    move/from16 v6, v19

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_glow_l"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3dc

    .line 374
    if-eqz v13, :cond_430

    const v5, 0x3e19999a    # 0.15f

    .line 375
    :goto_3b5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_glow_l"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/4 v12, 0x1

    move/from16 v5, v19

    move/from16 v6, v19

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 377
    :cond_3dc
    if-eqz v13, :cond_417

    const-string v2, "fx_glow"

    const v5, 0x3f19999a    # 0.6f

    mul-float v5, v5, v19

    const v6, 0x3f19999a    # 0.6f

    mul-float v6, v6, v19

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3ecccccd    # 0.4f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3eb33333    # 0.35f

    const v12, 0x3e4ccccd    # 0.2f

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x4056800000000000L    # 90.0

    div-double v20, v20, v22

    int-to-double v0, v15

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v13, v0

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x1

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 365
    :cond_417
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto/16 :goto_311

    .line 366
    :cond_41c
    const/4 v2, 0x1

    move v14, v2

    goto/16 :goto_319

    .line 367
    :cond_420
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_325

    .line 371
    :cond_424
    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_37f

    .line 372
    :cond_428
    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_386

    :cond_42c
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_38d

    .line 374
    :cond_430
    const v5, 0x3f0ccccd    # 0.55f

    const/high16 v6, 0x3e800000    # 0.25f

    move-wide/from16 v0, v16

    long-to-double v8, v0

    const-wide v10, 0x4085e00000000000L    # 700.0

    div-double/2addr v8, v10

    int-to-double v10, v15

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    const v6, 0x3e99999a    # 0.3f

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModHornet;->shArrive:[F

    aget v8, v8, v14
    :try_end_44e
    .catchall {:try_start_319 .. :try_end_44e} :catchall_302

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    goto/16 :goto_3b5

    .line 380
    :cond_452
    const/4 v2, 0x0

    :try_start_453
    sput-boolean v2, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_455
    .catch Ljava/lang/Throwable; {:try_start_453 .. :try_end_455} :catch_307

    goto/16 :goto_6
.end method

.method static useParts(Ljava/lang/String;I)Z
    .registers 3

    .prologue
    .line 76
    const/4 v0, 0x5

    if-ne p1, v0, :cond_35

    const-string v0, "hornet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "hornet_stage5_hull"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "hornet_stage5_wFL"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "hornet_stage5_wFR"

    .line 77
    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "hornet_stage5_wRL"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "hornet_stage5_wRR"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    .line 76
    :goto_34
    return v0

    .line 77
    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method
