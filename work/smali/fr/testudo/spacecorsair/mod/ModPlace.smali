.class final Lfr/testudo/spacecorsair/mod/ModPlace;
.super Ljava/lang/Object;
.source "ModPlace.java"


# static fields
.field static final AMBUSH_DIST:F = 4500.0f

.field static final BOOST:F = 2.0f

.field static final BOOST_UNTIL:F = 2000.0f

.field static final OBJECTIVE_MIN:F = 8000.0f

.field static final OUTPOST_MAX:F = 15000.0f

.field static final OUTPOST_MIN:F = 12000.0f

.field private static final boosted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModPlace;->boosted:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ambushPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 9

    .prologue
    const-wide v6, 0x40b1940000000000L    # 4500.0

    .line 146
    const/4 v3, 0x0

    .line 147
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 148
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->sources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 149
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 150
    cmpg-float v5, v1, v2

    if-gez v5, :cond_78

    :goto_27
    move v2, v1

    move-object v3, v0

    .line 151
    goto :goto_11

    .line 152
    :cond_2a
    if-eqz v3, :cond_6a

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_6a

    iget-object v0, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, v3, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 153
    :goto_46
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 154
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    return-object v0

    .line 152
    :cond_6a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    goto :goto_46

    :cond_78
    move v1, v2

    move-object v0, v3

    goto :goto_27
.end method

.method static boost(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;)V
    .registers 2

    .prologue
    .line 162
    if-eqz p0, :cond_f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPlace;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPlace;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_f
    return-void
.end method

.method static bounds()[F
    .registers 11

    .prologue
    const v10, -0x39e3c000    # -10000.0f

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 61
    const/4 v0, 0x4

    new-array v3, v0, [F

    fill-array-data v3, :array_7a

    .line 62
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->level()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v4

    .line 63
    if-eqz v4, :cond_63

    move v1, v2

    .line 64
    :goto_14
    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_63

    .line 65
    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 66
    if-eqz v0, :cond_2e

    iget-boolean v5, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v5, :cond_2e

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    if-nez v5, :cond_32

    .line 64
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 67
    :cond_32
    aget v5, v3, v2

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v3, v2

    .line 68
    aget v5, v3, v8

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v3, v8

    .line 69
    aget v5, v3, v7

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v3, v7

    .line 70
    aget v5, v3, v9

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v3, v9

    goto :goto_2e

    .line 73
    :cond_63
    aget v0, v3, v2

    aget v1, v3, v7

    cmpl-float v0, v0, v1

    if-lez v0, :cond_79

    aput v10, v3, v2

    aput v10, v3, v8

    const v0, 0x461c4000    # 10000.0f

    aput v0, v3, v7

    const v0, 0x461c4000    # 10000.0f

    aput v0, v3, v9

    .line 74
    :cond_79
    return-object v3

    .line 61
    :array_7a
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
        -0x800001
        -0x800001
    .end array-data
.end method

.method static clearBoost()V
    .registers 1

    .prologue
    .line 183
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPlace;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    return-void
.end method

.method static contractSector(Lfr/testudo/spacecorsair/game/levels/LevelId;IJ)Lfr/testudo/spacecorsair/game/levels/LevelId;
    .registers 10

    .prologue
    .line 46
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModPlace;->neighbours(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 48
    :goto_a
    return-object p0

    :cond_b
    const-wide/16 v2, 0x7

    mul-long/2addr v2, p2

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/game/levels/LevelId;

    move-object p0, v0

    goto :goto_a
.end method

.method static farPoint(Lfr/testudo/spacecorsair/engine/Vector2;FF)Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 15

    .prologue
    .line 82
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->bounds()[F

    move-result-object v4

    .line 83
    const/4 v2, 0x0

    .line 84
    const/high16 v1, -0x40800000    # -1.0f

    .line 85
    const/4 v0, 0x0

    move v3, v0

    :goto_9
    const/16 v0, 0xc8

    if-ge v3, v0, :cond_5e

    .line 86
    const/4 v0, 0x0

    aget v0, v4, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v5, v6

    const/4 v6, 0x2

    aget v6, v4, v6

    const/4 v7, 0x0

    aget v7, v4, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v5, v0

    const/4 v0, 0x1

    aget v0, v4, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v7, 0x3

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v4, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 87
    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v0, v5, v0

    float-to-double v8, v0

    iget v0, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float v0, v6, v0

    float-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v0, v8

    .line 88
    cmpl-float v7, v0, p1

    if-ltz v7, :cond_4c

    cmpg-float v7, v0, p2

    if-gtz v7, :cond_4c

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 94
    :cond_4b
    :goto_4b
    return-object v2

    .line 89
    :cond_4c
    cmpg-float v7, v0, p2

    if-gtz v7, :cond_98

    cmpl-float v7, v0, v1

    if-lez v7, :cond_98

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    move-object v2, v1

    .line 85
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_9

    .line 91
    :cond_5e
    if-nez v2, :cond_4b

    .line 93
    const/4 v0, 0x1

    aget v0, v4, v0

    const/4 v1, 0x3

    aget v1, v4, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x2

    aget v3, v4, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 94
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, p0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, p1

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v4, p1

    mul-double/2addr v0, v4

    double-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    goto :goto_4b

    :cond_98
    move v0, v1

    goto :goto_5a
.end method

.method static farthestStation(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/world/station/Station;)Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 8

    .prologue
    .line 109
    const/4 v3, 0x0

    .line 110
    const/high16 v2, -0x40800000    # -1.0f

    .line 111
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->stations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 112
    if-eq v0, p1, :cond_b

    .line 113
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 114
    cmpl-float v5, v1, v2

    if-lez v5, :cond_27

    :goto_23
    move v2, v1

    move-object v3, v0

    .line 115
    goto :goto_b

    .line 116
    :cond_26
    return-object v3

    :cond_27
    move v1, v2

    move-object v0, v3

    goto :goto_23
.end method

.method static level()Lfr/testudo/spacecorsair/game/levels/Level;
    .registers 1

    .prologue
    .line 53
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    .line 55
    :goto_6
    return-object v0

    .line 54
    :catch_7
    move-exception v0

    .line 55
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static nearestStation(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 7

    .prologue
    .line 120
    const/4 v3, 0x0

    .line 121
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 122
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->stations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 123
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, p0}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    .line 124
    cmpg-float v5, v1, v2

    if-gez v5, :cond_26

    :goto_22
    move v2, v1

    move-object v3, v0

    .line 125
    goto :goto_c

    .line 126
    :cond_25
    return-object v3

    :cond_26
    move v1, v2

    move-object v0, v3

    goto :goto_22
.end method

.method static neighbours(Lfr/testudo/spacecorsair/game/levels/LevelId;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            ")",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/game/levels/LevelId;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    if-nez p0, :cond_9

    .line 41
    :cond_8
    return-object v0

    .line 37
    :cond_9
    const/4 v2, 0x4

    new-array v2, v2, [Lfr/testudo/spacecorsair/game/levels/LevelId;

    iget-object v3, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->top:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v3, v2, v1

    const/4 v3, 0x1

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->bottom:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->left:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/LevelId;->right:Lfr/testudo/spacecorsair/game/levels/LevelId;

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_20
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    .line 38
    if-eqz v4, :cond_38

    sget-object v5, Lfr/testudo/spacecorsair/game/levels/LevelId;->GALACTIC_ARENA:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v4, v5, :cond_38

    sget-object v5, Lfr/testudo/spacecorsair/game/levels/LevelId;->FFA_THE_PLAYER_PAY:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v4, v5, :cond_38

    sget-object v5, Lfr/testudo/spacecorsair/game/levels/LevelId;->TUTORIAL:Lfr/testudo/spacecorsair/game/levels/LevelId;

    if-eq v4, v5, :cond_38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 37
    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 39
    :cond_3b
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38
.end method

.method private static sources()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->level()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v3

    .line 133
    if-nez v3, :cond_d

    move-object v0, v2

    .line 138
    :goto_c
    return-object v0

    .line 134
    :cond_d
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    iget-object v0, v3, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 135
    iget-object v0, v3, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 136
    instance-of v4, v0, Lfr/testudo/spacecorsair/business/world/Portal;

    if-nez v4, :cond_27

    instance-of v4, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-eqz v4, :cond_2e

    :cond_27
    iget-boolean v4, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v4, :cond_2e

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_32
    move-object v0, v2

    .line 138
    goto :goto_c
.end method

.method static stations()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/world/station/Station;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModPlace;->level()Lfr/testudo/spacecorsair/game/levels/Level;

    move-result-object v4

    .line 100
    if-nez v4, :cond_d

    move-object v0, v3

    .line 105
    :goto_c
    return-object v0

    .line 101
    :cond_d
    const/4 v0, 0x0

    move v2, v0

    :goto_f
    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    .line 102
    iget-object v0, v4, Lfr/testudo/spacecorsair/game/levels/Level;->elements:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    .line 103
    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    if-eqz v1, :cond_37

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v1, :cond_37

    move-object v1, v0

    check-cast v1, Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/business/world/station/Station;->enableDocking:Z

    if-eqz v1, :cond_37

    instance-of v1, v0, Lfr/testudo/spacecorsair/business/world/station/DestroyablePirateStation;

    if-nez v1, :cond_37

    check-cast v0, Lfr/testudo/spacecorsair/business/world/station/Station;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_37
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    :cond_3b
    move-object v0, v3

    .line 105
    goto :goto_c
.end method

.method static tickBoost(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPlace;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_e
    if-ltz v3, :cond_5c

    .line 168
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPlace;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 169
    if-eqz v0, :cond_35

    iget-boolean v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v1, :cond_35

    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-lez v1, :cond_35

    if-eqz p0, :cond_35

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v4, p0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    const/high16 v4, 0x44fa0000    # 2000.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4d

    :cond_35
    const/4 v1, 0x1

    .line 170
    :goto_36
    if-eqz v1, :cond_4f

    .line 171
    if-eqz v0, :cond_44

    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_44

    iput v5, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    iput v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareDuree:I

    .line 172
    :cond_44
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModPlace;->boosted:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    :cond_49
    :goto_49
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_e

    :cond_4d
    move v1, v2

    .line 169
    goto :goto_36

    .line 175
    :cond_4f
    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_49

    .line 176
    iput v6, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareValue:F

    .line 177
    const/16 v1, 0xc8

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->alterationSnareDuree:I

    goto :goto_49

    .line 180
    :cond_5c
    return-void
.end method
