.class public final Lfr/testudo/spacecorsair/mod/ModAegisDrones;
.super Ljava/lang/Object;
.source "ModAegisDrones.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;
    }
.end annotation


# static fields
.field static final HULL_SHARE:F = 0.02f

.field static final MAX_DRONES:I = 0x5

.field static final MIN_DRONES:I = 0x2

.field static final RAIL_MS:J = 0x898L

.field static final RAIL_RANGE:F = 3200.0f

.field static final RAIL_SHARE:F = 0.6f

.field static final RAIL_SPEED:F = 26.0f

.field static final RESPAWN_MS:J = 0x2710L

.field static final SIZE:I = 0xaa

.field private static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field private static final reload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            "[J>;"
        }
    .end annotation
.end field

.field private static final shotOf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/ennemis/Ennemis;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final wings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;",
            "Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->wings:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->reload:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->shotOf:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clear()V
    .registers 2

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->wings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->drop(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V

    goto :goto_f

    .line 87
    :cond_1f
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->wings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    return-void
.end method

.method private static drawable()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 4

    .prologue
    const/high16 v3, 0x432a0000    # 170.0f

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-nez v0, :cond_1d

    .line 92
    const-string v0, "drone_aegis"

    invoke-static {v0}, Lfr/testudo/spacecorsair/mod/ModArt;->lazyTex(Ljava/lang/String;)Lfr/testudo/spacecorsair/display/Texture;

    move-result-object v0

    .line 93
    if-nez v0, :cond_10

    const/4 v0, 0x0

    .line 96
    :goto_f
    return-object v0

    .line 94
    :cond_10
    new-instance v1, Lfr/testudo/spacecorsair/mod/ModArt$Art;

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lfr/testudo/spacecorsair/mod/ModArt$Art;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;Z)V

    sput-object v1, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 96
    :cond_1d
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_f
.end method

.method static drop(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;)V
    .registers 4

    .prologue
    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->wings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;

    .line 76
    if-nez v0, :cond_b

    .line 78
    :cond_a
    return-void

    .line 77
    :cond_b
    iget-object v0, v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->drones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->reload:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->shotOf:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method private static fly(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 22

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v2, :cond_e

    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v2, :cond_f

    .line 152
    :cond_e
    :goto_e
    return-void

    .line 132
    :cond_f
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->reload:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 133
    if-eqz v2, :cond_e

    .line 134
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    sub-long v4, v4, p2

    aput-wide v4, v2, v3

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v16

    .line 136
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_e

    const/high16 v3, 0x45480000    # 3200.0f

    cmpl-float v3, v16, v3

    if-gtz v3, :cond_e

    .line 137
    const/4 v3, 0x0

    const-wide/16 v4, 0x898

    aput-wide v4, v2, v3

    .line 138
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->shotOf:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Float;

    .line 139
    const v2, 0x45228000    # 2600.0f

    div-float v2, v16, v2

    .line 140
    move-object/from16 v0, p1

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    move-object/from16 v0, p1

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    move-object/from16 v0, p1

    iget-object v6, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    .line 141
    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v5, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v5

    float-to-double v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float v2, v4, v2

    float-to-double v4, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float v11, v2, v4

    .line 142
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newEnnergyBullet()Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 143
    if-nez v3, :cond_129

    const/high16 v3, 0x42c80000    # 100.0f

    :goto_9a
    const/4 v4, 0x4

    const v6, 0x3f4ccccd    # 0.8f

    const v7, 0x3f0ccccd    # 0.55f

    const v8, 0x3f733333    # 0.95f

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->TAG:[Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    const/4 v10, 0x0

    aget-object v10, v5, v10

    move-object/from16 v5, p0

    invoke-virtual/range {v2 .. v10}, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->init(FILfr/testudo/spacecorsair/business/Element;FFFFLfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;

    move-result-object v2

    .line 144
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 145
    iget-object v3, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    const/high16 v5, -0x3e300000    # -26.0f

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    float-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 146
    iput v11, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->spin:F

    .line 147
    const-wide/16 v4, 0x587

    iput-wide v4, v2, Lfr/testudo/spacecorsair/business/projectiles/EnergyBullet;->lifeTimeInMilli:J

    .line 148
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v2, "fx_core"

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42f00000    # 120.0f

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v9, 0x42dc0000    # 110.0f

    const v10, 0x3f0ccccd    # 0.55f

    const v11, 0x3f733333    # 0.95f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 150
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x459c4000    # 5000.0f

    div-float v4, v16, v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 151
    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_e

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModWeapons;->SOUND:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    const/high16 v4, 0x3fa00000    # 1.25f

    sget-object v5, Lfr/testudo/spacecorsair/mod/ModWeapons;->GAP:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    invoke-static {v3, v2, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    goto/16 :goto_e

    .line 143
    :cond_129
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto/16 :goto_9a
.end method

.method public static isDrone(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 82
    instance-of v0, p0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-eqz v0, :cond_e

    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->reload:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static spawn(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 20

    .prologue
    .line 100
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->drawable()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    .line 101
    if-nez v2, :cond_8

    const/4 v2, 0x0

    .line 127
    :goto_7
    return-object v2

    .line 102
    :cond_8
    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpecByLevel;->BasciEnnemisSpec:[Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;

    .line 103
    const/4 v4, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 104
    invoke-static/range {p1 .. p1}, Lfr/testudo/spacecorsair/mod/ModV34;->want(I)V

    .line 105
    new-instance v16, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;

    invoke-direct/range {v16 .. v16}, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;-><init>()V

    .line 106
    move-object/from16 v0, v16

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->d:Lfr/testudo/spacecorsair/display/Drawable;

    .line 107
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v5, 0x42ee0000    # 119.0f

    const/high16 v6, 0x42ee0000    # 119.0f

    invoke-direct {v2, v5, v6}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    move-object/from16 v0, v16

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->phys:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 108
    aget-object v2, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/BasicEnnemyShip;

    .line 109
    const-wide v2, 0x1fffffffffffffffL

    move-object/from16 v0, v16

    iput-wide v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->milleSecBetweenShots:J

    .line 110
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->bulletDamage:F

    .line 111
    move-object/from16 v0, v16

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->pouseeForce:F

    const v3, 0x3fcccccd    # 1.6f

    mul-float/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->pouseeForce:F

    .line 112
    const/high16 v2, 0x447a0000    # 1000.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->maxLife:F

    const v4, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->maxLife:F

    .line 113
    move-object/from16 v0, v16

    iget v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->maxLife:F

    move-object/from16 v0, v16

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->life:F

    .line 114
    const/high16 v2, 0x42c80000    # 100.0f

    move-object/from16 v0, v16

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->lifeInPourc:F

    .line 115
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->xp:I

    .line 116
    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootConfig;->NONE:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    move-object/from16 v0, v16

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 117
    const-string v2, "Aegis Rail Drone"

    invoke-static {v2}, Lfr/testudo/spacecorsair/mod/ModLang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->specificName:Ljava/lang/String;

    .line 118
    const/4 v2, -0x1

    move-object/from16 v0, v16

    iput v2, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->specificNameDecalX:I

    .line 119
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    .line 120
    move-object/from16 v0, v16

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    const/high16 v6, 0x43fa0000    # 500.0f

    mul-float/2addr v5, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v3

    invoke-virtual {v4, v5, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 121
    invoke-virtual/range {v16 .. v16}, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->updateSapCoords()V

    .line 122
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->initAttackTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 123
    invoke-virtual/range {v16 .. v16}, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->addToCurrentLevel()V

    .line 124
    sget-object v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->reload:Ljava/util/Map;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    const-wide/16 v6, 0x320

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4089000000000000L    # 800.0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v3, v4

    move-object/from16 v0, v16

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "fx_glow"

    move-object/from16 v0, v16

    iget-object v3, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lfr/testudo/spacecorsair/mod/ModFleet$Fighter;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43c80000    # 400.0f

    const/high16 v8, 0x42a00000    # 80.0f

    const/high16 v9, 0x43820000    # 260.0f

    const v10, 0x3ee66666    # 0.45f

    const v11, 0x3f59999a    # 0.85f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Lfr/testudo/spacecorsair/mod/ModFx;->part(Ljava/lang/String;FFFFFFFFFFFZZ)V

    .line 126
    const-string v2, "warp_in"

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3fcccccd    # 1.6f

    const-wide/16 v6, 0x190

    invoke-static {v2, v3, v4, v6, v7}, Lfr/testudo/spacecorsair/mod/ModSound;->play(Ljava/lang/String;FFJ)I

    move-object/from16 v2, v16

    .line 127
    goto/16 :goto_7
.end method

.method static tick(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;FILfr/testudo/spacecorsair/business/player/PlayerShip;J)V
    .registers 12

    .prologue
    .line 49
    :try_start_0
    sget-object v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->wings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;

    .line 50
    if-nez v0, :cond_a1

    new-instance v0, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->wings:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 51
    :goto_15
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->drones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1e
    if-ltz v1, :cond_46

    .line 52
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->drones:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 53
    iget-boolean v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->removed:Z

    if-nez v3, :cond_33

    iget v3, v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->life:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_42

    :cond_33
    iget-object v3, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->drones:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->reload:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->shotOf:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_42
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1e

    .line 55
    :cond_46
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->drones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->count:I

    if-ge v0, v1, :cond_9c

    .line 56
    iget-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->next:J

    sub-long/2addr v0, p4

    iput-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->next:J

    .line 57
    iget-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->next:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_71

    .line 58
    const-wide/16 v0, 0x2710

    iput-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->next:J

    .line 59
    :goto_61
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->drones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->count:I

    if-ge v0, v1, :cond_71

    .line 60
    invoke-static {p0, p2, p3}, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->spawn(Lfr/testudo/spacecorsair/business/world/civil/GuardianCivilShip;ILfr/testudo/spacecorsair/business/player/PlayerShip;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    move-result-object v0

    .line 61
    if-nez v0, :cond_89

    .line 67
    :cond_71
    :goto_71
    iget-object v0, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->drones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    invoke-static {v0, p3, p4, p5}, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->fly(Lfr/testudo/spacecorsair/business/ennemis/Ennemis;Lfr/testudo/spacecorsair/business/player/PlayerShip;J)V

    goto :goto_77

    .line 68
    :catch_87
    move-exception v0

    .line 71
    :cond_88
    return-void

    .line 62
    :cond_89
    iget-object v1, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->drones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lfr/testudo/spacecorsair/mod/ModAegisDrones;->shotOf:Ljava/util/Map;

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 66
    :cond_9c
    const-wide/16 v0, 0x2710

    iput-wide v0, v2, Lfr/testudo/spacecorsair/mod/ModAegisDrones$Wing;->next:J
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a0} :catch_87

    goto :goto_71

    :cond_a1
    move-object v2, v0

    goto/16 :goto_15
.end method
