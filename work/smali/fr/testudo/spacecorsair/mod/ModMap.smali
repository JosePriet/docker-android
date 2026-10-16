.class public final Lfr/testudo/spacecorsair/mod/ModMap;
.super Ljava/lang/Object;
.source "ModMap.java"


# static fields
.field private static final EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

.field private static final at:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static home:[Z

.field private static labelHalf:[F

.field private static labels:[Ljava/lang/String;

.field private static owner:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 50
    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->additive:Z

    .line 56
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build()V
    .registers 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 23
    invoke-static {}, Lfr/testudo/spacecorsair/game/levels/LevelId;->values()[Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-result-object v0

    array-length v0, v0

    .line 24
    new-array v1, v0, [I

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    .line 25
    new-array v0, v0, [Z

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->home:[Z

    .line 26
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 27
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

    .line 28
    const-string v0, "reaver"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->PIRATE_BAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v5, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 29
    const-string v0, "helion"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HELIOSTAT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v7, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->CONSTELLATION:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v5

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->TWIN_STAR:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 30
    const-string v0, "ironclad"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->ORE_BELT:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v5, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 31
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

    .line 32
    const-string v0, "kretari"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->THE_HIVE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v5, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 33
    const-string v0, "warden"

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/LevelId;->HIGHWAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    new-array v2, v7, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->DELTA_NODE:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v5

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/LevelId;->GREEN_BORDER:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/mod/ModMap;->claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V

    .line 34
    return-void
.end method

.method private static varargs claim(Ljava/lang/String;Lfr/testudo/spacecorsair/game/levels/LevelId;[Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 8

    .prologue
    .line 37
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModFaction;->faction(Ljava/lang/String;)I

    move-result v1

    .line 38
    if-gez v1, :cond_7

    .line 42
    :cond_6
    return-void

    .line 39
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    aput v1, v0, v2

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->home:[Z

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 41
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

.method public static owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I
    .registers 3

    .prologue
    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->owner:[I

    if-nez v0, :cond_7

    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModMap;->build()V

    .line 47
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

.method static territory(Lfr/testudo/spacecorsair/game/levels/LevelId;)V
    .registers 15

    .prologue
    .line 62
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMap;->owner(Lfr/testudo/spacecorsair/game/levels/LevelId;)I

    move-result v10

    .line 63
    if-gez v10, :cond_7

    .line 111
    :cond_6
    :goto_6
    return-void

    .line 64
    :cond_7
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModCapitals;->FACTIONS:[Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;

    aget-object v11, v0, v10

    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->home:[Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/game/levels/LevelId;->ordinal()I

    move-result v1

    aget-boolean v12, v0, v1

    .line 66
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

    .line 68
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

    .line 69
    if-eqz v0, :cond_184

    const/4 v1, 0x1

    move v6, v1

    .line 70
    :goto_4f
    if-nez v0, :cond_1aa

    const-string v0, "fx_glow"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    move-object v1, v0

    .line 71
    :goto_58
    if-eqz v1, :cond_8d

    .line 72
    if-eqz v12, :cond_188

    const/high16 v0, 0x44340000    # 720.0f

    .line 73
    :goto_5e
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v1, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 74
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 75
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 77
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModMap;->GLOW:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 78
    if-eqz v6, :cond_191

    if-eqz v12, :cond_18c

    const v6, 0x3f0ccccd    # 0.55f

    :goto_83
    mul-float/2addr v6, v13

    iget v7, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->r:F

    iget v8, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->g:F

    iget v9, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->b:F

    .line 77
    invoke-virtual/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FZFFFF)V

    .line 81
    :cond_8d
    if-eqz v12, :cond_ce

    .line 82
    const-string v0, "map_border"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 83
    if-nez v0, :cond_9d

    const-string v0, "fx_ring"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->texture(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 84
    :cond_9d
    if-eqz v0, :cond_ce

    .line 85
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->RING:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    const/high16 v1, 0x43b40000    # 360.0f

    iput v1, v0, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 89
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

    .line 93
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

    .line 94
    if-eqz v1, :cond_122

    .line 95
    if-eqz v12, :cond_19d

    const/high16 v0, 0x42f00000    # 120.0f

    .line 96
    :goto_ed
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput-object v1, v2, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->myTexture:Lfr/testudo/spacecorsair/display/Texture;

    .line 97
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->w:F

    .line 98
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModMap;->EMBLEM:Lfr/testudo/spacecorsair/mod/ModFx$Sprite;

    iput v0, v1, Lfr/testudo/spacecorsair/mod/ModFx$Sprite;->h:F

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->at:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->mapPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    if-eqz v12, :cond_1a1

    const/high16 v0, -0x3cd10000    # -175.0f

    :goto_105
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 100
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

    .line 102
    :cond_122
    if-eqz v12, :cond_6

    .line 103
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

    .line 104
    :cond_136
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->labels:[Ljava/lang/String;

    aget-object v0, v0, v10

    if-nez v0, :cond_157

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->labels:[Ljava/lang/String;

    iget-object v1, v11, Lfr/testudo/spacecorsair/mod/ModCapitals$Faction;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 106
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModMap;->labelHalf:[F

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModMap;->labels:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    aput v1, v0, v10

    .line 108
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

    .line 109
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

    .line 69
    :cond_184
    const/4 v1, 0x0

    move v6, v1

    goto/16 :goto_4f

    .line 72
    :cond_188
    const/high16 v0, 0x44020000    # 520.0f

    goto/16 :goto_5e

    .line 78
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

    .line 95
    :cond_19d
    const/high16 v0, 0x42a00000    # 80.0f

    goto/16 :goto_ed

    .line 99
    :cond_1a1
    const/high16 v0, -0x3cf40000    # -140.0f

    goto/16 :goto_105

    .line 100
    :cond_1a5
    const v6, 0x3f19999a    # 0.6f

    goto/16 :goto_119

    :cond_1aa
    move-object v1, v0

    goto/16 :goto_58
.end method
