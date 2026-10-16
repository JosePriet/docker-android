.class public Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;
.super Lfr/testudo/spacecorsair/business/projectiles/Projectile;
.source "SourceFile"


# static fields
.field private static final displayDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field private static final physicDimensions:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public nextVortexTick:I

.field public vortexFrequency:I

.field public vortexMaxSize:I

.field public vortexMinSize:I

.field public vortexSpeed:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v1, 0x42000000    # 32.0f

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->physicDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->displayDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->nextVortexTick:I

    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 59
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->displayDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 60
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 8

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->doPhysic(J)V

    .line 80
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->nextVortexTick:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->nextVortexTick:I

    .line 81
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->nextVortexTick:I

    if-gtz v0, :cond_40

    .line 82
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->vortexFrequency:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->nextVortexTick:I

    .line 83
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newShockWave()Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->vortexMinSize:I

    int-to-float v2, v2

    iget v3, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->vortexMaxSize:I

    int-to-float v3, v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->vortexSpeed:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lfr/testudo/spacecorsair/display/ShockWave;->init(Lfr/testudo/spacecorsair/engine/Vector2;FFF)Lfr/testudo/spacecorsair/display/ShockWave;

    move-result-object v0

    .line 84
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->a:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->a:F

    .line 85
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->r:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->r:F

    .line 86
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->g:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->g:F

    .line 87
    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->b:F

    iput v1, v0, Lfr/testudo/spacecorsair/display/ShockWave;->b:F

    .line 88
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_40
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 72
    sget-object v0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->physicDimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public bridge synthetic init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;
    .registers 6

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;

    move-result-object v0

    return-object v0
.end method

.method public init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 36
    const/16 v0, 0x1f4

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->vortexFrequency:I

    .line 37
    const/16 v0, 0x6e

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->vortexMaxSize:I

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->vortexMinSize:I

    .line 39
    const/16 v0, 0x3c

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->vortexSpeed:I

    .line 40
    iget v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->vortexFrequency:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->nextVortexTick:I

    .line 41
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->hasSpeedDeperdition:Z

    .line 42
    const v0, 0x3f808312    # 1.004f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->speedDeperditionfactor:F

    .line 43
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->drawOnRadar:Z

    .line 44
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->radarPointSize:F

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->radarColorR:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->radarColorG:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/projectiles/VortexProjectile;->radarColorB:F

    .line 46
    return-object p0
.end method
