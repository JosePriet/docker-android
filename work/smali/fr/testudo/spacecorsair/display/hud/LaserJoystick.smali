.class public Lfr/testudo/spacecorsair/display/hud/LaserJoystick;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_JOY_SIZE:I = 0xbb

.field public static DEMI_DIM:I = 0x0

.field private static final MARK_SIZE_RATIO:F = 3.0f

.field public static MIN_DISTANCE:I = 0x0

.field public static MIN_GAZ_DISTANCE:I = 0x0

.field public static POSX:I = 0x0

.field public static POSY:I = 0x0

.field public static final SIZE_RATIO_RELATIVE_TO_JOYSTICK:F = 0.75f

.field private static currentFingerSpin:F

.field private static currentPourcentage:F

.field public static decalFromBorder:I

.field public static dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static doesTouche:Z

.field public static drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static drawable_marker:Lfr/testudo/spacecorsair/display/Drawable;

.field public static markerDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static temp:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static texture:Lfr/testudo/spacecorsair/display/Texture;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    div-float/2addr v1, v5

    sget-object v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v5

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->markerDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    .line 24
    sput v4, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSX:I

    .line 25
    sput v4, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSY:I

    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 29
    const/16 v0, 0x1e

    sput v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->MIN_DISTANCE:I

    .line 30
    const/16 v0, 0x3c

    sput v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->MIN_GAZ_DISTANCE:I

    .line 33
    const/16 v0, 0x32

    sput v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->decalFromBorder:I

    .line 107
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 155
    sput v3, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->currentFingerSpin:F

    .line 156
    sput v3, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->currentPourcentage:F

    .line 157
    sput-boolean v4, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->doesTouche:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesTouche(II)Z
    .registers 5

    .prologue
    .line 100
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sub-int/2addr v0, p1

    .line 101
    sget v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSX:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    sub-int/2addr v1, v2

    if-le p0, v1, :cond_21

    sget v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSX:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    add-int/2addr v1, v2

    if-ge p0, v1, :cond_21

    sget v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSY:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_21

    sget v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSY:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v1, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFZ)V

    .line 93
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawable_marker:Lfr/testudo/spacecorsair/display/Drawable;

    invoke-static {}, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->getMarkerRealPosition()Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v2

    const/4 v10, 0x0

    move-object v1, p0

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v4

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V

    .line 95
    return-void
.end method

.method public static getAccelInPourcAndAngle(IILfr/testudo/spacecorsair/engine/Vector2;)V
    .registers 9

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 119
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sub-int v2, v0, p1

    .line 120
    sget v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSX:I

    sub-int/2addr v0, p0

    .line 121
    sget v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSY:I

    sub-int/2addr v1, v2

    .line 123
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 132
    sget v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1e

    .line 133
    sget v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    int-to-float v0, v0

    .line 136
    :cond_1e
    sget v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->MIN_GAZ_DISTANCE:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    mul-float/2addr v1, v5

    sget v3, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    sget v4, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->MIN_GAZ_DISTANCE:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 137
    mul-float v3, v0, v5

    sget v4, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sput v3, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->currentPourcentage:F

    .line 138
    sget v3, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->MIN_GAZ_DISTANCE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_62

    .line 139
    const/4 v0, 0x0

    .line 145
    :goto_3b
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v3, p0

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 147
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

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

    .line 148
    sput v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->currentFingerSpin:F

    .line 149
    invoke-virtual {p2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 150
    const/4 v0, 0x1

    sput-boolean v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->doesTouche:Z

    .line 152
    return-void

    :cond_62
    move v0, v1

    goto :goto_3b
.end method

.method public static getMarkerRealPosition()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 8

    .prologue
    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    .line 169
    sget-boolean v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->doesTouche:Z

    if-nez v0, :cond_16

    .line 170
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 183
    :goto_c
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 185
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0

    .line 174
    :cond_16
    sget v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    int-to-float v0, v0

    sget v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->currentPourcentage:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v0, v1

    .line 175
    sget v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    int-to-float v0, v0

    sget-object v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->markerDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v0, v2

    .line 177
    cmpl-float v2, v1, v0

    if-lez v2, :cond_56

    .line 179
    :goto_32
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->temp:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->currentFingerSpin:F

    sub-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    sget v3, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->currentFingerSpin:F

    sub-float/2addr v3, v6

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-float v0, v4

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    goto :goto_c

    :cond_56
    move v0, v1

    .line 177
    goto :goto_32
.end method

.method public static initPosition()V
    .registers 5

    .prologue
    const/16 v0, 0x15e

    const/16 v2, 0x32

    const/high16 v4, 0x40400000    # 3.0f

    .line 49
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    mul-int/lit8 v1, v1, 0x32

    div-int/lit16 v1, v1, 0x4b0

    sput v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->decalFromBorder:I

    .line 50
    sget v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->decalFromBorder:I

    if-le v1, v2, :cond_14

    .line 51
    sput v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->decalFromBorder:I

    .line 53
    :cond_14
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    mul-int/lit16 v1, v1, 0xbb

    div-int/lit16 v1, v1, 0x4b0

    .line 54
    if-le v1, v0, :cond_88

    .line 59
    :goto_1c
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/game/Config;->overrideJoysickSize:Z

    if-eqz v1, :cond_2f

    .line 60
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v0, v0, Lfr/testudo/spacecorsair/game/Config;->joystickSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 64
    :cond_2f
    mul-int/lit8 v1, v0, 0x3c

    div-int/lit16 v1, v1, 0x12c

    sput v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->MIN_GAZ_DISTANCE:I

    .line 65
    mul-int/lit8 v1, v0, 0x1e

    div-int/lit16 v1, v1, 0x12c

    sput v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->MIN_DISTANCE:I

    .line 67
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 69
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    sget v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->decalFromBorder:I

    sub-int/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSX:I

    .line 70
    div-int/lit8 v1, v0, 0x2

    sget v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->decalFromBorder:I

    add-int/2addr v1, v2

    sput v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSY:I

    .line 71
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v2, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSX:I

    int-to-float v2, v2

    sget v3, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->POSY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 73
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->DEMI_DIM:I

    .line 74
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->markerDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v2, v0

    div-float/2addr v2, v4

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_7c

    .line 76
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/Drawable;->setDimension(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 78
    :cond_7c
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawable_marker:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_87

    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawable_marker:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->markerDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/Drawable;->setDimension(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 83
    :cond_87
    return-void

    :cond_88
    move v0, v1

    goto :goto_1c
.end method

.method public static initTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 37
    sput-object p0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->texture:Lfr/testudo/spacecorsair/display/Texture;

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->markerDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->drawable_marker:Lfr/testudo/spacecorsair/display/Drawable;

    .line 41
    return-void
.end method

.method public static setFingerUp()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 160
    sput v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->currentFingerSpin:F

    .line 161
    sput v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->currentPourcentage:F

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->doesTouche:Z

    .line 164
    return-void
.end method
