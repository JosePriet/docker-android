.class public Lfr/testudo/spacecorsair/business/world/station/DockPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/world/station/DockPoint$1;
    }
.end annotation


# static fields
.field public static final DOCK_DISTANCE:I = 0x14

.field public static final DOCK_MAX_SPEED:F = 2.0f

.field public static final DOCK_RELOAD_TIME:I = 0xfa0


# instance fields
.field public anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

.field public anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

.field public applyForceMiniDistance:I

.field public distanceToPlayer:I

.field public docking:Z

.field public parent:Lfr/testudo/spacecorsair/business/world/station/Station;

.field public positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

.field public reloadCounter:I

.field public status:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

.field public takenBy:Lfr/testudo/spacecorsair/business/Element;

.field private tempVector:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x1388

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 19
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->FREE:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->status:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->takenBy:Lfr/testudo/spacecorsair/business/Element;

    .line 21
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->distanceToPlayer:I

    .line 22
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->applyForceMiniDistance:I

    .line 25
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->reloadCounter:I

    .line 27
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->docking:Z

    .line 28
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method


# virtual methods
.method public doPhysic(Ljava/lang/Long;)V
    .registers 8

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->docking:Z

    .line 49
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DockPoint$1;->$SwitchMap$fr$testudo$spacecorsair$business$world$station$DockStatus:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->status:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a4

    .line 80
    :cond_10
    :goto_10
    return-void

    .line 52
    :pswitch_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 53
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->parent:Lfr/testudo/spacecorsair/business/world/station/Station;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/world/station/Station;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 54
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->distance(Lfr/testudo/spacecorsair/engine/Vector2;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->distanceToPlayer:I

    .line 56
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->distanceToPlayer:I

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/Mod;->dockRange(Lfr/testudo/spacecorsair/business/world/station/DockPoint;)I

    move-result v2

    if-gt v1, v2, :cond_10

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->docking:Z

    .line 59
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v1

    .line 60
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->distanceToPlayer:I

    add-int/lit16 v3, v3, 0xc8

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->attractionFactor:F

    mul-float/2addr v2, v3

    .line 61
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 62
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 63
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 64
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->distanceToPlayer:I

    iget v2, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->dockDistance:I

    if-ge v1, v2, :cond_10

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10

    .line 65
    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->initDocked(Lfr/testudo/spacecorsair/business/Element;)V

    goto :goto_10

    .line 71
    :pswitch_8e
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->reloadCounter:I

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->reloadCounter:I

    .line 72
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->reloadCounter:I

    if-gtz v0, :cond_10

    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->FREE:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->status:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    goto/16 :goto_10

    .line 49
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_11
        :pswitch_8e
    .end packed-switch
.end method

.method public init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;
    .registers 5

    .prologue
    .line 35
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->parent:Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 36
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->FREE:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->status:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->takenBy:Lfr/testudo/spacecorsair/business/Element;

    .line 39
    const/16 v0, 0x1388

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->distanceToPlayer:I

    .line 40
    iput p3, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->applyForceMiniDistance:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->docking:Z

    .line 42
    return-object p0
.end method

.method public initDocked(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->isDocked:Z

    .line 90
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/Element;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 91
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->takenBy:Lfr/testudo/spacecorsair/business/Element;

    .line 92
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->DOCKED:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->status:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    .line 93
    iget-boolean v0, p1, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-eqz v0, :cond_1d

    .line 94
    check-cast p1, Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {p1, p0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->onDock(Lfr/testudo/spacecorsair/business/world/station/DockPoint;)V

    .line 95
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->parent:Lfr/testudo/spacecorsair/business/world/station/Station;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/world/station/Station;->onPlayerDock()V

    .line 98
    :cond_1d
    return-void
.end method

.method public initDocking(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 2

    .prologue
    .line 86
    return-void
.end method

.method public undock()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->takenBy:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->takenBy:Lfr/testudo/spacecorsair/business/Element;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfr/testudo/spacecorsair/business/Element;->isDocked:Z

    .line 105
    :cond_9
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/DockStatus;->RELOADING:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->status:Lfr/testudo/spacecorsair/business/world/station/DockStatus;

    .line 106
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->reloadCounter:I

    .line 107
    return-void
.end method
