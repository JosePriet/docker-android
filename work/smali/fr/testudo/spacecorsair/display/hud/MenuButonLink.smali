.class public Lfr/testudo/spacecorsair/display/hud/MenuButonLink;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEMI_DIM:I

.field public static POSX:I

.field public static POSY:I

.field public static dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static texture:Lfr/testudo/spacecorsair/display/Texture;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x42c00000    # 96.0f

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 24
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->DEMI_DIM:I

    .line 25
    sput v2, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->POSX:I

    .line 26
    sput v2, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->POSY:I

    .line 27
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesTouche(II)Z
    .registers 5

    .prologue
    .line 53
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sub-int/2addr v0, p1

    .line 54
    sget v1, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->POSX:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->DEMI_DIM:I

    sub-int/2addr v1, v2

    if-le p0, v1, :cond_21

    sget v1, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->POSX:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->DEMI_DIM:I

    add-int/2addr v1, v2

    if-ge p0, v1, :cond_21

    sget v1, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->POSY:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->DEMI_DIM:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_21

    sget v1, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->POSY:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->DEMI_DIM:I

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
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 47
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFZ)V

    .line 48
    return-void
.end method

.method public static initPosition()V
    .registers 3

    .prologue
    .line 37
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->DEMI_DIM:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    .line 38
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->DEMI_DIM:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iput v1, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    .line 39
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->POSX:I

    .line 40
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->POSY:I

    .line 42
    return-void
.end method

.method public static initTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 31
    sput-object p0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->texture:Lfr/testudo/spacecorsair/display/Texture;

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 33
    return-void
.end method
