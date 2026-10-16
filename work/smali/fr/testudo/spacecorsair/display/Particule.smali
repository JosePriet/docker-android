.class public Lfr/testudo/spacecorsair/display/Particule;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# static fields
.field public static final lifetime_in_ms:J = 0x5dcL

.field public static final random_marge:F = 1.5f


# instance fields
.field private lifeTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/display/Particule;->lifeTime:J

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/Particule;->isParticule:Z

    .line 18
    return-void
.end method

.method private initRandomDirectionAndLifeTime(Z)V
    .registers 12

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v4, -0x4008000000000000L    # -1.5

    .line 84
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lfr/testudo/spacecorsair/display/Particule;->lifeTime:J

    .line 85
    if-nez p1, :cond_21

    .line 86
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v8

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    .line 87
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v8

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 88
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Particule;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 90
    :cond_21
    return-void
.end method

.method private reduceLifeTime(J)V
    .registers 10

    .prologue
    .line 62
    iget-wide v0, p0, Lfr/testudo/spacecorsair/display/Particule;->lifeTime:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/display/Particule;->lifeTime:J

    .line 63
    iget v0, p0, Lfr/testudo/spacecorsair/display/Particule;->a:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_25

    .line 64
    iget v0, p0, Lfr/testudo/spacecorsair/display/Particule;->a:F

    float-to-double v0, v0

    long-to-double v2, p1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    const-wide v4, 0x4097700000000000L    # 1500.0

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/display/Particule;->a:F

    .line 68
    :cond_25
    iget-wide v0, p0, Lfr/testudo/spacecorsair/display/Particule;->lifeTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_30

    .line 69
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/display/Particule;->remove()V

    .line 71
    :cond_30
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 4

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 52
    invoke-direct {p0, p1, p2}, Lfr/testudo/spacecorsair/display/Particule;->reduceLifeTime(J)V

    .line 54
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_2:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;Z)Lfr/testudo/spacecorsair/display/Particule;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 23
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Particule;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 24
    iget-object v2, p0, Lfr/testudo/spacecorsair/display/Particule;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 25
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/Particule;->doesColideWithOthers:Z

    .line 26
    if-nez p3, :cond_13

    move v0, v1

    :cond_13
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/display/Particule;->initRandomDirectionAndLifeTime(Z)V

    .line 27
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/display/Particule;->hasSpeedDeperdition:Z

    .line 28
    const v0, 0x3f810625    # 1.008f

    iput v0, p0, Lfr/testudo/spacecorsair/display/Particule;->speedDeperditionfactor:F

    .line 32
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Particule;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_31

    .line 33
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Particule;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->normalize()F

    .line 34
    iget-object v0, p0, Lfr/testudo/spacecorsair/display/Particule;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 37
    :cond_31
    return-object p0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 9

    .prologue
    .line 113
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/display/Particule;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/display/Particule;->cameraRelative:Z

    iget v3, p0, Lfr/testudo/spacecorsair/display/Particule;->r:F

    iget v4, p0, Lfr/testudo/spacecorsair/display/Particule;->g:F

    iget v5, p0, Lfr/testudo/spacecorsair/display/Particule;->b:F

    iget v6, p0, Lfr/testudo/spacecorsair/display/Particule;->a:F

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToPointWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZFFFFF)V

    .line 114
    return-void
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/levels/Level;->toDeleteDrawOnly:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/display/Particule;->removed:Z

    .line 78
    return-void
.end method

.method public setColor(FFFF)V
    .registers 5

    .prologue
    .line 42
    iput p1, p0, Lfr/testudo/spacecorsair/display/Particule;->a:F

    .line 43
    iput p2, p0, Lfr/testudo/spacecorsair/display/Particule;->r:F

    .line 44
    iput p4, p0, Lfr/testudo/spacecorsair/display/Particule;->b:F

    .line 45
    iput p3, p0, Lfr/testudo/spacecorsair/display/Particule;->g:F

    .line 46
    return-void
.end method
