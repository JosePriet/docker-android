.class public final Lfr/testudo/spacecorsair/mod/ModMap;
.super Ljava/lang/Object;
.source "ModMap.java"


# static fields
.field public static final ASTEROID_B:F = 0.0f

.field public static final ASTEROID_G:F = 0.82f

.field public static final ASTEROID_R:F = 1.0f

.field private static final EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field public static final FONT_SCALE:F = 1.25f

.field private static final GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final at:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static home:[Z

.field private static labelHalf:[F

.field private static labels:[Ljava/lang/String;

.field private static owner:[I

.field private static final rp:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 50
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->rp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 119
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 121
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 123
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 125
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asteroidRadar(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->radarColorR:F

    .line 75
    const v0, 0x3f51eb85    # 0.82f

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->radarColorG:F

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/Element;->radarColorB:F

    .line 77
    return-void
.end method

.method private static build()V
    .registers 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    array-length v0, v0

    .line 87
    new-array v1, v0, [I

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    .line 88
    new-array v0, v0, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->home:[Z

    .line 89
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 90
    const-string v0, "spartan"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->SPARTAN_HQ:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v4, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->HUGO_WISDOM:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v5

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->HERMES:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v6

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_WAVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 91
    const-string v0, "reaver"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v5, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 92
    const-string v0, "helion"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v7, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v5

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 93
    const-string v0, "ironclad"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v5, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 94
    const-string v0, "varn"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->OMICRON_PRIME:Lfr/testudo/spacecorsair/game/levels/LevelId;

    const/4 v2, 0x5

    new-array v2, v2, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v5

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_VAULT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v6

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->AERIA_PASSING:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v7

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->ETERNITY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v4

    const/4 v3, 0x4

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/LevelId;->LOST_PARADISE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 95
    const-string v0, "kretari"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v5, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 96
    const-string v0, "warden"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v7, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v5

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 97
    return-void
.end method

.method private static varargs claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 8

    .prologue
    .line 100
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v1

    .line 101
    if-gez v1, :cond_7

    .line 105
    :cond_6
    return-void

    .line 102
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    aput v1, v0, v2

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->home:[Z

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 104
    array-length v2, p2

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v2, :cond_6

    aget-object v3, p2, v0

    sget-object v4, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v3

    aput v1, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public static fontPx(I)I
    .registers 3

    .prologue
    .line 23
    const/16 v0, 0x18

    if-gt p0, v0, :cond_c

    int-to-float v0, p0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :cond_c
    return p0
.end method

.method static isHome(Lfr/testudo/spacecorsair/game/levels/LevelId;)Z
    .registers 3

    .prologue
    .line 109
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    if-nez v0, :cond_7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModMap;->build()V

    .line 110
    :cond_7
    if-eqz p0, :cond_15

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->home:[Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 3

    .prologue
    .line 115
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    if-nez v0, :cond_7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModMap;->build()V

    .line 116
    :cond_7
    if-nez p0, :cond_b

    const/4 v0, -0x1

    :goto_a
    return v0

    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_a
.end method

.method public static radarPoint(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V
    .registers 17

    .prologue
    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_12

    const v0, 0x3f51eb85    # 0.82f

    cmpl-float v0, p4, v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_16

    .line 33
    :cond_12
    invoke-virtual/range {p0 .. p7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 48
    :goto_15
    return-void

    .line 37
    :cond_16
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ee66666    # 0.45f

    mul-float v1, v1, p7

    :try_start_1d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->rp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v8

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->rp:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3e6147ae    # 0.22f

    const/4 v5, 0x0

    const v0, 0x4019999a    # 2.4f

    mul-float v7, p7, v0

    move-object v0, p0

    move v2, p2

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 40
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v7, p7, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 41
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->rp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    neg-float v1, v8

    neg-float v2, v8

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 42
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->rp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f75c28f    # 0.96f

    const v5, 0x3f19999a    # 0.6f

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v7, p7, v0

    move-object v0, p0

    move v2, p2

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 43
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->rp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v8

    invoke-virtual {v0, v8, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 44
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->rp:Lfr/testudo/spacecorsair/engine/Vector2;

    const v3, 0x3f0ccccd    # 0.55f

    const v4, 0x3ec28f5c    # 0.38f

    const/4 v5, 0x0

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v7, p7, v0

    move-object v0, p0

    move v2, p2

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_93} :catch_94

    goto :goto_15

    .line 45
    :catch_94
    move-exception v0

    .line 46
    invoke-virtual/range {p0 .. p7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    goto/16 :goto_15
.end method

.method public static radarPoint2(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFFLfr/testudo/spacecorsair/business/Element;)V
    .registers 18

    .prologue
    .line 59
    if-eqz p8, :cond_2f

    :try_start_2
    invoke-static/range {p8 .. p8}, Lfr/testudo/spacecorsair/mod/ModLive;->outlevels(Lfr/testudo/spacecorsair/business/Element;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 60
    const-string v0, "icon_skull"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->ready(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_2f

    .line 62
    const/high16 v4, 0x41500000    # 13.0f

    const v1, 0x3f555555

    mul-float v3, v4, v1

    .line 63
    iget v1, p1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v2, p1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3e3851ec    # 0.18f

    const v8, 0x3f59999a    # 0.85f

    invoke-static {v8, p6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static/range {v0 .. v8}, Lfr/testudo/spacecorsair/mod/ModFx;->hudTex(Lfr/testudo/spacecorsair/display/Texture;FFFFFFFF)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_2e

    .line 71
    :goto_2d
    return-void

    .line 67
    :catch_2e
    move-exception v0

    .line 70
    :cond_2f
    invoke-static/range {p0 .. p7}, Lfr/testudo/spacecorsair/mod/ModMap;->radarPoint(Lfr/testudo/spacecorsair/engine/RenderQueue;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    goto :goto_2d
.end method

.method static territory(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 15

    .prologue
    .line 131
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v10

    .line 132
    if-gez v10, :cond_7

    .line 180
    :cond_6
    :goto_6
    return-void

    .line 133
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v11, v0, v10

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->home:[Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget-boolean v12, v0, v1

    .line 135
    const v0, 0x3f59999a    # 0.85f

    const v1, 0x3e19999a    # 0.15f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408c200000000000L    # 900.0

    div-double/2addr v2, v4

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float v13, v0, v1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map_territory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_184

    const/4 v1, 0x1

    move v6, v1

    .line 139
    :goto_4f
    if-nez v0, :cond_1aa

    const-string v0, "fx_glow"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    move-object v1, v0

    .line 140
    :goto_58
    if-eqz v1, :cond_8d

    .line 141
    if-eqz v12, :cond_188

    const/high16 v0, 0x44340000    # 720.0f

    .line 142
    :goto_5e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v1, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 143
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 144
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 145
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 147
    if-eqz v6, :cond_191

    if-eqz v12, :cond_18c

    const v6, 0x3f0ccccd    # 0.55f

    :goto_83
    mul-float/2addr v6, v13

    iget v7, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iget v8, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iget v9, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    .line 146
    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 150
    :cond_8d
    if-eqz v12, :cond_ce

    .line 151
    const-string v0, "map_border"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 152
    if-nez v0, :cond_9d

    const-string v0, "fx_ring"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 153
    :cond_9d
    if-eqz v0, :cond_ce

    .line 154
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 155
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 156
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 157
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 158
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v6, v13

    iget v7, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iget v8, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iget v9, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 162
    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emblem_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_122

    .line 164
    if-eqz v12, :cond_19d

    const/high16 v0, 0x42f00000    # 120.0f

    .line 165
    :goto_ed
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v1, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 166
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 167
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 168
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    if-eqz v12, :cond_1a1

    const/high16 v0, -0x3cd10000    # -175.0f

    :goto_105
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 169
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v12, :cond_1a5

    const v6, 0x3f666666    # 0.9f

    :goto_119
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 171
    :cond_122
    if-eqz v12, :cond_6

    .line 172
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->labels:[Ljava/lang/String;

    if-nez v0, :cond_136

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->labels:[Ljava/lang/String;

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->labels:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->labelHalf:[F

    .line 173
    :cond_136
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->labels:[Ljava/lang/String;

    aget-object v0, v0, v10

    if-nez v0, :cond_157

    .line 174
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->labels:[Ljava/lang/String;

    iget-object v1, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->labelHalf:[F

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMap;->labels:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    aput v1, v0, v10

    .line 177
    :cond_157
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->labelHalf:[F

    aget v1, v1, v10

    neg-float v1, v1

    const/high16 v2, -0x3cae0000    # -210.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 178
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMap;->labels:[Ljava/lang/String;

    aget-object v3, v3, v10

    iget v4, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iget v5, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iget v6, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    const v7, 0x3f733333    # 0.95f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_6

    .line 138
    :cond_184
    const/4 v1, 0x0

    move v6, v1

    goto/16 :goto_4f

    .line 141
    :cond_188
    const/high16 v0, 0x44020000    # 520.0f

    goto/16 :goto_5e

    .line 147
    :cond_18c
    const v6, 0x3eb33333    # 0.35f

    goto/16 :goto_83

    :cond_191
    if-eqz v12, :cond_198

    const v6, 0x3e99999a    # 0.3f

    goto/16 :goto_83

    :cond_198
    const v6, 0x3e3851ec    # 0.18f

    goto/16 :goto_83

    .line 164
    :cond_19d
    const/high16 v0, 0x42a00000    # 80.0f

    goto/16 :goto_ed

    .line 168
    :cond_1a1
    const/high16 v0, -0x3cf40000    # -140.0f

    goto/16 :goto_105

    .line 169
    :cond_1a5
    const v6, 0x3f19999a    # 0.6f

    goto/16 :goto_119

    :cond_1aa
    move-object v1, v0

    goto/16 :goto_58
.end method
