.class public Lfr/testudo/spacecorsair/display/ShockWave;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# static fields
.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static texture:Lfr/testudo/spacecorsair/display/Texture;


# instance fields
.field currentDim:F

.field private instanceDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field maxSize:F

.field pixedPerSec:F

.field private shockDim:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/display/ShockWave;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 26
    iput v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->pixedPerSec:F

    .line 27
    iput v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->maxSize:F

    .line 28
    iput v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->currentDim:F

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->shockDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_8:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/display/ShockWave;->texture:Lfr/testudo/spacecorsair/display/Texture;

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->instanceDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 43
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 1

    .prologue
    .line 35
    sput-object p0, Lfr/testudo/spacecorsair/display/ShockWave;->texture:Lfr/testudo/spacecorsair/display/Texture;

    .line 37
    return-void
.end method

.method private updateShockDim()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->instanceDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->shockDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/Drawable;->setDimension(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 70
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->shockDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iput v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->currentDim:F

    .line 71
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 77
    iget v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->currentDim:F

    long-to-float v1, p1

    iget v2, p0, Lfr/testudo/spacecorsair/display/ShockWave;->pixedPerSec:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->currentDim:F

    .line 79
    iget v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->currentDim:F

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->shockDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    .line 80
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->shockDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->currentDim:F

    iget v2, p0, Lfr/testudo/spacecorsair/display/ShockWave;->currentDim:F

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 81
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/ShockWave;->updateShockDim()V

    .line 84
    :cond_29
    iget v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->currentDim:F

    iget v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->maxSize:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_34

    .line 85
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/ShockWave;->remove()V

    .line 88
    :cond_34
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->instanceDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_2:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;
    .registers 6

    .prologue
    .line 46
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 47
    iput p4, p0, Lfr/testudo/spacecorsair/display/ShockWave;->pixedPerSec:F

    .line 48
    iput p3, p0, Lfr/testudo/spacecorsair/display/ShockWave;->maxSize:F

    .line 49
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->shockDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->spin:F

    .line 51
    invoke-direct {p0}, Lfr/testudo/spacecorsair/display/ShockWave;->updateShockDim()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->doesColideWithOthers:Z

    .line 54
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v0, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    iput v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v0, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    iput v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v0, v0, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    iput v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 58
    return-object p0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->a:F

    .line 121
    iget v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->currentDim:F

    iget v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->maxSize:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    .line 122
    iget v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->maxSize:F

    iget v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->currentDim:F

    sub-float/2addr v0, v1

    iget v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->maxSize:F

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->a:F

    .line 125
    :cond_1e
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/display/ShockWave;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/ShockWave;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/display/ShockWave;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/display/ShockWave;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 128
    return-void
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/ShockWave;->removed:Z

    .line 100
    return-void
.end method

.method public withColor(FFF)Lfr/testudo/spacecorsair/display/ShockWave;
    .registers 4

    .prologue
    .line 62
    iput p1, p0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 63
    iput p2, p0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 64
    iput p3, p0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 65
    return-object p0
.end method
