.class public final Lfr/testudo/spacecorsair/mod/ModHornet;
.super Ljava/lang/Object;
.source "ModHornet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModHornet$St;
    }
.end annotation


# static fields
.field static final ARC_DEG:F = 45.0f

.field static final ART:Ljava/lang/String; = "hornet"

.field static final COOL_AFTER_MS:J = 0x9c4L

.field static final COOL_PER_S:F = 0.2f

.field static final CUT:F = 0.15f

.field static final CUT_FLOOR:F = 0.075f

.field private static final ENEMY:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            "Lfr/testudo/spacecorsair/mod/ModHornet$St;",
            ">;"
        }
    .end annotation
.end field

.field static final HEAT_CAP_SHARE:F = 0.35f

.field private static final NB:I = 0xc

.field static final OVERHEAT_MIN_MS:J = 0x1770L

.field static final OVERHEAT_QUIET_MS:J = 0xbb8L

.field private static final P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

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

.field static final WG:[Ljava/lang/String;

.field static final WN:[Ljava/lang/String;

.field static final WPX:F = 400.0f

.field private static final a:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static cachedAt:J

.field private static cachedOn:Z

.field private static cachedPs:Lfr/testudo/spacecorsair/business/player/PlayerShip;

.field private static logs:I

.field private static final v2:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 47
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "FL"

    aput-object v1, v0, v3

    const-string v1, "FR"

    aput-object v1, v0, v4

    const-string v1, "RL"

    aput-object v1, v0, v2

    const-string v1, "RR"

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->W:[Ljava/lang/String;

    .line 48
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "hornet_stage5_wFL"

    aput-object v1, v0, v3

    const-string v1, "hornet_stage5_wFR"

    aput-object v1, v0, v4

    const-string v1, "hornet_stage5_wRL"

    aput-object v1, v0, v2

    const-string v1, "hornet_stage5_wRR"

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->WN:[Ljava/lang/String;

    .line 49
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "hornet_stage5_wFL_glow_l"

    aput-object v1, v0, v3

    const-string v1, "hornet_stage5_wFR_glow_l"

    aput-object v1, v0, v4

    const-string v1, "hornet_stage5_wRL_glow_l"

    aput-object v1, v0, v2

    const-string v1, "hornet_stage5_wRR_glow_l"

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->WG:[Ljava/lang/String;

    .line 51
    new-array v0, v6, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_7e

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_86

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_8e

    aput-object v1, v0, v2

    new-array v1, v2, [F

    fill-array-data v1, :array_96

    aput-object v1, v0, v5

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->REST:[[F

    .line 83
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModHornet$St;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    .line 84
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->ENEMY:Ljava/util/WeakHashMap;

    .line 86
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->v2:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void

    .line 51
    :array_7e
    .array-data 4
        0x4359999a    # 217.6f
        0x435b999a    # 219.6f
    .end array-data

    :array_86
    .array-data 4
        0x4449b333    # 806.8f
        0x435b3333    # 219.2f
    .end array-data

    :array_8e
    .array-data 4
        0x435b999a    # 219.6f
        0x44556666    # 853.6f
    .end array-data

    :array_96
    .array-data 4
        0x44490000    # 804.0f
        0x44556666    # 853.6f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 104
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->cachedPs:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-ne p0, v1, :cond_16

    sget-wide v4, Lfr/testudo/spacecorsair/mod/ModHornet;->cachedAt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xc8

    cmp-long v1, v4, v6

    if-gez v1, :cond_16

    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModHornet;->cachedOn:Z

    .line 114
    :cond_15
    :goto_15
    return v0

    .line 106
    :cond_16
    sput-object p0, Lfr/testudo/spacecorsair/mod/ModHornet;->cachedPs:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 107
    sput-wide v2, Lfr/testudo/spacecorsair/mod/ModHornet;->cachedAt:J

    .line 108
    const/4 v1, 0x0

    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModHornet;->cachedOn:Z

    .line 109
    if-eqz p0, :cond_15

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    if-eqz v1, :cond_15

    .line 110
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModShips;->hullFor(Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;)Lfr/testudo/spacecorsair/mod/ModShips$Hull;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_49

    iget-object v1, v1, Lfr/testudo/spacecorsair/mod/ModShips$Hull;->art:Ljava/lang/String;

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModV35;->currentShip()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->level(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)I

    move-result v2

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->stage(I)I

    move-result v2

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->useParts(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x1

    :goto_44
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModHornet;->cachedOn:Z

    .line 112
    sget-boolean v0, Lfr/testudo/spacecorsair/mod/ModHornet;->cachedOn:Z
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_48} :catch_4b

    goto :goto_15

    :cond_49
    move v1, v0

    .line 111
    goto :goto_44

    .line 113
    :catch_4b
    move-exception v1

    goto :goto_15
.end method

.method private static angDiff(FF)F
    .registers 3

    .prologue
    .line 138
    sub-float v0, p0, p1

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private static assign(Lfr/testudo/spacecorsair/mod/ModHornet$St;J)V
    .registers 16

    .prologue
    const-wide/16 v10, 0xfa0

    const/16 v9, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    iget-wide v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastHit:J

    sub-long v0, p1, v0

    cmp-long v0, v0, v10

    if-ltz v0, :cond_19

    move v0, v5

    :goto_10
    if-ge v0, v9, :cond_19

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->threat:[F

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 166
    :cond_19
    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->threat:[F

    .line 167
    const/4 v0, -0x1

    const/4 v6, -0x1

    move v1, v5

    .line 168
    :goto_1e
    if-ge v1, v9, :cond_37

    aget v2, v7, v1

    const v8, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v8

    if-lez v2, :cond_34

    if-ltz v0, :cond_33

    aget v2, v7, v1

    aget v8, v7, v0

    cmpl-float v2, v2, v8

    if-lez v2, :cond_34

    :cond_33
    move v0, v1

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_37
    move v2, v5

    move v1, v6

    .line 169
    :goto_39
    if-ltz v0, :cond_69

    if-ge v2, v9, :cond_69

    .line 170
    aget v6, v7, v2

    const v8, 0x3c23d70a    # 0.01f

    cmpg-float v6, v6, v8

    if-lez v6, :cond_5a

    sub-int v6, v0, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v8, v0, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0xc

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gt v6, v4, :cond_5d

    .line 169
    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 171
    :cond_5d
    if-ltz v1, :cond_67

    aget v6, v7, v2

    aget v8, v7, v1

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5a

    :cond_67
    move v1, v2

    goto :goto_5a

    .line 173
    :cond_69
    if-gez v0, :cond_ba

    move v6, v3

    :goto_6c
    if-gez v1, :cond_c3

    move v2, v3

    .line 174
    :goto_6f
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->on:[Z

    iget-object v7, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->on:[Z

    aput-boolean v5, v7, v4

    aput-boolean v5, v3, v5

    .line 175
    if-ltz v0, :cond_d1

    if-ltz v1, :cond_d1

    .line 176
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_cb

    move v0, v4

    .line 177
    :goto_90
    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->want:[F

    if-eqz v0, :cond_cd

    move v1, v6

    :goto_95
    aput v1, v3, v5

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->want:[F

    if-eqz v0, :cond_cf

    :goto_9b
    aput v2, v1, v4

    .line 178
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->on:[Z

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->on:[Z

    aput-boolean v4, v1, v4

    aput-boolean v4, v0, v5

    :cond_a5
    :goto_a5
    move v0, v5

    .line 183
    :goto_a6
    const/4 v1, 0x2

    if-ge v0, v1, :cond_13c

    .line 184
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    aget-wide v2, v1, v0

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_ed

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    aput-boolean v5, v1, v0

    .line 183
    :cond_b7
    :goto_b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 173
    :cond_ba
    int-to-float v2, v0

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v2, v6

    const/high16 v6, 0x41400000    # 12.0f

    div-float v6, v2, v6

    goto :goto_6c

    :cond_c3
    int-to-float v2, v1

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v2, v3

    goto :goto_6f

    :cond_cb
    move v0, v5

    .line 176
    goto :goto_90

    :cond_cd
    move v1, v2

    .line 177
    goto :goto_95

    :cond_cf
    move v2, v6

    goto :goto_9b

    .line 179
    :cond_d1
    if-ltz v0, :cond_a5

    .line 180
    invoke-static {v6}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_eb

    move v0, v5

    .line 181
    :goto_e2
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->want:[F

    aput v6, v1, v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->on:[Z

    aput-boolean v4, v1, v0

    goto :goto_a5

    :cond_eb
    move v0, v4

    .line 180
    goto :goto_e2

    .line 185
    :cond_ed
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->on:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_11c

    .line 186
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shDir:[F

    aget v1, v1, v0

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->want:[F

    aget v2, v2, v0

    invoke-static {v1, v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->angDiff(FF)F

    move-result v1

    const/high16 v2, 0x420c0000    # 35.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10f

    :cond_10b
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->assignedAt:[J

    aput-wide p1, v1, v0

    .line 187
    :cond_10f
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shDir:[F

    iget-object v2, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->want:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 188
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    aput-boolean v4, v1, v0

    goto :goto_b7

    .line 189
    :cond_11c
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastShHit:[J

    aget-wide v2, v1, v0

    sub-long v2, p1, v2

    cmp-long v1, v2, v10

    if-ltz v1, :cond_b7

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->assignedAt:[J

    aget-wide v2, v1, v0

    sub-long v2, p1, v2

    cmp-long v1, v2, v10

    if-ltz v1, :cond_b7

    .line 190
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    aput-boolean v5, v1, v0

    goto/16 :goto_b7

    .line 193
    :cond_13c
    return-void
.end method

.method private static cap(Lfr/testudo/spacecorsair/business/Element;)F
    .registers 4

    .prologue
    .line 141
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/testudo/spacecorsair/business/Element;->maxLife:F

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private static crystal(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JFF)V
    .registers 24

    .prologue
    .line 391
    move-object/from16 v0, p0

    iget v5, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->D:F

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shArrive:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shArrive:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 393
    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3e4ccccd    # 0.2f

    move-wide/from16 v0, p2

    long-to-double v6, v0

    const-wide v8, 0x407f400000000000L    # 500.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    const v3, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->stingFlash:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 394
    const-string v2, "hornet_stage5_core"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, "hornet_stage5_core"

    move-object/from16 v0, p1

    iget v7, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const/4 v12, 0x1

    move/from16 v3, p4

    move/from16 v4, p5

    move v6, v5

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 395
    :cond_5d
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    const v3, 0x44008000    # 514.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(Lfr/testudo/spacecorsair/mod/ModHornet$St;F)F

    move-result v3

    const v4, 0x4356b333    # 214.7f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(Lfr/testudo/spacecorsair/mod/ModHornet$St;F)F

    move-result v4

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v6}, Lfr/testudo/spacecorsair/mod/ModHornet;->toWorld(FFFLfr/testudo/spacecorsair/engine/Vector2;)V

    .line 396
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float v7, p4, v2

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float v8, p5, v2

    .line 397
    const-string v6, "fx_glow"

    const v2, 0x3e23d70a    # 0.16f

    mul-float v9, v2, v5

    const v2, 0x3e23d70a    # 0.16f

    mul-float v10, v2, v5

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f333333    # 0.7f

    const v14, 0x3e4ccccd    # 0.2f

    const v2, 0x3ee66666    # 0.45f

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->stingFlash:F

    mul-float/2addr v3, v4

    add-float v15, v2, v3

    const/16 v16, 0x1

    invoke-static/range {v6 .. v16}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 398
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->aimT:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10a

    .line 399
    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->aimX:F

    move-object/from16 v0, p1

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v3

    add-float v3, v2, p4

    move-object/from16 v0, p0

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->aimY:F

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v4

    add-float v4, v2, p5

    .line 400
    sub-float v2, v3, v7

    float-to-double v10, v2

    sub-float v2, v4, v8

    neg-float v2, v2

    float-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v13, v10

    .line 401
    const-string v2, "fx_glow"

    sub-float/2addr v3, v7

    const v6, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, v6

    add-float/2addr v3, v7

    sub-float/2addr v4, v8

    const v6, 0x3ca3d70a    # 0.02f

    mul-float/2addr v4, v6

    add-float/2addr v4, v8

    const v6, 0x3d75c28f    # 0.06f

    mul-float v7, v6, v5

    const v6, 0x3e6147ae    # 0.22f

    mul-float/2addr v6, v5

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f59999a    # 0.85f

    const v10, 0x3ecccccd    # 0.4f

    const v5, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget v11, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->aimT:F

    mul-float/2addr v11, v5

    const/4 v12, 0x1

    move v5, v7

    move v7, v13

    invoke-static/range {v2 .. v12}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 403
    :cond_10a
    return-void
.end method

.method public static damageIn(Lfr/testudo/spacecorsair/business/Element;FLfr/testudo/spacecorsair/business/projectiles/Projectile;)F
    .registers 16

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v8, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 214
    cmpg-float v2, p1, v8

    if-lez v2, :cond_e

    if-eqz p2, :cond_e

    if-nez p0, :cond_f

    .line 259
    :cond_e
    :goto_e
    return p1

    .line 216
    :cond_f
    :try_start_f
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_7f

    .line 217
    move-object v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-object v2, v0

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->active(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 218
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    move-object v5, v2

    .line 224
    :goto_20
    instance-of v2, p2, Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;

    if-nez v2, :cond_28

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v2, :cond_8b

    .line 225
    :cond_28
    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v2, :cond_e

    .line 226
    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 230
    :goto_38
    invoke-static {p0, v4, v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->localDeg(Lfr/testudo/spacecorsair/business/Element;FF)F

    move-result v4

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 232
    iput-wide v6, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastHit:J

    .line 233
    cmpg-float v2, v4, v8

    if-gez v2, :cond_a1

    const/high16 v2, 0x43b40000    # 360.0f

    add-float/2addr v2, v4

    :goto_49
    const/high16 v8, 0x41f00000    # 30.0f

    div-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    rem-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0xc

    rem-int/lit8 v2, v2, 0xc

    .line 234
    iget-object v8, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->threat:[F

    aget v9, v8, v2

    add-float/2addr v9, p1

    aput v9, v8, v2

    .line 236
    :goto_5d
    const/4 v2, 0x2

    if-ge v3, v2, :cond_e

    .line 237
    iget-object v2, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_7b

    iget-object v2, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    aget-wide v8, v2, v3

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gez v2, :cond_7b

    iget-object v2, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shArrive:[F

    aget v2, v2, v3

    const v8, 0x3f666666    # 0.9f

    cmpg-float v2, v2, v8

    if-gez v2, :cond_a3

    .line 236
    :cond_7b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5d

    .line 220
    :cond_7f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->ENEMY:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModHornet$St;

    .line 221
    if-eqz v2, :cond_e

    move-object v5, v2

    goto :goto_20

    .line 228
    :cond_8b
    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v4, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    mul-float/2addr v4, v7

    sub-float v4, v2, v4

    iget-object v2, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v6, p2, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v2, v6

    goto :goto_38

    :cond_a1
    move v2, v4

    .line 233
    goto :goto_49

    .line 238
    :cond_a3
    iget-object v2, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shDir:[F

    aget v2, v2, v3

    invoke-static {v4, v2}, Lfr/testudo/spacecorsair/mod/ModHornet;->angDiff(FF)F

    move-result v2

    const/high16 v8, 0x42340000    # 45.0f

    cmpl-float v2, v2, v8

    if-gtz v2, :cond_7b

    .line 239
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->cap(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v4

    .line 240
    const v2, 0x3e19999a    # 0.15f

    const v8, 0x3d99999a    # 0.075f

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    aget v10, v10, v3

    div-float/2addr v10, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v2, v8

    .line 241
    sub-float v2, v12, v2

    mul-float/2addr v2, p1

    .line 242
    iget-object v8, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    aget v9, v8, v3

    add-float/2addr v9, p1

    aput v9, v8, v3

    .line 243
    iget-object v8, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastShHit:[J

    aput-wide v6, v8, v3

    .line 244
    iget-object v8, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v4

    if-ltz v8, :cond_128

    .line 245
    iget-object v4, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    aput-wide v6, v4, v3

    .line 246
    iget-object v4, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v3

    .line 247
    iget-boolean v4, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v4, :cond_17a

    .line 248
    const-string v4, "shield_down"

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3fa66666    # 1.3f

    const-wide/16 v8, 0x320

    invoke-static {v4, v5, v6, v8, v9}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 249
    check-cast p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    const-string v4, "WING SHIELD OVERHEATED"

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f0ccccd    # 0.55f

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-static {p0, v4, v5, v6, v7}, Lfr/testudo/spacecorsair/mod/Mod;->floatText(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;FFF)V

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shield "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " overheated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModHornet;->log(Ljava/lang/String;)V

    move p1, v2

    goto/16 :goto_e

    .line 252
    :cond_128
    iget-boolean v6, p0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v6, :cond_17a

    sget v6, Lfr/testudo/spacecorsair/mod/ModHornet;->logs:I

    const/16 v7, 0x28

    if-ge v6, v7, :cond_17a

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shield "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cut "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-float v7, p1, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " heat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x42c80000    # 100.0f

    iget-object v5, v5, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    aget v3, v5, v3

    mul-float/2addr v3, v7

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/testudo/spacecorsair/mod/ModHornet;->log(Ljava/lang/String;)V
    :try_end_174
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_174} :catch_177

    move p1, v2

    goto/16 :goto_e

    .line 258
    :catch_177
    move-exception v2

    goto/16 :goto_e

    :cond_17a
    move p1, v2

    goto/16 :goto_e
.end method

.method static enemySkin(Lfr/testudo/spacecorsair/business/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 446
    const-string v0, "hornet_stage5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModHornet;->partsShip()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 447
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->ENEMY:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->ENEMY:Ljava/util/WeakHashMap;

    new-instance v1, Lfr/testudo/spacecorsair/mod/ModHornet$St;

    invoke-direct {v1}, Lfr/testudo/spacecorsair/mod/ModHornet$St;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_20
    const-string p1, "hornet_stage5_hull"

    .line 451
    :goto_22
    return-object p1

    .line 450
    :cond_23
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->ENEMY:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22
.end method

.method private static localDeg(Lfr/testudo/spacecorsair/business/Element;FF)F
    .registers 13

    .prologue
    .line 125
    iget v0, p0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 126
    iget-object v4, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v4, p1, v4

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v5, p2, v5

    .line 127
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

    .line 128
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
    .line 264
    sget v0, Lfr/testudo/spacecorsair/mod/ModHornet;->logs:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfr/testudo/spacecorsair/mod/ModHornet;->logs:I

    const/16 v1, 0x78

    if-ge v0, v1, :cond_f

    const-string v0, "hornet"

    invoke-static {v0, p0}, Lfr/testudo/spacecorsair/mod/ModDev;->ev(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_f
    return-void
.end method

.method private static lx(Lfr/testudo/spacecorsair/mod/ModHornet$St;F)F
    .registers 4

    .prologue
    .line 118
    const/high16 v0, 0x44800000    # 1024.0f

    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->D:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private static norm(F)F
    .registers 4

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 132
    rem-float v0, p0, v2

    .line 133
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    sub-float/2addr v0, v2

    .line 134
    :cond_b
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    add-float/2addr v0, v2

    .line 135
    :cond_12
    return v0
.end method

.method public static over(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 427
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->active(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 441
    :cond_7
    :goto_7
    return-void

    .line 428
    :cond_8
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_7

    iget-object v1, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_7

    .line 430
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModHornet$St;->D:F

    .line 431
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 432
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_31

    .line 434
    :try_start_1f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v5, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModHornet;->crystal(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JFF)V
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_35

    .line 436
    const/4 v0, 0x0

    :try_start_2e
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_30} :catch_31

    goto :goto_7

    .line 438
    :catch_31
    move-exception v0

    .line 439
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto :goto_7

    .line 436
    :catchall_35
    move-exception v0

    const/4 v1, 0x0

    :try_start_37
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 437
    throw v0
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_31
.end method

.method static partsShip()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    const-string v2, "hornet_stage5_hull"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->WN:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->WN:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->WN:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->WN:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    :goto_34
    return v0

    :cond_35
    move v0, v1

    goto :goto_34
.end method

.method private static sting(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JJF)V
    .registers 25

    .prologue
    .line 282
    invoke-static/range {p0 .. p5}, Lfr/testudo/spacecorsair/mod/ModHornet;->tickDots(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JJ)V

    .line 283
    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->stingMs:J

    sub-long v2, v2, p2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->stingMs:J

    .line 284
    move-object/from16 v0, p0

    iget-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->stingMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_18

    .line 324
    :cond_17
    :goto_17
    return-void

    .line 285
    :cond_18
    const-wide/16 v2, 0x384

    move-object/from16 v0, p0

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->stingMs:J

    .line 286
    const/4 v5, 0x0

    .line 287
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_189

    .line 288
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v7, v2, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    .line 289
    const v3, 0x44bb8000    # 1500.0f

    .line 290
    const/4 v2, 0x0

    move v6, v2

    :goto_32
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_6e

    .line 291
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/business/Element;

    .line 292
    if-eqz v2, :cond_1e0

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_1e0

    iget-boolean v4, v2, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_1e0

    iget v4, v2, Lfr/testudo/spacecorsair/business/Element;->life:F

    const/4 v8, 0x0

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_55

    move-object v2, v5

    .line 290
    :goto_50
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-object v5, v2

    goto :goto_32

    .line 293
    :cond_55
    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModV35;->standing(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_5e

    move-object v2, v5

    goto :goto_50

    .line 294
    :cond_5e
    iget-object v4, v2, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p1

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v8}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v4

    .line 295
    cmpg-float v8, v4, v3

    if-gez v8, :cond_1e0

    move v3, v4

    goto :goto_50

    :cond_6e
    move-object/from16 v16, v5

    .line 303
    :goto_70
    if-eqz v16, :cond_17

    .line 304
    const v2, 0x3eb33333    # 0.35f

    mul-float v4, p6, v2

    .line 305
    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v2, v4

    const/high16 v3, 0x40400000    # 3.0f

    div-float v5, v2, v3

    .line 306
    const/4 v3, 0x0

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->dots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_88
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    move-object/from16 v0, v16

    if-ne v7, v0, :cond_88

    move-object v3, v2

    .line 308
    :cond_9c
    if-nez v3, :cond_1ba

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->dots:Ljava/util/List;

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

    add-long v8, v8, p4

    aput-wide v8, v5, v6

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :goto_c1
    move-object/from16 v0, p1

    iget v2, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    const v3, 0x44008000    # 514.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(Lfr/testudo/spacecorsair/mod/ModHornet$St;F)F

    move-result v3

    const v4, 0x4356b333    # 214.7f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(Lfr/testudo/spacecorsair/mod/ModHornet$St;F)F

    move-result v4

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModHornet;->v2:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v2, v3, v4, v5}, Lfr/testudo/spacecorsair/mod/ModHornet;->toWorld(FFFLfr/testudo/spacecorsair/engine/Vector2;)V

    .line 317
    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModHornet;->v2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v3, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModHornet;->v2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v4, v2

    .line 318
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

    .line 319
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

    .line 320
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

    .line 321
    const-string v3, "gun_medium"

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v2, :cond_1d8

    const v2, 0x3e99999a    # 0.3f

    :goto_15f
    const v4, 0x3fd9999a    # 1.7f

    const-wide/16 v6, 0x12c

    invoke-static {v3, v2, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    .line 322
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->stingFlash:F

    .line 323
    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->aimX:F

    move-object/from16 v0, v16

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->aimY:F

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->aimT:F

    goto/16 :goto_17

    .line 299
    :cond_189
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 300
    if-eqz v2, :cond_1dc

    iget-boolean v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v3, :cond_1dc

    iget v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->life:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1dc

    iget-boolean v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v3, :cond_1dc

    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModV35;->standing(Lfr/testudo/spacecorsair/business/Element;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1dc

    iget-object v3, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 301
    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v3

    const v4, 0x44bb8000    # 1500.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1dc

    move-object/from16 v16, v2

    goto/16 :goto_70

    .line 311
    :cond_1ba
    const/4 v2, 0x1

    aget-object v2, v3, v2

    check-cast v2, [F

    .line 312
    const/4 v6, 0x2

    aget-object v3, v3, v6

    check-cast v3, [J

    .line 313
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v2, v7

    add-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v6

    .line 314
    const/4 v2, 0x0

    const-wide/16 v4, 0xbb8

    add-long v4, v4, p4

    aput-wide v4, v3, v2

    goto/16 :goto_c1

    .line 321
    :cond_1d8
    const v2, 0x3e4ccccd    # 0.2f

    goto :goto_15f

    :cond_1dc
    move-object/from16 v16, v5

    goto/16 :goto_70

    :cond_1e0
    move-object v2, v5

    goto/16 :goto_50
.end method

.method public static tick(Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 10

    .prologue
    .line 198
    :try_start_0
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->active(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_1a

    .line 199
    :cond_e
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->placed:Z

    if-eqz v0, :cond_19

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/mod/ModHornet$St;->reset()V

    .line 209
    :cond_19
    :goto_19
    return-void

    .line 202
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 203
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModHornet;->update(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JJ)V

    .line 204
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->isDocked:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    if-eqz v0, :cond_42

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->laserSpec:Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/stuff/laser/LaserSpec;->getDps()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lfr/testudo/spacecorsair/mod/ModHornet;->sting(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JJF)V

    goto :goto_19

    .line 206
    :catch_40
    move-exception v0

    goto :goto_19

    .line 205
    :cond_42
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModHornet;->tickDots(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JJ)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_49} :catch_40

    goto :goto_19
.end method

.method private static tickDots(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JJ)V
    .registers 16

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 269
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->dots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_c
    if-ltz v3, :cond_4b

    .line 270
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->dots:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 271
    aget-object v1, v0, v7

    check-cast v1, Lfr/testudo/spacecorsair/business/Element;

    .line 272
    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, [J

    aget-wide v4, v2, v7

    .line 273
    iget-boolean v2, v1, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v2, :cond_2f

    iget v2, v1, Lfr/testudo/spacecorsair/business/Element;->life:F

    cmpg-float v2, v2, v6

    if-lez v2, :cond_2f

    cmp-long v2, p4, v4

    if-ltz v2, :cond_38

    :cond_2f
    iget-object v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->dots:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 269
    :cond_34
    :goto_34
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_c

    .line 274
    :cond_38
    aget-object v0, v0, v8

    check-cast v0, [F

    aget v0, v0, v7

    long-to-float v2, p2

    mul-float/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    .line 275
    cmpl-float v2, v0, v6

    if-lez v2, :cond_34

    invoke-static {v1, p1, v0, v8}, Lfr/testudo/spacecorsair/mod/ModV34;->skillHit(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;FZ)V

    goto :goto_34

    .line 277
    :cond_4b
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->stingFlash:F

    long-to-float v1, p2

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->stingFlash:F

    .line 278
    iget v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->aimT:F

    long-to-float v1, p2

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->aimT:F

    .line 279
    return-void
.end method

.method private static toWorld(FFFLfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 8

    .prologue
    .line 121
    invoke-virtual {p3, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 122
    return-void
.end method

.method public static under(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 408
    :try_start_1
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModHornet;->active(Lfr/testudo/spacecorsair/business/player/PlayerShip;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 422
    :cond_7
    :goto_7
    return-void

    .line 409
    :cond_8
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_7

    iget-object v1, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v1, :cond_7

    .line 411
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModHornet$St;->D:F

    .line 412
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 413
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_3c

    .line 415
    :try_start_1f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModHornet;->P:Lfr/testudo/spacecorsair/mod/ModHornet$St;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v4, v5

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v5, v1, v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lfr/testudo/spacecorsair/mod/ModHornet;->wings(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JFF)V
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_40

    .line 417
    const/4 v0, 0x0

    :try_start_39
    sput-boolean v0, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3b} :catch_3c

    goto :goto_7

    .line 419
    :catch_3c
    move-exception v0

    .line 420
    sput-boolean v6, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    goto :goto_7

    .line 417
    :catchall_40
    move-exception v0

    const/4 v1, 0x0

    :try_start_42
    sput-boolean v1, Lfr/testudo/spacecorsair/mod/ModFx;->relative:Z

    .line 418
    throw v0
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_3c
.end method

.method public static underEnemy(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 17

    .prologue
    const-wide/16 v14, 0x0

    const/4 v8, 0x0

    .line 460
    :try_start_3
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->ENEMY:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/testudo/spacecorsair/mod/ModHornet$St;

    .line 461
    if-nez v2, :cond_10

    .line 481
    :cond_f
    :goto_f
    return-void

    .line 462
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/Element;->life:F

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_28

    :cond_1e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModHornet;->ENEMY:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 478
    :catch_26
    move-exception v2

    goto :goto_f

    .line 463
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lfr/testudo/spacecorsair/business/Element;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    .line 464
    if-eqz v3, :cond_f

    iget-object v4, v3, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    if-eqz v4, :cond_f

    .line 465
    iget-object v3, v3, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v3, v2, Lfr/testudo/spacecorsair/mod/ModHornet$St;->D:F

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 467
    iget-wide v4, v2, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastTick:J

    cmp-long v3, v4, v14

    if-nez v3, :cond_85

    const-wide/16 v4, 0x10

    .line 468
    :goto_44
    iput-wide v6, v2, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastTick:J

    move-object/from16 v3, p0

    .line 469
    invoke-static/range {v2 .. v7}, Lfr/testudo/spacecorsair/mod/ModHornet;->update(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JJ)V

    .line 471
    move-object/from16 v0, p0

    instance-of v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v3, :cond_65

    .line 472
    move-object/from16 v0, p0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-object v3, v0

    .line 473
    iget-wide v10, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    cmp-long v9, v10, v14

    if-lez v9, :cond_65

    iget v8, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->bulletDamage:F

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    iget-wide v10, v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->milleSecBetweenShots:J

    long-to-float v3, v10

    div-float/2addr v8, v3

    :cond_65
    move-object/from16 v3, p0

    .line 475
    invoke-static/range {v2 .. v8}, Lfr/testudo/spacecorsair/mod/ModHornet;->sting(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JJF)V

    .line 476
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v9}, Lfr/testudo/spacecorsair/mod/ModHornet;->wings(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JFF)V

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object v4, v2

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v9}, Lfr/testudo/spacecorsair/mod/ModHornet;->crystal(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JFF)V

    goto :goto_f

    .line 467
    :cond_85
    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x64

    iget-wide v12, v2, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastTick:J

    sub-long v12, v6, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_94} :catch_26

    move-result-wide v4

    goto :goto_44
.end method

.method private static update(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JJ)V
    .registers 16

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 146
    const v1, 0x3dcccccd    # 0.1f

    long-to-float v2, p2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 147
    neg-long v4, p2

    long-to-double v4, v4

    const-wide v6, 0x40a7700000000000L    # 3000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v3, v4

    move v1, v0

    .line 148
    :goto_1f
    const/16 v4, 0xc

    if-ge v1, v4, :cond_2d

    iget-object v4, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->threat:[F

    aget v5, v4, v1

    mul-float/2addr v5, v3

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 149
    :cond_2d
    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastAssign:J

    sub-long v4, p4, v4

    const-wide/16 v6, 0xfa

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3c

    iput-wide p4, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastAssign:J

    invoke-static {p0, p4, p5}, Lfr/testudo/spacecorsair/mod/ModHornet;->assign(Lfr/testudo/spacecorsair/mod/ModHornet$St;J)V

    .line 150
    :cond_3c
    :goto_3c
    const/4 v1, 0x2

    if-ge v0, v1, :cond_b7

    .line 151
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    aget-wide v4, v1, v0

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_8c

    .line 152
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    aget-wide v4, v1, v0

    sub-long v4, p4, v4

    const-wide/16 v6, 0x1770

    cmp-long v1, v4, v6

    if-ltz v1, :cond_89

    iget-wide v4, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastHit:J

    sub-long v4, p4, v4

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_89

    .line 153
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v1, v0

    .line 154
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    aput v8, v1, v0

    .line 155
    iget-boolean v1, p1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v1, :cond_89

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shield "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " back online"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfr/testudo/spacecorsair/mod/ModHornet;->log(Ljava/lang/String;)V

    .line 150
    :cond_89
    :goto_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 157
    :cond_8c
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastShHit:[J

    aget-wide v4, v1, v0

    sub-long v4, p4, v4

    const-wide/16 v6, 0x9c4

    cmp-long v1, v4, v6

    if-ltz v1, :cond_89

    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v8

    if-lez v1, :cond_89

    .line 158
    iget-object v1, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    iget-object v3, p0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    aget v3, v3, v0

    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModHornet;->cap(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v1, v0

    goto :goto_89

    .line 161
    :cond_b7
    return-void
.end method

.method static useParts(Ljava/lang/String;I)Z
    .registers 3

    .prologue
    .line 94
    const/4 v0, 0x5

    if-ne p1, v0, :cond_13

    const-string v0, "hornet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModHornet;->partsShip()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static wings(Lfr/testudo/spacecorsair/mod/ModHornet$St;Lfr/testudo/spacecorsair/business/Element;JFF)V
    .registers 32

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastT:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastT:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->placed:Z

    .line 330
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastT:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_181

    const v4, 0x3c83126f    # 0.016f

    .line 331
    :goto_28
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastT:J

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->D:F

    move/from16 v16, v0

    const v5, 0x3f28f5c3    # 0.66f

    mul-float v10, v5, v16

    const v5, 0x3e6147ae    # 0.22f

    mul-float v11, v5, v16

    .line 333
    const/4 v5, 0x0

    move v9, v5

    :goto_40
    const/4 v5, 0x4

    if-ge v9, v5, :cond_1e8

    .line 334
    const/4 v5, 0x2

    if-ge v9, v5, :cond_19b

    const/4 v5, 0x0

    .line 335
    :goto_47
    sget-object v6, Lfr/testudo/spacecorsair/mod/ModHornet;->REST:[[F

    aget-object v6, v6, v9

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(Lfr/testudo/spacecorsair/mod/ModHornet$St;F)F

    move-result v8

    sget-object v6, Lfr/testudo/spacecorsair/mod/ModHornet;->REST:[[F

    aget-object v6, v6, v9

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lfr/testudo/spacecorsair/mod/ModHornet;->lx(Lfr/testudo/spacecorsair/mod/ModHornet$St;F)F

    move-result v12

    const/4 v7, 0x0

    .line 336
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    aget-wide v14, v6, v5

    const-wide/16 v18, 0x0

    cmp-long v6, v14, v18

    if-ltz v6, :cond_19e

    const/4 v6, 0x1

    .line 337
    :goto_6f
    move-object/from16 v0, p0

    iget-object v13, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    aget-boolean v13, v13, v5

    if-eqz v13, :cond_1ac

    if-nez v6, :cond_1ac

    .line 338
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shDir:[F

    aget v6, v6, v5

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 339
    float-to-double v6, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v6, v14

    double-to-float v8, v6

    neg-float v6, v10

    float-to-double v6, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v6, v14

    double-to-float v14, v6

    .line 340
    rem-int/lit8 v6, v9, 0x2

    if-nez v6, :cond_1a1

    const/4 v6, -0x1

    move v7, v6

    :goto_99
    if-nez v5, :cond_1a5

    const/4 v6, 0x1

    :goto_9c
    mul-int/2addr v6, v7

    int-to-float v6, v6

    .line 341
    mul-float v7, v6, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v15, v0

    mul-float/2addr v7, v15

    add-float/2addr v7, v8

    .line 342
    mul-float/2addr v6, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v8, v12

    mul-float/2addr v6, v8

    add-float/2addr v6, v14

    .line 343
    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shDir:[F

    aget v8, v8, v5

    if-nez v5, :cond_1a8

    const/4 v5, 0x0

    :goto_ba
    int-to-float v5, v5

    sub-float v5, v8, v5

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v5

    move v8, v7

    .line 348
    :goto_c2
    move-object/from16 v0, p1

    iget v7, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    sget-object v12, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v7, v8, v6, v12}, Lfr/testudo/spacecorsair/mod/ModHornet;->toWorld(FFFLfr/testudo/spacecorsair/engine/Vector2;)V

    .line 349
    move-object/from16 v0, p1

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v7, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    add-float/2addr v6, v7

    move-object/from16 v0, p1

    iget-object v7, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v7, v7, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v8, Lfr/testudo/spacecorsair/mod/ModHornet;->a:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v8, v8, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    add-float/2addr v7, v8

    .line 350
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->placed:Z

    if-nez v8, :cond_106

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->px:[F

    aput v6, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->py:[F

    aput v7, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->vx:[F

    move-object/from16 v0, p0

    iget-object v12, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->vy:[F

    const/4 v13, 0x0

    aput v13, v12, v9

    aput v13, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->rot:[F

    aput v5, v8, v9

    .line 351
    :cond_106
    const/high16 v8, 0x42180000    # 38.0f

    const/high16 v12, 0x40f00000    # 7.5f

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->vx:[F

    aget v14, v13, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->px:[F

    aget v15, v15, v9

    sub-float/2addr v6, v15

    mul-float/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->vx:[F

    aget v15, v15, v9

    mul-float/2addr v15, v12

    sub-float/2addr v6, v15

    mul-float/2addr v6, v4

    add-float/2addr v6, v14

    aput v6, v13, v9

    .line 353
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->vy:[F

    aget v13, v6, v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->py:[F

    aget v14, v14, v9

    sub-float/2addr v7, v14

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->vy:[F

    aget v8, v8, v9

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    mul-float/2addr v7, v4

    add-float/2addr v7, v13

    aput v7, v6, v9

    .line 354
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->px:[F

    aget v7, v6, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->vx:[F

    aget v8, v8, v9

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    aput v7, v6, v9

    .line 355
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->py:[F

    aget v7, v6, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->vy:[F

    aget v8, v8, v9

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    aput v7, v6, v9

    .line 356
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->rot:[F

    aget v7, v6, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->rot:[F

    aget v8, v8, v9

    sub-float/2addr v5, v8

    invoke-static {v5}, Lfr/testudo/spacecorsair/mod/ModHornet;->norm(F)F

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v12, 0x40a00000    # 5.0f

    mul-float/2addr v12, v4

    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v5, v8

    add-float/2addr v5, v7

    aput v5, v6, v9

    .line 333
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto/16 :goto_40

    .line 330
    :cond_181
    const v4, 0x3a83126f    # 0.001f

    const v5, 0x3d4ccccd    # 0.05f

    move-object/from16 v0, p0

    iget-wide v6, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastT:J

    sub-long v6, p2, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto/16 :goto_28

    .line 334
    :cond_19b
    const/4 v5, 0x1

    goto/16 :goto_47

    .line 336
    :cond_19e
    const/4 v6, 0x0

    goto/16 :goto_6f

    .line 340
    :cond_1a1
    const/4 v6, 0x1

    move v7, v6

    goto/16 :goto_99

    :cond_1a5
    const/4 v6, -0x1

    goto/16 :goto_9c

    .line 343
    :cond_1a8
    const/16 v5, 0xb4

    goto/16 :goto_ba

    .line 345
    :cond_1ac
    move-wide/from16 v0, p2

    long-to-double v14, v0

    const-wide v18, 0x408c200000000000L    # 900.0

    div-double v14, v14, v18

    int-to-double v0, v9

    move-wide/from16 v18, v0

    add-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v5, v14

    mul-float v5, v5, v16

    const v6, 0x3c449ba6    # 0.012f

    mul-float/2addr v5, v6

    add-float/2addr v8, v5

    .line 346
    move-wide/from16 v0, p2

    long-to-double v14, v0

    const-wide v18, 0x4091300000000000L    # 1100.0

    div-double v14, v14, v18

    mul-int/lit8 v5, v9, 0x2

    int-to-double v0, v5

    move-wide/from16 v18, v0

    add-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v5, v14

    mul-float v5, v5, v16

    const v6, 0x3c449ba6    # 0.012f

    mul-float/2addr v5, v6

    add-float v6, v12, v5

    move v5, v7

    goto/16 :goto_c2

    .line 358
    :cond_1e8
    const/4 v4, 0x0

    move v5, v4

    :goto_1ea
    const/4 v4, 0x2

    if-ge v5, v4, :cond_21f

    .line 360
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shArrive:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shOn:[Z

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_21d

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    aget-wide v8, v4, v5

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-gez v4, :cond_21d

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->assignedAt:[J

    aget-wide v8, v7, v5

    sub-long v8, p2, v8

    long-to-float v7, v8

    const/high16 v8, 0x442f0000    # 700.0f

    div-float/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_217
    aput v4, v6, v5

    .line 358
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1ea

    .line 360
    :cond_21d
    const/4 v4, 0x0

    goto :goto_217

    .line 362
    :cond_21f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->placed:Z

    .line 363
    const/high16 v4, 0x3ec80000    # 0.390625f

    mul-float v18, v4, v16

    .line 364
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModHornet;->cap(Lfr/testudo/spacecorsair/business/Element;)F

    move-result v17

    .line 365
    const/4 v4, 0x0

    move v15, v4

    :goto_22e
    const/4 v4, 0x2

    if-ge v15, v4, :cond_30a

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shArrive:[F

    aget v4, v4, v15

    const v5, 0x3d4ccccd    # 0.05f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_242

    .line 365
    :goto_23e
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_22e

    .line 367
    :cond_242
    mul-int/lit8 v6, v15, 0x2

    add-int/lit8 v8, v6, 0x1

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->px:[F

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->px:[F

    aget v5, v5, v8

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v19, v4, p4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->py:[F

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->py:[F

    aget v5, v5, v8

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v20, v4, p5

    .line 369
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->heat:[F

    aget v5, v5, v15

    div-float v5, v5, v17

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 370
    const v5, 0x3ee66666    # 0.45f

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v7, v4

    add-float v10, v5, v7

    const/high16 v5, 0x3f400000    # 0.75f

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v4

    sub-float v11, v5, v7

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float/2addr v4, v7

    sub-float v12, v5, v4

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shArrive:[F

    aget v5, v4, v15

    const v4, 0x3eb33333    # 0.35f

    const v7, 0x3df5c28f    # 0.12f

    move-wide/from16 v0, p2

    long-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4064000000000000L    # 160.0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v9, v0

    mul-float/2addr v7, v9

    add-float/2addr v7, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->lastShHit:[J

    aget-wide v22, v4, v15

    sub-long v22, p2, v22

    const-wide/16 v24, 0xc8

    cmp-long v4, v22, v24

    if-gez v4, :cond_308

    const v4, 0x3eb33333    # 0.35f

    :goto_2bf
    add-float/2addr v4, v7

    mul-float v13, v5, v4

    .line 372
    const-string v4, "fx_beam"

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->px:[F

    aget v5, v5, v6

    add-float v5, v5, p4

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->py:[F

    aget v6, v7, v6

    add-float v6, v6, p5

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->px:[F

    aget v7, v7, v8

    add-float v7, v7, p4

    move-object/from16 v0, p0

    iget-object v9, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->py:[F

    aget v8, v9, v8

    add-float v8, v8, p5

    const v9, 0x3e99999a    # 0.3f

    mul-float v9, v9, v16

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->strip(Ljava/lang/String;FFFFFFFFFZ)V

    .line 373
    const-string v4, "fx_glow"

    const v5, 0x3f0ccccd    # 0.55f

    mul-float v7, v5, v16

    const v5, 0x3f0ccccd    # 0.55f

    mul-float v8, v5, v16

    const/4 v9, 0x0

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v13, v5

    const/4 v14, 0x1

    move/from16 v5, v19

    move/from16 v6, v20

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    goto/16 :goto_23e

    .line 371
    :cond_308
    const/4 v4, 0x0

    goto :goto_2bf

    .line 375
    :cond_30a
    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_30d
    const/4 v4, 0x4

    move/from16 v0, v17

    if-ge v0, v4, :cond_420

    .line 376
    const/4 v4, 0x2

    move/from16 v0, v17

    if-ge v0, v4, :cond_3e4

    const/4 v4, 0x0

    move v15, v4

    .line 377
    :goto_319
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->hotSince:[J

    aget-wide v4, v4, v15

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3e8

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 378
    :goto_328
    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->px:[F

    aget v4, v4, v17

    add-float v5, v4, p4

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->py:[F

    aget v4, v4, v17

    add-float v6, v4, p5

    .line 379
    move-object/from16 v0, p1

    iget v4, v0, Lfr/testudo/spacecorsair/business/Element;->spin:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->rot:[F

    aget v7, v7, v17

    add-float v9, v4, v7

    .line 380
    if-eqz v16, :cond_3ed

    const v4, 0x3f0ccccd    # 0.55f

    const v7, 0x3e4ccccd    # 0.2f

    move-wide/from16 v0, p2

    long-to-double v10, v0

    const-wide v12, 0x4051800000000000L    # 70.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v8, v10

    mul-float/2addr v7, v8

    add-float v10, v4, v7

    .line 381
    :goto_35d
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModHornet;->WN:[Ljava/lang/String;

    aget-object v4, v4, v17

    if-eqz v16, :cond_3f1

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v11, v10, v7

    :goto_368
    if-eqz v16, :cond_3f5

    const v7, 0x3f333333    # 0.7f

    mul-float v12, v10, v7

    :goto_36f
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move/from16 v7, v18

    move/from16 v8, v18

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 382
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModHornet;->WG:[Ljava/lang/String;

    aget-object v4, v4, v17

    invoke-static {v4}, Lfr/testudo/spacecorsair/mod/ModV35;->art(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a1

    .line 383
    if-eqz v16, :cond_3f9

    const v4, 0x3e19999a    # 0.15f

    move v7, v4

    .line 384
    :goto_389
    sget-object v4, Lfr/testudo/spacecorsair/mod/ModHornet;->WG:[Ljava/lang/String;

    aget-object v4, v4, v17

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/4 v14, 0x1

    move/from16 v7, v18

    move/from16 v8, v18

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 386
    :cond_3a1
    if-eqz v16, :cond_3de

    const-string v4, "fx_glow"

    const v7, 0x3f19999a    # 0.6f

    mul-float v7, v7, v18

    const v8, 0x3f19999a    # 0.6f

    mul-float v8, v8, v18

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3ecccccd    # 0.4f

    const v12, 0x3dcccccd    # 0.1f

    const v13, 0x3eb33333    # 0.35f

    const v14, 0x3e4ccccd    # 0.2f

    move-wide/from16 v0, p2

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x4056800000000000L    # 90.0

    div-double v20, v20, v22

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v15, v0

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lfr/testudo/spacecorsair/mod/ModFx;->sprR(Ljava/lang/String;FFFFFFFFFZ)V

    .line 375
    :cond_3de
    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    goto/16 :goto_30d

    .line 376
    :cond_3e4
    const/4 v4, 0x1

    move v15, v4

    goto/16 :goto_319

    .line 377
    :cond_3e8
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_328

    .line 380
    :cond_3ed
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_35d

    .line 381
    :cond_3f1
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_368

    :cond_3f5
    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_36f

    .line 383
    :cond_3f9
    const v4, 0x3f0ccccd    # 0.55f

    const/high16 v7, 0x3e800000    # 0.25f

    move-wide/from16 v0, p2

    long-to-double v10, v0

    const-wide v12, 0x4085e00000000000L    # 700.0

    div-double/2addr v10, v12

    move/from16 v0, v17

    int-to-double v12, v0

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v8, v10

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    const v7, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    iget-object v8, v0, Lfr/testudo/spacecorsair/mod/ModHornet$St;->shArrive:[F

    aget v8, v8, v15

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    move v7, v4

    goto/16 :goto_389

    .line 388
    :cond_420
    return-void
.end method
