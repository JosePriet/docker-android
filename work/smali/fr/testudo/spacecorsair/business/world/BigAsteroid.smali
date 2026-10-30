.class public Lfr/testudo/spacecorsair/business/world/BigAsteroid;
.super Lfr/testudo/spacecorsair/business/world/Asteroid;
.source "SourceFile"


# static fields
.field public static final LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static MINI_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static final OBJECT_NAME:Ljava/lang/String; = "Asteroid (big)"

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_128:Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 76
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    .line 77
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->stone:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

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

    .line 83
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->EASY_TRASH:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    invoke-direct {v1, v2, v0}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/Asteroid;-><init>()V

    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 32
    sput-object p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 34
    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;
    .registers 2

    .prologue
    .line 88
    sget-object v0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 69
    sget-object v0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public bridge synthetic init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;
    .registers 5

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BigAsteroid;

    move-result-object v0

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/BigAsteroid;
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/high16 v0, 0x43fa0000    # 500.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->ignoreLevelOnDamage:Z

    .line 46
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->reset()V

    .line 47
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->ignoreLevelOnDamage:Z

    .line 48
    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->life:F

    .line 49
    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->maxLife:F

    .line 50
    const/high16 v0, 0x44af0000    # 1400.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->mass:F

    .line 51
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 52
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->setSpeedVector(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 53
    iput p3, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->spinSpeed:F

    .line 54
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->drawOnRadar:Z

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->radarColorB:F

    .line 56
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->radarColorG:F

    .line 57
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->radarColorR:F

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMap;->asteroidRadar(Lfr/testudo/spacecorsair/business/Element;)V

    .line 58
    const/high16 v0, 0x40900000    # 4.5f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->radarPointSize:F

    .line 59
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->hasSpeedDeperdition:Z

    .line 60
    const v0, 0x48f42400    # 500000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->distanceToPlayer:F

    .line 61
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->lifeLimited:Z

    .line 62
    const v0, 0xf4240

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->lifeTimeInMilli:I

    .line 63
    return-object p0
.end method

.method public onImpact(FLfr/testudo/spacecorsair/business/Element;)V
    .registers 16

    .prologue
    const/high16 v12, 0x42a00000    # 80.0f

    const/high16 v11, 0x42200000    # 40.0f

    const v10, 0x3ecccccd    # 0.4f

    const v9, -0x41b33333    # -0.2f

    const v8, 0x3f333333    # 0.7f

    .line 112
    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_81

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->removed:Z

    if-nez v0, :cond_81

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->onDestroyed(Z)V

    .line 114
    const/4 v0, 0x0

    :goto_1c
    const/4 v1, 0x1

    if-gt v0, v1, :cond_81

    .line 115
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newAsteroid()Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v4, -0x41000000    # -0.5f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lfr/testudo/spacecorsair/business/world/Asteroid;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v1

    .line 116
    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->lifeLimited:Z

    if-eqz v2, :cond_3e

    .line 117
    iget v2, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->lifeTimeInMilli:I

    add-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/Asteroid;->enableLifeLimit(I)Lfr/testudo/spacecorsair/business/world/Asteroid;

    .line 119
    :cond_3e
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    iget-object v3, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v3, v11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v12

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/business/world/Asteroid;->setPosition(FF)Lfr/testudo/spacecorsair/business/Element;

    .line 120
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 121
    iget-object v2, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v10

    add-float/2addr v3, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v9

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 122
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v2, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 123
    iput v8, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->r:F

    .line 124
    iput v8, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->g:F

    .line 125
    iput v8, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->b:F

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 132
    :cond_81
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 94
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/world/Asteroid;->registerYourselfToDrawQueue()V

    .line 98
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 100
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->specificNameDecalX:I

    .line 103
    :cond_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/BigAsteroid;->specificName:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 108
    :cond_4f
    return-void
.end method
