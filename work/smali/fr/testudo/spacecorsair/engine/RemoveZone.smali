.class public Lfr/testudo/spacecorsair/engine/RemoveZone;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public asteroidRayon:I

.field public ennemisRayon:I

.field public position:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method public constructor <init>(Lfr/testudo/spacecorsair/engine/Vector2;II)V
    .registers 5

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/RemoveZone;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 29
    iput p2, p0, Lfr/testudo/spacecorsair/engine/RemoveZone;->asteroidRayon:I

    .line 30
    iput p3, p0, Lfr/testudo/spacecorsair/engine/RemoveZone;->ennemisRayon:I

    .line 32
    return-void
.end method


# virtual methods
.method public touch(Lfr/testudo/spacecorsair/business/Element;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 39
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-eqz v0, :cond_2c

    .line 40
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RemoveZone;->asteroidRayon:I

    .line 52
    :goto_7
    iget-object v2, p0, Lfr/testudo/spacecorsair/engine/RemoveZone;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->distance2(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 53
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Lfr/testudo/spacecorsair/business/Element;->getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-double v4, v0

    sub-double/2addr v2, v4

    .line 55
    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_37

    const/4 v0, 0x1

    :goto_2a
    move v1, v0

    :cond_2b
    return v1

    .line 43
    :cond_2c
    instance-of v0, p1, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    if-nez v0, :cond_34

    instance-of v0, p1, Lfr/testudo/spacecorsair/business/world/Mine;

    if-eqz v0, :cond_2b

    .line 44
    :cond_34
    iget v0, p0, Lfr/testudo/spacecorsair/engine/RemoveZone;->ennemisRayon:I

    goto :goto_7

    :cond_37
    move v0, v1

    .line 55
    goto :goto_2a
.end method
