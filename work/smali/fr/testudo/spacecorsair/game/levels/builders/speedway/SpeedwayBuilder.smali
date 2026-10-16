.class public Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final temp:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field private decal:Lfr/testudo/spacecorsair/engine/Vector2;

.field private espacement:I

.field private levelElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 24
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;",
            "Lfr/testudo/spacecorsair/engine/Vector2;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->espacement:I

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->decal:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 29
    iput p1, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->espacement:I

    .line 30
    iput-object p2, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->levelElementList:Ljava/util/List;

    .line 31
    iget-object v0, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->decal:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 32
    return-void
.end method


# virtual methods
.method public addOne(FF)V
    .registers 6

    .prologue
    .line 53
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 54
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRoundFixedTrackElement()Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->init(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;

    move-result-object v0

    .line 55
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->decal:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 56
    iget-object v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->levelElementList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addRound(FFFFFI)V
    .registers 15

    .prologue
    .line 90
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 91
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, p3, p4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 92
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    sub-float v3, p3, p1

    sub-float v4, p4, p2

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 94
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v3

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/engine/Vector2;->normalize()F

    .line 95
    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;)V

    invoke-virtual {v3, p5}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(F)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v4

    .line 96
    sget-object v2, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->multiply(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 98
    invoke-virtual {v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 99
    invoke-virtual {v4, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 104
    sub-double v4, v0, v2

    int-to-double v6, p6

    div-double/2addr v4, v6

    .line 105
    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_4c

    .line 116
    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    if-ge v0, p6, :cond_53

    .line 122
    add-double/2addr v2, v4

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 129
    :cond_53
    return-void
.end method

.method public addStraightLine(FFFF)I
    .registers 11

    .prologue
    .line 36
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFI)I

    move-result v0

    return v0
.end method

.method public addStraightLine(FFFFI)I
    .registers 13

    .prologue
    .line 48
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZI)I

    move-result v0

    return v0
.end method

.method public addStraightLine(FFFFZ)I
    .registers 13

    .prologue
    .line 42
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->addStraightLine(FFFFZI)I

    move-result v0

    return v0
.end method

.method public addStraightLine(FFFFZI)I
    .registers 13

    .prologue
    .line 61
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    sub-float v1, p3, p1

    sub-float v2, p4, p2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 62
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    iget v1, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->espacement:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->normalize()F

    .line 65
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, p1, p2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 69
    if-eqz p5, :cond_33

    .line 70
    sget-object v0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v3, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->espacement:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v4, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->espacement:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 73
    :cond_33
    if-eqz p5, :cond_64

    const/4 v0, 0x1

    :goto_36
    if-gt v0, v1, :cond_66

    .line 75
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRoundFixedTrackElement()Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;

    move-result-object v3

    invoke-virtual {v3, v2, p6}, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->init(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;

    move-result-object v3

    .line 76
    iget-object v4, v3, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v5, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->decal:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 77
    iget-object v4, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->levelElementList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v3, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    iget v4, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->espacement:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sget-object v4, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    iget v5, p0, Lfr/testudo/spacecorsair/game/levels/builders/speedway/SpeedwayBuilder;->espacement:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 80
    add-int/lit8 p6, p6, -0x32

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_64
    const/4 v0, 0x0

    goto :goto_36

    .line 83
    :cond_66
    return p6
.end method
