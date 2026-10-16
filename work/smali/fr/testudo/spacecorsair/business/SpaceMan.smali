.class public Lfr/testudo/spacecorsair/business/SpaceMan;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# static fields
.field public static final ANIM_SPEED_IN_MILLI:I = 0x96

.field public static DrawablesCount:I

.field public static final LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field private static animDrawable:[Lfr/testudo/spacecorsair/display/Drawable;

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field private curDrawPhase:I

.field private timeCounter:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v1, 0x41a00000    # 20.0f

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/SpaceMan;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/SpaceMan;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/SpaceMan;->animDrawable:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 42
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/business/SpaceMan;->DrawablesCount:I

    .line 125
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 127
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    invoke-direct {v1, v2, v0}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v1, Lfr/testudo/spacecorsair/business/SpaceMan;->LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 43
    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->curDrawPhase:I

    .line 44
    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->timeCounter:I

    .line 57
    return-void
.end method

.method public static setTextures([Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 6

    .prologue
    .line 31
    array-length v0, p0

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    sput-object v0, Lfr/testudo/spacecorsair/business/SpaceMan;->animDrawable:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 32
    const/4 v0, 0x0

    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_19

    .line 33
    sget-object v1, Lfr/testudo/spacecorsair/business/SpaceMan;->animDrawable:[Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/SpaceMan;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    aget-object v4, p0, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 35
    :cond_19
    array-length v0, p0

    sput v0, Lfr/testudo/spacecorsair/business/SpaceMan;->DrawablesCount:I

    .line 37
    return-void
.end method


# virtual methods
.method public applyAsteroidCollision(F)V
    .registers 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->applyAsteroidCollision(F)V

    .line 119
    return-void
.end method

.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 87
    iget v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->timeCounter:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->timeCounter:I

    .line 88
    iget v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->timeCounter:I

    if-gtz v0, :cond_21

    .line 89
    iget v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->curDrawPhase:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->curDrawPhase:I

    .line 90
    const/16 v0, 0x96

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->timeCounter:I

    .line 91
    iget v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->curDrawPhase:I

    sget v1, Lfr/testudo/spacecorsair/business/SpaceMan;->DrawablesCount:I

    if-ne v0, v1, :cond_21

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->curDrawPhase:I

    .line 95
    :cond_21
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 3

    .prologue
    .line 105
    sget-object v0, Lfr/testudo/spacecorsair/business/SpaceMan;->animDrawable:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v1, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->curDrawPhase:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;
    .registers 2

    .prologue
    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/business/SpaceMan;->LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/business/SpaceMan;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/SpaceMan;
    .registers 7

    .prologue
    const v2, 0x3e99999a    # 0.3f

    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/SpaceMan;->reset()V

    .line 62
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->ignoreLevelOnDamage:Z

    .line 63
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->life:F

    .line 64
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->mass:F

    .line 65
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/SpaceMan;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 66
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/SpaceMan;->setSpeedVector(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 67
    iput p3, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->spinSpeed:F

    .line 68
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->drawOnRadar:Z

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->radarColorB:F

    .line 70
    iput v2, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->radarColorG:F

    .line 71
    iput v2, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->radarColorR:F

    .line 72
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->radarPointSize:F

    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getLevel()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->level:I

    .line 74
    const v0, 0x3f80e560    # 1.007f

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->speedDeperditionfactor:F

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->curDrawPhase:I

    .line 76
    const/16 v0, 0x96

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->timeCounter:I

    .line 77
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->hasSpeedDeperdition:Z

    .line 78
    const v0, 0x459c4000    # 5000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->distanceToPlayer:F

    .line 80
    return-object p0
.end method

.method public onDestroyed(Z)V
    .registers 3

    .prologue
    .line 111
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->onDestroyed(Z)V

    .line 112
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 114
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 138
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/Element;->registerYourselfToDrawQueue()V

    .line 140
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 142
    iget v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 143
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->specificNameDecalX:I

    .line 145
    :cond_1a
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/SpaceMan;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 147
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/SpaceMan;->specificName:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 152
    :cond_4f
    return-void
.end method
