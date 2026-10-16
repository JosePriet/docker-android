.class public Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# static fields
.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field blinckId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/high16 v1, 0x42700000    # 60.0f

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 22
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->blinckId:I

    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 28
    return-void
.end method


# virtual methods
.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->reset()V

    .line 49
    rem-int/lit16 v0, p2, 0x3e8

    iput v0, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->blinckId:I

    .line 50
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->invincible:Z

    .line 51
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->life:F

    .line 52
    const/high16 v0, 0x4f000000

    iput v0, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->mass:F

    .line 53
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 54
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 55
    iput v1, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->spinSpeed:F

    .line 56
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->drawOnRadar:Z

    .line 57
    iput v1, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->radarColorB:F

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->radarColorG:F

    .line 59
    iput v1, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->radarColorR:F

    .line 60
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->radarPointSize:F

    .line 61
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->hasSpeedDeperdition:Z

    .line 62
    const v0, 0x48f42400    # 500000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->distanceToPlayer:F

    .line 63
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->immobile:Z

    .line 64
    return-object p0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->blinckId:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    .line 72
    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 73
    iput v4, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->b:F

    .line 74
    iput v4, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->r:F

    .line 81
    :goto_1a
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/Element;->registerYourselfToDrawQueue()V

    .line 82
    return-void

    .line 76
    :cond_1e
    iput v5, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->b:F

    .line 77
    iput v5, p0, Lfr/testudo/spacecorsair/business/speedway/FixedTrackElement;->r:F

    goto :goto_1a
.end method
