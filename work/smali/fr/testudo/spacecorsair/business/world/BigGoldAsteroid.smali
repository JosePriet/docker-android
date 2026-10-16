.class public Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;
.super Lfr/testudo/spacecorsair/business/world/BigAsteroid;
.source "SourceFile"


# static fields
.field public static final LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->malachite:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 43
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->EASY_FINE_MEDIUM_RARE_TIME2:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    invoke-direct {v1, v2, v0}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v1, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;-><init>()V

    return-void
.end method


# virtual methods
.method public getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    return-object v0
.end method

.method public bridge synthetic init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;
    .registers 5

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    move-result-object v0

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BigAsteroid;
    .registers 5

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->r:F

    .line 26
    const v0, 0x3f428f5c    # 0.76f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->g:F

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->b:F

    .line 31
    return-object p0
.end method

.method public onImpact(FLfr/testudo/spacecorsair/business/Element;)V
    .registers 15

    .prologue
    const/4 v0, 0x0

    const/high16 v11, 0x42a00000    # 80.0f

    const/high16 v10, 0x42200000    # 40.0f

    const v9, 0x3ecccccd    # 0.4f

    const v8, -0x41b33333    # -0.2f

    .line 64
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_77

    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->removed:Z

    if-nez v1, :cond_77

    .line 65
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->onDestroyed(Z)V

    .line 66
    :goto_18
    const/4 v1, 0x1

    if-gt v0, v1, :cond_77

    .line 67
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newGoldAsteroid()Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x41000000    # -0.5f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v1

    .line 68
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->lifeLimited:Z

    if-eqz v2, :cond_3a

    .line 69
    iget v2, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->lifeTimeInMilli:I

    add-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/Asteroid;->enableLifeLimit(I)Lfr/testudo/spacecorsair/business/world/Asteroid;

    .line 71
    :cond_3a
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    iget-object v3, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v3, v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v11

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/Asteroid;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 72
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 73
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v9

    add-float/2addr v3, v8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v9

    add-float/2addr v4, v8

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 74
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 78
    :cond_77
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_9

    .line 60
    :goto_8
    return-void

    .line 57
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/BigGoldAsteroid;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    goto :goto_8
.end method
