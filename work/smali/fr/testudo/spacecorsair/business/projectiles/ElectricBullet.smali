.class public Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;
.super Lfr/testudo/spacecorsair/business/projectiles/Projectile;
.source "SourceFile"


# static fields
.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static final physicDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final temp1:Lfr/testudo/spacecorsair/engine/Vector2;

.field static final temp2:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field b2:F

.field g2:F

.field r2:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/high16 v1, 0x41700000    # 15.0f

    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->physicDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 69
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->temp1:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 70
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->temp2:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;-><init>()V

    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_32:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 33
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 4

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->doPhysic(J)V

    .line 120
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 3

    .prologue
    .line 46
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->physicDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    return-object v0
.end method

.method public init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;
    .registers 7

    .prologue
    const v0, 0x3f2dadae

    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 55
    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->r:F

    .line 56
    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->g:F

    .line 57
    const v0, 0x3f7bfbfc

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->b:F

    .line 59
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->r2:F

    .line 60
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->g2:F

    .line 61
    iput v1, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->b2:F

    .line 63
    return-object p0
.end method

.method public onDestroyed(Z)V
    .registers 7

    .prologue
    .line 76
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x43fa0000    # 500.0f

    const v4, 0x443b8000    # 750.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 77
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->r:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 78
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->r:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 79
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->b:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 80
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevelDrawOnly(Lfr/testudo/spacecorsair/business/Element;)V

    .line 81
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->onDestroyed(Z)V

    .line 82
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 89
    move v8, v3

    :goto_2
    const/4 v0, 0x5

    if-ge v8, v0, :cond_7c

    .line 91
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v4, 0x4076d00000000000L    # 365.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 92
    const/16 v1, 0x14

    .line 94
    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 98
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->temp1:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v10, v2

    int-to-double v12, v1

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    double-to-float v2, v10

    iget-object v9, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v9, v9, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v10, v9

    int-to-double v12, v1

    mul-double/2addr v12, v4

    sub-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {v0, v2, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->temp2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-double v10, v2

    int-to-double v12, v1

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    double-to-float v2, v6

    iget-object v6, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v6, v6, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-double v6, v6

    int-to-double v10, v1

    mul-double/2addr v4, v10

    add-double/2addr v4, v6

    double-to-float v1, v4

    invoke-virtual {v0, v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    rem-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_68

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->temp1:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->temp2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->a:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->r:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->g:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->b:F

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 89
    :goto_64
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 105
    :cond_68
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->temp1:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->temp2:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->a:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->r2:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->g2:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/projectiles/ElectricBullet;->b2:F

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    goto :goto_64

    .line 110
    :cond_7c
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->registerYourselfToDrawQueue()V

    .line 113
    return-void
.end method
