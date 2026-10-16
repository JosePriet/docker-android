.class public Lfr/testudo/spacecorsair/business/projectiles/LaserBeam;
.super Lfr/testudo/spacecorsair/business/projectiles/Projectile;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/projectiles/Projectile;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_4:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method
