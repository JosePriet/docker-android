.class public Lfr/testudo/spacecorsair/display/hud/HudImages;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static backButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

.field public static boosterButton:Lfr/testudo/spacecorsair/display/hud/Button;

.field public static galaxyButton:Lfr/testudo/spacecorsair/display/hud/Button;

.field public static galaxyButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

.field public static heartDIm:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static heartDrabwale:Lfr/testudo/spacecorsair/display/Drawable;

.field public static heartPos:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static jumpButton:Lfr/testudo/spacecorsair/display/hud/Button;

.field public static jumpButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

.field public static laserButon:Lfr/testudo/spacecorsair/display/hud/Button;

.field public static missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

.field public static shieldDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static final shieldFasterDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static shieldFasterDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static final shieldFasterPos:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static shieldPos:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v1, 0x0

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->heartDIm:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->heartPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 48
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldFasterDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 49
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldFasterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/hud/Button;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    .line 67
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/hud/Button;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->laserButon:Lfr/testudo/spacecorsair/display/hud/Button;

    .line 69
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/hud/Button;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->boosterButton:Lfr/testudo/spacecorsair/display/hud/Button;

    .line 71
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/hud/Button;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButton:Lfr/testudo/spacecorsair/display/hud/Button;

    .line 73
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/hud/Button;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    .line 75
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/hud/Button;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButton:Lfr/testudo/spacecorsair/display/hud/Button;

    .line 77
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/hud/Button;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    .line 79
    new-instance v0, Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/display/hud/Button;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->backButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawHeart(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 30
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->heartDrabwale:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/display/hud/HudImages;->heartPos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFZ)V

    .line 31
    return-void
.end method

.method public static drawShield(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 44
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldPos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFZ)V

    .line 45
    return-void
.end method

.method public static drawShieldFaster(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldFasterDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v2, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldFasterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZFZ)V

    .line 57
    return-void
.end method

.method public static setHeartTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 26
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->heartDIm:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->heartDrabwale:Lfr/testudo/spacecorsair/display/Drawable;

    .line 27
    return-void
.end method

.method public static setShieldFasterTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldFasterDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldFasterDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 53
    return-void
.end method

.method public static setShieldTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 41
    return-void
.end method
