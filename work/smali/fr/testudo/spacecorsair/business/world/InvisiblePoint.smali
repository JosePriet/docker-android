.class public Lfr/testudo/spacecorsair/business/world/InvisiblePoint;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# instance fields
.field public minDistanceForRadarActivation:J

.field public overrideRadarAndMissionMode:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->minDistanceForRadarActivation:J

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->overrideRadarAndMissionMode:Z

    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 34
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->overrideRadarAndMissionMode:Z

    if-eqz v0, :cond_20

    .line 35
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->distanceToPlayer:F

    iget-wide v4, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->minDistanceForRadarActivation:J

    long-to-float v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_21

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->drawOnRadar:Z

    .line 36
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->distanceToPlayer:F

    iget-wide v4, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->minDistanceForRadarActivation:J

    long-to-float v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_23

    :goto_1e
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->isMissionObjective:Z

    .line 39
    :cond_20
    return-void

    :cond_21
    move v0, v2

    .line 35
    goto :goto_13

    :cond_23
    move v1, v2

    .line 36
    goto :goto_1e
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/InvisiblePoint;
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 46
    const v0, 0x47435000    # 50000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->distanceToPlayer:F

    .line 47
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->drawOnRadar:Z

    .line 49
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->doesColideWithOthers:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->minDistanceForRadarActivation:J

    .line 51
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/InvisiblePoint;->overrideRadarAndMissionMode:Z

    .line 52
    return-object p0
.end method
