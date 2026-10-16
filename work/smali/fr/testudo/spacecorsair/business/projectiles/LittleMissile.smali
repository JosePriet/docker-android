.class public Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;
.super Lfr/testudo/spacecorsair/business/projectiles/Missile;
.source "SourceFile"


# static fields
.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static final drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static final physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x42000000    # 32.0f

    const/high16 v1, 0x41a00000    # 20.0f

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 18
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/projectiles/Missile;-><init>()V

    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 30
    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 7

    .prologue
    .line 52
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->registerYourselfToDrawQueue()V

    .line 53
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->isPousee:Z

    if-eqz v0, :cond_47

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 55
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->spin:F

    iget v2, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->spinSpeed:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 57
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 58
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 60
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->tuyereDrawable:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->curAnimIndex:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/projectiles/LittleMissile;->spinSpeed:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;F)V

    .line 67
    :cond_47
    return-void
.end method
