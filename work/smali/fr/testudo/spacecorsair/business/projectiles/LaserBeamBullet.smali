.class public Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;
.super Lfr/testudo/spacecorsair/business/projectiles/Projectile;
.source "SourceFile"


# instance fields
.field public maxDistanceFromSender:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;-><init>()V

    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->doPhysic(J)V

    .line 39
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_11

    .line 40
    :cond_d
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->remove()V

    .line 46
    :cond_10
    :goto_10
    return-void

    .line 43
    :cond_11
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->maxDistanceFromSender:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    .line 44
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->remove()V

    goto :goto_10
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

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
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_8:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;I)Lfr/testudo/spacecorsair/business/projectiles/Projectile;
    .registers 6

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;->init(FILfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Projectile;

    .line 51
    iput p5, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->maxDistanceFromSender:I

    .line 52
    return-object p0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 9

    .prologue
    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->sender:Lfr/testudo/spacecorsair/business/Element;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    iget v4, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->a:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->r:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->g:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/projectiles/LaserBeamBullet;->b:F

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 62
    return-void
.end method
