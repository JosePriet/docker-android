.class public Lfr/testudo/spacecorsair/display/hud/Radar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEMI_DIM:I

.field public static POSX:I

.field public static POSY:I

.field public static decalFromBorder:I

.field public static dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static texture:Lfr/testudo/spacecorsair/display/Texture;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x437a0000    # 250.0f

    .line 16
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 18
    sput v2, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    .line 19
    sput v2, Lfr/testudo/spacecorsair/display/hud/Radar;->POSY:I

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 21
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    .line 31
    const/16 v0, 0xa

    sput v0, Lfr/testudo/spacecorsair/display/hud/Radar;->decalFromBorder:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesTouche(II)Z
    .registers 5

    .prologue
    .line 69
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sub-int/2addr v0, p1

    .line 70
    sget v1, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    sub-int/2addr v1, v2

    if-le p0, v1, :cond_21

    sget v1, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/2addr v1, v2

    if-ge p0, v1, :cond_21

    sget v1, Lfr/testudo/spacecorsair/display/hud/Radar;->POSY:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_21

    sget v1, Lfr/testudo/spacecorsair/display/hud/Radar;->POSY:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

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
    const v7, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_1c

    .line 59
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v10, 0x0

    move-object v1, p0

    move v6, v5

    move v8, v7

    move v9, v4

    invoke-virtual/range {v0 .. v10}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFFFFZZ)V

    .line 66
    :goto_1b
    return-void

    .line 62
    :cond_1c
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    move-object v1, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFZ)V

    goto :goto_1b
.end method

.method public static initPosition()V
    .registers 6

    .prologue
    const/16 v0, 0x15e

    .line 37
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    mul-int/lit16 v1, v1, 0xfa

    div-int/lit16 v1, v1, 0x4b0

    .line 38
    if-le v1, v0, :cond_55

    .line 41
    :goto_a
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/Radar;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 42
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    div-int/lit8 v3, v0, 0x2

    sget v4, Lfr/testudo/spacecorsair/display/hud/Radar;->decalFromBorder:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    div-int/lit8 v4, v0, 0x2

    sget v5, Lfr/testudo/spacecorsair/display/hud/Radar;->decalFromBorder:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 43
    div-int/lit8 v0, v0, 0x2

    sget v1, Lfr/testudo/spacecorsair/display/hud/Radar;->decalFromBorder:I

    add-int/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/display/hud/Radar;->POSY:I

    sput v0, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    if-eqz v0, :cond_46

    .line 46
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Joystick;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/Radar;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/Drawable;->setDimension(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 49
    :cond_46
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/display/hud/Radar;->POSY:I

    .line 52
    return-void

    :cond_55
    move v0, v1

    goto :goto_a
.end method

.method public static initTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 24
    sput-object p0, Lfr/testudo/spacecorsair/display/hud/Radar;->texture:Lfr/testudo/spacecorsair/display/Texture;

    .line 25
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/Radar;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 26
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    .line 27
    return-void
.end method
