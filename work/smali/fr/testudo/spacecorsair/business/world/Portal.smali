.class public Lfr/testudo/spacecorsair/business/world/Portal;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# static fields
.field public static ATTRACTING_DISTANCE:F = 0.0f

.field public static final DEFAULT_JUMP_COUNTDOWN_TIME:I = 0xfa0

.field public static final EJECTION_SPEED:F = 7.0f

.field public static ENABLING_DISTANCE:F = 0.0f

.field public static JUMP_DISTANCE:F = 0.0f

.field public static MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static MINI_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static final OBJECT_NAME:Ljava/lang/String; = "Portal"

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field private static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;


# instance fields
.field public canBeUsed:Z

.field public drawMiniIcon:Z

.field public hidden:Z

.field public initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

.field public initialPlayerSpin:F

.field public isEnabled:Z

.field public jumpCountDown:I

.field public jumpLevelName:Ljava/lang/String;

.field public jumpPortalName:Ljava/lang/String;

.field public jump_countdown_time:I

.field public portalName:Ljava/lang/String;

.field public textDecal:F

.field public textInit:Z

.field public textPos:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v1, 0x44160000    # 600.0f

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/Portal;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 25
    const/high16 v0, 0x438c0000    # 280.0f

    sput v0, Lfr/testudo/spacecorsair/business/world/Portal;->JUMP_DISTANCE:F

    .line 26
    sput v1, Lfr/testudo/spacecorsair/business/world/Portal;->ENABLING_DISTANCE:F

    .line 27
    sput v1, Lfr/testudo/spacecorsair/business/world/Portal;->ATTRACTING_DISTANCE:F

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 21
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    .line 30
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/Portal;->hidden:Z

    .line 31
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textDecal:F

    .line 33
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textInit:Z

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 37
    iput-object v4, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 38
    iput-object v4, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpeed:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 41
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->initialPlayerSpin:F

    .line 48
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/Portal;->drawMiniIcon:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    return-void
.end method

.method private applyAttractionOnplayer(Ljava/lang/Long;)V
    .registers 8

    .prologue
    .line 158
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    .line 160
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->distanceToPlayer:F

    sget v2, Lfr/testudo/spacecorsair/business/world/Portal;->ATTRACTING_DISTANCE:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4c

    .line 162
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

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

    .line 164
    const v2, 0x3d23d70a    # 0.04f

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lfr/testudo/spacecorsair/business/world/Portal;->distanceToPlayer:F

    const/high16 v4, 0x42c80000    # 100.0f

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    iget v3, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->attractionFactor:F

    mul-float/2addr v2, v3

    .line 166
    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/Portal;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 167
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/Portal;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 169
    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 172
    :cond_4c
    return-void
.end method

.method public static setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 61
    sput-object p0, Lfr/testudo/spacecorsair/business/world/Portal;->MINI_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 62
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/Portal;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 63
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 56
    sput-object p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 57
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/Portal;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/Portal;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 58
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 10

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    const/4 v1, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 120
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 121
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    if-nez v0, :cond_13

    .line 151
    :cond_12
    :goto_12
    return-void

    .line 124
    :cond_13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/world/Portal;->applyAttractionOnplayer(Ljava/lang/Long;)V

    .line 125
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->isEnabled:Z

    if-nez v0, :cond_8d

    .line 126
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->spinSpeed:F

    long-to-float v1, p1

    mul-float/2addr v1, v5

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->spinSpeed:F

    .line 127
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->spinSpeed:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_31

    .line 128
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/Portal;->spinSpeed:F

    .line 130
    :cond_31
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->distanceToPlayer:F

    sget v1, Lfr/testudo/spacecorsair/business/world/Portal;->ENABLING_DISTANCE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_42

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->spinSpeed:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_42

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->isEnabled:Z

    .line 137
    :cond_42
    :goto_42
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->distanceToPlayer:F

    sget v1, Lfr/testudo/spacecorsair/business/world/Portal;->JUMP_DISTANCE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_90

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/Vector2;->length()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_90

    .line 138
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpCountDown:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    if-ne v0, v1, :cond_68

    .line 139
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateLoad()V

    .line 142
    :cond_68
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpCountDown:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpCountDown:I

    .line 143
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpCountDown:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->spinSpeed:F

    .line 145
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpCountDown:I

    if-gtz v0, :cond_12

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-nez v0, :cond_12

    .line 146
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/Portal;->jump()V

    goto :goto_12

    .line 134
    :cond_8d
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/Portal;->spinSpeed:F

    goto :goto_42

    .line 149
    :cond_90
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpCountDown:I

    goto/16 :goto_12
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Portal;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->hidden:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->drawMiniIcon:Z

    if-nez v0, :cond_a

    .line 107
    :cond_8
    const/4 v0, 0x0

    .line 109
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Portal;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_9
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 114
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Portal;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public hideAndDisable()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 176
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->drawOnRadar:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->hidden:Z

    .line 178
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    .line 180
    return-void
.end method

.method public init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/Portal;->reset()V

    .line 71
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->doesColideWithOthers:Z

    .line 72
    const v0, 0x48127c00    # 150000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->life:F

    .line 73
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->mass:F

    .line 74
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->spinSpeed:F

    .line 75
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/Portal;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/Portal;->setSpeedVector(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 77
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/Portal;->drawOnRadar:Z

    .line 78
    const v0, 0x3f147ae1    # 0.58f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->radarColorG:F

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->radarColorB:F

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->radarColorR:F

    .line 81
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->isEnabled:Z

    .line 82
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    .line 83
    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->spinSpeed:F

    .line 84
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->radarPointSize:F

    .line 85
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->isMiniaturefixed:Z

    .line 86
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->drawDistanceOnMiniature:Z

    .line 87
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->distanceToPlayer:F

    .line 88
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    .line 89
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textDecal:F

    .line 90
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->removed:Z

    .line 91
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->hidden:Z

    .line 92
    sget-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->PORTAL:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 93
    const/16 v0, 0xfa0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jump_countdown_time:I

    .line 94
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/Portal;->drawMiniIcon:Z

    .line 95
    return-object p0
.end method

.method public jump()V
    .registers 4

    .prologue
    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playGateZap()V

    .line 232
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/game/levels/Level;->requestChangeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPayerUseSpaceGate()V

    .line 234
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const v8, 0x3f19999a    # 0.6f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 196
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->hidden:Z

    if-eqz v0, :cond_c

    .line 227
    :goto_b
    return-void

    .line 200
    :cond_c
    iget v5, p0, Lfr/testudo/spacecorsair/business/world/Portal;->a:F

    .line 201
    iget v6, p0, Lfr/testudo/spacecorsair/business/world/Portal;->r:F

    .line 202
    iget v7, p0, Lfr/testudo/spacecorsair/business/world/Portal;->g:F

    .line 203
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->b:F

    .line 205
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    if-nez v1, :cond_6d

    move v7, v8

    move v6, v9

    move v5, v9

    .line 213
    :goto_1b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/Portal;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/Portal;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/Portal;->spin:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 219
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textDecal:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3f

    .line 220
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v10

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textDecal:F

    .line 223
    :cond_3f
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 224
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textDecal:F

    neg-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/Portal;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v10

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 225
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v4, v9

    move v7, v9

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModQol;->gateLabel(Lfr/testudo/spacecorsair/business/world/Portal;)V

    goto :goto_b

    :cond_6d
    move v8, v0

    goto :goto_1b
.end method

.method public showAndEnable()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 183
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->drawOnRadar:Z

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->hidden:Z

    .line 185
    iput-boolean v1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->canBeUsed:Z

    .line 187
    return-void
.end method

.method public updatePortalName(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 190
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Portal;->textDecal:F

    .line 191
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/world/Portal;->portalName:Ljava/lang/String;

    .line 192
    return-void
.end method
