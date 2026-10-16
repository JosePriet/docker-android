.class public Lfr/testudo/spacecorsair/engine/GameRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfr/testudo/spacecorsair/engine/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/engine/GameRenderer$1;
    }
.end annotation


# static fields
.field public static final BACK_TEXT:Ljava/lang/String; = "back"

.field public static final CONSTELLATION_TEXT:Ljava/lang/String; = "Constellation"

.field public static final JUMP_TEXT:Ljava/lang/String; = "jump"

.field public static LIFE_TEST_SIZE:F = 0.0f

.field public static final LIFE_TEXT:Ljava/lang/String; = "Life"

.field public static final MAP_MODE_TEXT:Ljava/lang/String; = "Map Mode"

.field public static final MISSILE_READY_MESSAGE:Ljava/lang/String; = " Ready !"

.field public static MISSILE_READY_MESSAGE_SPACE:Ljava/lang/String; = null

.field public static final PING_TEXT:Ljava/lang/String; = "ping : "

.field public static final SECTOR_TEXT:Ljava/lang/String; = "Sector"

.field private static final TIRET:Ljava/lang/String; = "-"

.field public static aspect:F = 0.0f

.field static final butonsDecalBorder:I = 0x1e

.field public static camZ:F

.field public static fov_degrees:F

.field public static fov_radians:F

.field public static glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

.field public static glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

.field public static glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

.field public static glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

.field public static glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

.field public static glTextScore:Lfr/testudo/spacecorsair/textengine/GLText;

.field public static lastNbrMissile:I

.field public static lastPlayerMoney:J

.field public static lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

.field public static missileReadyDecalX:I

.field public static missionTextYPos:I

.field public static nbrMissile:Ljava/lang/String;

.field public static nbrMissileDecalX:I

.field public static nbrMissileDecalY:I

.field public static pingTextSize:I

.field public static playerMoney:Ljava/lang/String;

.field public static playerMoneyDecalX:I

.field public static screenAngleBottomLeft:F

.field public static screenAngleBottomRight:F

.field public static screenAngleTopLeft:F

.field public static screenAngleTopRight:F

.field public static screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static screenMidWidthX:I

.field public static screenMidWidthY:I

.field public static screenWidthX:I

.field public static screenWidthY:I

.field public static shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

.field static teamFFAScoreXPosL:I

.field static teamFFAScoreXPosM:I

.field static teamFFAScoreXPosR:I

.field static teamFFAScoreYPos:I

.field public static xpBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;


# instance fields
.field public backgroundObject:Lfr/testudo/spacecorsair/display/Background;

.field curScore:Ljava/lang/String;

.field decalGalaxyModeHint:I

.field decalLevel:I

.field decalLevelName:I

.field decalMapMode:I

.field decalPoisoned:I

.field decalReload:I

.field decalRooted:I

.field decalSectorModeHint:I

.field decalSnare:I

.field decalagility:I

.field decalback:I

.field decaljump:I

.field private drawLock:Ljava/lang/Object;

.field private drawQueueChanged:Z

.field public lastPlayerLifeInPourc:F

.field lastScore:Ljava/lang/String;

.field lastShieldValueInPourc:F

.field lastXpValue:I

.field private renderQueue:[Lfr/testudo/spacecorsair/display/RenderElement;

.field private renderQueueSize:I

.field tiretSize:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    .line 25
    sput v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    .line 26
    sput v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    .line 27
    sput v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    .line 28
    sput v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    .line 29
    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleTopRight:F

    .line 30
    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleTopLeft:F

    .line 31
    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleBottomLeft:F

    .line 32
    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleBottomRight:F

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 64
    const/4 v0, 0x0

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->LIFE_TEST_SIZE:F

    .line 80
    const-string v0, "0"

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->playerMoney:Ljava/lang/String;

    .line 81
    sput v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->playerMoneyDecalX:I

    .line 82
    const-wide/16 v0, -0x1

    sput-wide v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastPlayerMoney:J

    .line 83
    const-string v0, "0"

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->nbrMissile:Ljava/lang/String;

    .line 84
    sput v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastNbrMissile:I

    .line 85
    sput v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->nbrMissileDecalY:I

    .line 86
    sput v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->nbrMissileDecalX:I

    .line 87
    sput v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->pingTextSize:I

    .line 91
    const-string v0, "15 Ready !"

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->MISSILE_READY_MESSAGE_SPACE:Ljava/lang/String;

    .line 92
    sput v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->missileReadyDecalX:I

    .line 205
    sput v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->teamFFAScoreYPos:I

    .line 206
    sput v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->teamFFAScoreXPosL:I

    .line 207
    sput v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->teamFFAScoreXPosR:I

    .line 208
    sput v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->teamFFAScoreXPosM:I

    .line 680
    const/high16 v0, 0x42340000    # 45.0f

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->fov_degrees:F

    .line 681
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->fov_degrees:F

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->fov_radians:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, -0x3ee00000    # -10.0f

    const/4 v0, -0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastPlayerLifeInPourc:F

    .line 40
    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastShieldValueInPourc:F

    .line 41
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastXpValue:I

    .line 42
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalLevel:I

    .line 43
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalLevelName:I

    .line 44
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalMapMode:I

    .line 45
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalGalaxyModeHint:I

    .line 46
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalSectorModeHint:I

    .line 48
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalPoisoned:I

    .line 49
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalRooted:I

    .line 50
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalSnare:I

    .line 51
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalReload:I

    .line 52
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalagility:I

    .line 53
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalback:I

    .line 54
    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decaljump:I

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawLock:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawQueueChanged:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->backgroundObject:Lfr/testudo/spacecorsair/display/Background;

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->tiretSize:F

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastScore:Ljava/lang/String;

    .line 213
    const-string v0, ""

    iput-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->curScore:Ljava/lang/String;

    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iput-object p0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->gameRenderer:Lfr/testudo/spacecorsair/engine/GameRenderer;

    .line 100
    return-void
.end method

.method public static drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V
    .registers 16

    .prologue
    const/16 v5, 0xde1

    .line 632
    const/4 v0, 0x0

    .line 634
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer$1;->$SwitchMap$fr$testudo$spacecorsair$textengine$TextSize:[I

    invoke-virtual {p9}, Lfr/testudo/spacecorsair/textengine/TextSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_64

    .line 658
    :goto_e
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v1, v1, Lfr/testudo/spacecorsair/game/Config;->Zindex:F

    neg-float v1, v1

    .line 659
    if-nez p8, :cond_5b

    .line 660
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Camera;->curZDecal:F

    sub-float/2addr v1, v2

    .line 661
    int-to-float v2, p2

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sub-float/2addr v2, v3

    float-to-int v3, v2

    .line 662
    int-to-float v2, p3

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->camera:Lfr/testudo/spacecorsair/engine/Camera;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/Camera;->centerPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v4, v4, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 670
    :goto_34
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 671
    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 673
    invoke-virtual {v0, p5, p6, p7, p4}, Lfr/testudo/spacecorsair/textengine/GLText;->begin(FFFF)V

    .line 674
    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {v0, p1, v3, v2, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->draw(Ljava/lang/String;FFF)V

    .line 675
    invoke-virtual {v0}, Lfr/testudo/spacecorsair/textengine/GLText;->end()V

    .line 676
    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 677
    return-void

    .line 636
    :pswitch_49
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_e

    .line 639
    :pswitch_4c
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_e

    .line 642
    :pswitch_4f
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_e

    .line 645
    :pswitch_52
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_e

    .line 649
    :pswitch_55
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_e

    .line 653
    :pswitch_58
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextScore:Lfr/testudo/spacecorsair/textengine/GLText;

    goto :goto_e

    .line 664
    :cond_5b
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    sub-int v3, p2, v2

    .line 665
    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    sub-int v2, p3, v2

    goto :goto_34

    .line 634
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
    .end packed-switch
.end method

.method private drawWelcomeMessage(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const v3, 0x459c4000    # 5000.0f

    const v2, 0x453b8000    # 3000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 606
    sget-boolean v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->sizeSet:Z

    if-nez v0, :cond_12

    .line 607
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-static {v0}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->calcMsgDemiSize(Lfr/testudo/spacecorsair/textengine/GLText;)V

    .line 613
    :cond_12
    sget v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->displayCounter:I

    int-to-float v0, v0

    sub-float v0, v3, v0

    .line 614
    sget v1, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->displayCounter:I

    int-to-float v1, v1

    sub-float v1, v3, v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_60

    .line 615
    div-float/2addr v0, v2

    .line 619
    :goto_21
    sget v1, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->displayCounter:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_5e

    .line 620
    sget v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->displayCounter:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v4, v0, v1

    .line 624
    :goto_2e
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->messageHaut:Ljava/lang/String;

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->msgDemiSizeHaut:I

    sub-int v2, v0, v2

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 625
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->messageBas:Ljava/lang/String;

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    sget v2, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->msgDemiSizeBas:I

    sub-int v2, v0, v2

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    div-int/lit8 v3, v3, 0x3

    sub-int v3, v0, v3

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 627
    return-void

    :cond_5e
    move v4, v0

    goto :goto_2e

    :cond_60
    move v0, v5

    goto :goto_21
.end method

.method private initGLTexts(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 14

    .prologue
    const/16 v11, 0x28

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 748
    new-instance v0, Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/textengine/GLText;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/res/AssetManager;)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    .line 749
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v1, "fonts/Roboto-Regular.ttf"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v3, v10, v10}, Lfr/testudo/spacecorsair/textengine/GLText;->load(Ljava/lang/String;III)Z

    .line 750
    const-string v1, "test"

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 751
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v1, "Life"

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->LIFE_TEST_SIZE:F

    .line 754
    new-instance v0, Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/textengine/GLText;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/res/AssetManager;)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    .line 755
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v1, "fonts/Roboto-Regular.ttf"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v3, v10, v10}, Lfr/testudo/spacecorsair/textengine/GLText;->load(Ljava/lang/String;III)Z

    .line 756
    const-string v1, "test"

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 758
    new-instance v0, Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/textengine/GLText;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/res/AssetManager;)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    .line 759
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v1, "fonts/Roboto-Regular.ttf"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v3, v10, v10}, Lfr/testudo/spacecorsair/textengine/GLText;->load(Ljava/lang/String;III)Z

    .line 760
    const-string v1, "test"

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 763
    new-instance v0, Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/textengine/GLText;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/res/AssetManager;)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    .line 764
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v1, "fonts/Starjedi.ttf"

    const/16 v3, 0x22

    const/16 v5, 0x14

    const/16 v6, 0x14

    invoke-virtual {v0, v1, v3, v5, v6}, Lfr/testudo/spacecorsair/textengine/GLText;->load(Ljava/lang/String;III)Z

    .line 765
    const-string v1, "test"

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 767
    new-instance v0, Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/textengine/GLText;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/res/AssetManager;)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    .line 768
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v1, "fonts/space_age.ttf"

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3, v11, v11}, Lfr/testudo/spacecorsair/textengine/GLText;->load(Ljava/lang/String;III)Z

    .line 769
    const-string v1, "test"

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 772
    new-instance v0, Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfr/testudo/spacecorsair/textengine/GLText;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/res/AssetManager;)V

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextScore:Lfr/testudo/spacecorsair/textengine/GLText;

    .line 773
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextScore:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v1, "fonts/scoreboard.ttf"

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3, v11, v11}, Lfr/testudo/spacecorsair/textengine/GLText;->load(Ljava/lang/String;III)Z

    .line 774
    const-string v1, "test"

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->SCORE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 777
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v1, "ping : "

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->pingTextSize:I

    .line 780
    return-void
.end method

.method public static initLaserAndMissileButonPos()V
    .registers 5

    .prologue
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 156
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    mul-int/lit8 v0, v0, 0x78

    div-int/lit16 v2, v0, 0x4b0

    .line 159
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v1, v2

    int-to-float v3, v2

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 162
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v1, v2

    int-to-float v3, v2

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 163
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->laserButon:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v1, v2

    int-to-float v3, v2

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 164
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->boosterButton:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v1, v2

    int-to-float v3, v2

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 165
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButton:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v1, v2

    div-float/2addr v1, v4

    int-to-float v3, v2

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 166
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v1, v2

    div-float/2addr v1, v4

    int-to-float v3, v2

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->backButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v1, v2

    div-float/2addr v1, v4

    int-to-float v3, v2

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 168
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v1, v2

    div-float/2addr v1, v4

    int-to-float v3, v2

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 169
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButton:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imageDim:Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v1, v2

    int-to-float v3, v2

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 172
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    div-int/lit8 v1, v2, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    .line 173
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->laserButon:Lfr/testudo/spacecorsair/display/hud/Button;

    div-int/lit8 v1, v2, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    .line 174
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->boosterButton:Lfr/testudo/spacecorsair/display/hud/Button;

    div-int/lit8 v1, v2, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButton:Lfr/testudo/spacecorsair/display/hud/Button;

    div-int/lit8 v1, v2, 0x4

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    .line 176
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    div-int/lit8 v1, v2, 0x4

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    .line 177
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    div-int/lit8 v1, v2, 0x4

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    .line 178
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->backButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    div-int/lit8 v1, v2, 0x4

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    .line 179
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButton:Lfr/testudo/spacecorsair/display/hud/Button;

    div-int/lit8 v1, v2, 0x2

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    .line 182
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    .line 183
    sget v0, Lfr/testudo/spacecorsair/display/hud/Radar;->POSY:I

    sget v3, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x14

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    .line 186
    if-le v1, v0, :cond_111

    .line 190
    :goto_9f
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v3, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 191
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->laserButon:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v1, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    int-to-float v1, v1

    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1e

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 192
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->boosterButton:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v1, Lfr/testudo/spacecorsair/display/hud/Radar;->POSX:I

    int-to-float v1, v1

    int-to-float v3, v2

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1e

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 193
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButton:Lfr/testudo/spacecorsair/display/hud/Button;

    div-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1e

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 194
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    div-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1e

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 195
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButton:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v1, v1

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 196
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v1, v1

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1e

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 197
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->backButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x3c

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1e

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/Button;->initImagePos(FF)V

    .line 199
    invoke-static {}, Lfr/testudo/spacecorsair/mod/ModQol;->buttons()V

    return-void

    :cond_111
    move v0, v1

    goto :goto_9f
.end method

.method private static reloadHud()V
    .registers 5

    .prologue
    const/16 v4, 0xa

    const v3, 0x3f19999a    # 0.6f

    .line 220
    invoke-static {}, Lfr/testudo/spacecorsair/display/hud/Joystick;->initPosition()V

    .line 221
    invoke-static {}, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->initPosition()V

    .line 222
    invoke-static {}, Lfr/testudo/spacecorsair/display/hud/Radar;->initPosition()V

    .line 223
    invoke-static {}, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->initPosition()V

    .line 224
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GameRenderer;->initLaserAndMissileButonPos()V

    .line 225
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget v1, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->DEMI_DIM:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->missionTextYPos:I

    .line 227
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    div-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1, v4}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBar;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 228
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iput v3, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    .line 230
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v1, v1

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    div-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1, v4}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->newBlue(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBar;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 231
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iput v3, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->fillA:F

    .line 233
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v1, v1

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->newTransparentWhite(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBar;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->xpBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    .line 236
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->heartPos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    div-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    add-int/lit8 v2, v2, -0x32

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 237
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldPos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    div-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    add-int/lit8 v2, v2, -0x46

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 239
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->shieldFasterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    div-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    add-int/lit8 v2, v2, -0x46

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 242
    return-void
.end method

.method private static setScreenSize(II)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 103
    sput p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthX:I

    .line 104
    sput p1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    .line 105
    div-int/lit8 v0, p0, 0x2

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    .line 106
    div-int/lit8 v0, p1, 0x2

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenCenter:Lfr/testudo/spacecorsair/engine/Vector2;

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v1, v1

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 110
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    div-int/lit8 v1, p0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 111
    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v2, p0

    int-to-float v3, p1

    invoke-direct {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 112
    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v3, p1

    invoke-direct {v2, v5, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 113
    new-instance v3, Lfr/testudo/spacecorsair/engine/Vector2;

    int-to-float v4, p0

    invoke-direct {v3, v4, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 114
    new-instance v4, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v4, v5, v5}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    .line 116
    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v1, v6

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleTopRight:F

    .line 117
    invoke-virtual {v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v1, v6

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleTopLeft:F

    .line 118
    invoke-virtual {v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v1}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v1

    sput v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleBottomLeft:F

    .line 119
    invoke-virtual {v0, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenAngleBottomRight:F

    .line 122
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GameRenderer;->reloadHud()V

    .line 123
    return-void
.end method

.method public static updateMissileCount(I)V
    .registers 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->nbrMissile:Ljava/lang/String;

    .line 128
    sput p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastNbrMissile:I

    .line 129
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->nbrMissile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->nbrMissileDecalX:I

    .line 130
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormal:Lfr/testudo/spacecorsair/textengine/GLText;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/textengine/GLText;->getCharHeight()F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->nbrMissileDecalY:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastNbrMissile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ready !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->MISSILE_READY_MESSAGE_SPACE:Ljava/lang/String;

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->MISSILE_READY_MESSAGE_SPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->missileReadyDecalX:I

    .line 133
    return-void
.end method

.method public static updatePlayerMoney()V
    .registers 4

    .prologue
    .line 136
    sget-wide v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastPlayerMoney:J

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 148
    :goto_10
    return-void

    .line 141
    :cond_11
    :try_start_11
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getCredit()J

    move-result-wide v0

    sput-wide v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastPlayerMoney:J

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Credit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    sget-wide v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastPlayerMoney:J

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa0

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0000"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->playerMoney:Ljava/lang/String;

    .line 144
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->playerMoney:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->playerMoneyDecalX:I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_5e} :catch_5f

    goto :goto_10

    .line 145
    :catch_5f
    move-exception v0

    .line 146
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    add-int/lit8 v0, v0, -0x14

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->playerMoneyDecalX:I

    goto :goto_10
.end method

.method private waitUntilIHaveSomethingtoDraw()V
    .registers 3

    .prologue
    .line 245
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_3
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawQueueChanged:Z

    if-nez v0, :cond_13

    .line 247
    :goto_7
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawQueueChanged:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    if-nez v0, :cond_13

    .line 249
    :try_start_b
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_18

    goto :goto_7

    .line 250
    :catch_11
    move-exception v0

    goto :goto_7

    .line 255
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawQueueChanged:Z

    .line 256
    monitor-exit v1

    .line 257
    return-void

    .line 256
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_18

    throw v0
.end method


# virtual methods
.method public drawAnimatedElements(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 14

    .prologue
    .line 328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 331
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->animatedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 333
    const/4 v2, 0x0

    move v8, v2

    :goto_12
    if-ge v8, v9, :cond_3b

    .line 335
    :try_start_14
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->animatedElements:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lfr/testudo/spacecorsair/display/AnimatedDrawable;

    move-object v3, v0

    .line 336
    invoke-virtual {v3, v10, v11}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->updateCurrentSprite(J)V

    .line 337
    invoke-virtual {v3}, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->getDrawable()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v2

    iget-object v4, v3, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v5, v3, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->spin:F

    iget-boolean v6, v3, Lfr/testudo/spacecorsair/display/AnimatedDrawable;->cameraRelative:Z

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lfr/testudo/spacecorsair/display/Drawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/engine/Vector2;FZF)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_3c

    .line 333
    :goto_37
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_12

    .line 343
    :cond_3b
    return-void

    .line 338
    :catch_3c
    move-exception v2

    goto :goto_37
.end method

.method public drawBackground(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->backgroundObject:Lfr/testudo/spacecorsair/display/Background;

    if-eqz v0, :cond_9

    .line 262
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->backgroundObject:Lfr/testudo/spacecorsair/display/Background;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/Background;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 265
    :cond_9
    return-void
.end method

.method public drawFog(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->backgroundObject:Lfr/testudo/spacecorsair/display/Background;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->backgroundObject:Lfr/testudo/spacecorsair/display/Background;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/Background;->drawFog(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 271
    :cond_9
    return-void
.end method

.method public drawHud(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 13

    .prologue
    .line 363
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalLevelName:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/Radar;->drawPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalLevelName:I

    .line 367
    :cond_21
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    if-nez v0, :cond_4f

    .line 369
    invoke-static {p1}, Lfr/testudo/spacecorsair/display/hud/Radar;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 370
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v0, Lfr/testudo/spacecorsair/game/levels/Level;->name:Ljava/lang/String;

    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalLevelName:I

    sget v0, Lfr/testudo/spacecorsair/display/hud/Radar;->POSY:I

    sget v3, Lfr/testudo/spacecorsair/display/hud/Radar;->DEMI_DIM:I

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, -0xa

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3ef5c28f    # 0.48f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 375
    :cond_4f
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mapMode:Z

    if-eqz v0, :cond_1a1

    .line 377
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_96

    .line 379
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalback:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7c

    .line 380
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->backButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v2, "back"

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalback:I

    .line 382
    :cond_7c
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->backButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/hud/Button;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 383
    const-string v1, "back"

    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalback:I

    const/16 v3, 0x14

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 387
    :cond_96
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->globalMapMode:Z

    if-nez v0, :cond_118

    .line 389
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalMapMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b8

    .line 390
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    int-to-float v0, v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLarge:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v2, "Map Mode"

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalMapMode:I

    .line 393
    :cond_b8
    const-string v1, "Map Mode"

    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalMapMode:I

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    add-int/lit8 v3, v0, -0x32

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LARGE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 395
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalGalaxyModeHint:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ef

    .line 396
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButton:Lfr/testudo/spacecorsair/display/hud/Button;

    iget v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v2, "Constellation"

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalGalaxyModeHint:I

    .line 400
    :cond_ef
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_112

    .line 401
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/hud/Button;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 407
    :goto_fc
    const-string v1, "Constellation"

    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalGalaxyModeHint:I

    const/16 v3, 0x14

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 602
    :cond_111
    :goto_111
    invoke-static {p1}, Lfr/testudo/spacecorsair/mod/ModQol;->drawHud(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void

    .line 403
    :cond_112
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButton:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/hud/Button;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_fc

    .line 413
    :cond_118
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-eqz v0, :cond_111

    .line 415
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalSectorModeHint:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_140

    .line 416
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButton:Lfr/testudo/spacecorsair/display/hud/Button;

    iget v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v2, "Sector"

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalSectorModeHint:I

    .line 420
    :cond_140
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decaljump:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15d

    .line 421
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v2, "jump"

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decaljump:I

    .line 425
    :cond_15d
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->galaxyButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/hud/Button;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 426
    const-string v1, "Sector"

    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalSectorModeHint:I

    const/16 v3, 0x14

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 429
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/hud/Button;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 430
    const-string v1, "jump"

    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decaljump:I

    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    float-to-int v0, v0

    sget-object v3, Lfr/testudo/spacecorsair/display/hud/HudImages;->jumpButtonMoga:Lfr/testudo/spacecorsair/display/hud/Button;

    iget v3, v3, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1e

    add-int/lit8 v3, v0, -0xa

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_111

    .line 442
    :cond_1a1
    const/4 v0, 0x1

    .line 443
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileCount:I

    if-gtz v1, :cond_406

    .line 444
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->r:F

    .line 445
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->g:F

    .line 446
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    const/4 v1, 0x0

    iput v1, v0, Lfr/testudo/spacecorsair/display/hud/Button;->b:F

    .line 447
    const/4 v0, 0x0

    .line 466
    :goto_1bb
    if-eqz v0, :cond_1c2

    .line 467
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/display/hud/Button;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 471
    :cond_1c2
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastNbrMissile:I

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileCount:I

    if-eq v1, v2, :cond_1d5

    .line 472
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->missileCount:I

    invoke-static {v1}, Lfr/testudo/spacecorsair/engine/GameRenderer;->updateMissileCount(I)V

    .line 475
    :cond_1d5
    const v5, 0x3ef5c28f    # 0.48f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    .line 476
    sget v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastNbrMissile:I

    if-nez v1, :cond_1e9

    .line 477
    const v6, 0x3e4ccccd    # 0.2f

    .line 478
    const v7, 0x3e4ccccd    # 0.2f

    .line 479
    const/high16 v5, 0x3f800000    # 1.0f

    .line 483
    :cond_1e9
    if-eqz v0, :cond_226

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-wide v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_226

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastNbrMissile:I

    if-lez v0, :cond_226

    .line 484
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->MISSILE_READY_MESSAGE_SPACE:Ljava/lang/String;

    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->missileReadyDecalX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v2, v0

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sget-object v3, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    iget-object v3, v3, Lfr/testudo/spacecorsair/display/hud/Button;->imagePos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v3, v3, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    sget-object v4, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    iget v4, v4, Lfr/testudo/spacecorsair/display/hud/Button;->demiDim:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->nbrMissileDecalY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v3, v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 488
    :cond_226
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Config;->hideHud:Z

    if-nez v0, :cond_25d

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->mogaConnected:Z

    if-nez v0, :cond_25d

    .line 489
    invoke-static {p1}, Lfr/testudo/spacecorsair/display/hud/Joystick;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 490
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->laserType:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec$LaserType;->useJoystick:Z

    if-eqz v0, :cond_452

    .line 491
    invoke-static {p1}, Lfr/testudo/spacecorsair/display/hud/LaserJoystick;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 497
    :goto_248
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    if-eqz v0, :cond_25d

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->boosterSpec:Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/loot/stuff/booster/BoosterSpec;->boosterEnabled:Z

    if-eqz v0, :cond_25d

    .line 498
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->boosterButton:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/hud/Button;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 505
    :cond_25d
    invoke-static {p1}, Lfr/testudo/spacecorsair/display/hud/MenuButonLink;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 506
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastPlayerLifeInPourc:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_27f

    .line 509
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->setValue(F)V

    .line 510
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->lifeInPourc:F

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastPlayerLifeInPourc:F

    .line 512
    :cond_27f
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 514
    invoke-static {p1}, Lfr/testudo/spacecorsair/display/hud/HudImages;->drawHeart(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 517
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastShieldValueInPourc:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2ac

    .line 520
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->setValue(F)V

    .line 521
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->valueInPourc:F

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastShieldValueInPourc:F

    .line 523
    :cond_2ac
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->shieldBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 525
    invoke-static {p1}, Lfr/testudo/spacecorsair/display/hud/HudImages;->drawShield(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 527
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shield:Lfr/testudo/spacecorsair/business/player/Shield;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/Shield;->isReloadingFaster:Z

    if-eqz v0, :cond_2c1

    .line 528
    invoke-static {p1}, Lfr/testudo/spacecorsair/display/hud/HudImages;->drawShieldFaster(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 533
    :cond_2c1
    invoke-static {}, Lfr/testudo/spacecorsair/engine/GameRenderer;->updatePlayerMoney()V

    .line 534
    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->playerMoney:Ljava/lang/String;

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->playerMoneyDecalX:I

    const/16 v3, 0x1e

    const v4, 0x3eb33333    # 0.35f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 537
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v10, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    .line 539
    if-eqz v10, :cond_37c

    .line 541
    iget v0, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationPoisonDuree:I

    if-lez v0, :cond_310

    .line 543
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalPoisoned:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f9

    .line 545
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenMidWidthX:I

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    sget-object v2, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_POISONED_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalPoisoned:I

    .line 547
    :cond_2f9
    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_POISONED_MESSAGE:Ljava/lang/String;

    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalPoisoned:I

    const/16 v3, 0x32

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 550
    :cond_310
    iget v0, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationAgilityDuree:I

    if-lez v0, :cond_331

    .line 552
    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_AGILITY_MESSAGE:Ljava/lang/String;

    const/4 v2, 0x5

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x28

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 555
    :cond_331
    iget v0, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationReloadDuree:I

    if-lez v0, :cond_352

    .line 557
    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_RELOAD_MESSAGE:Ljava/lang/String;

    const/4 v2, 0x5

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x28

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 560
    :cond_352
    iget v0, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareDuree:I

    if-lez v0, :cond_37c

    .line 561
    iget v0, v10, Lfr/testudo/spacecorsair/business/player/PlayerShip;->alterationSnareValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_459

    const/4 v0, 0x1

    .line 562
    :goto_35e
    if-eqz v0, :cond_45c

    .line 564
    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_ROOTED_MESSAGE:Ljava/lang/String;

    const/4 v2, 0x5

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    div-int/lit8 v3, v3, 0x3

    sub-int v3, v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 578
    :cond_37c
    :goto_37c
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastXpValue:I

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->levelPourc:F

    float-to-int v1, v1

    if-eq v0, v1, :cond_3a1

    .line 579
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->xpBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->levelPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->setValue(F)V

    .line 580
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->levelPourc:F

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastXpValue:I

    .line 583
    :cond_3a1
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->xpBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/hud/InfoBar;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 584
    iget v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3bd

    .line 586
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->xpBar:Lfr/testudo/spacecorsair/display/hud/InfoBar;

    iget v0, v0, Lfr/testudo/spacecorsair/display/hud/InfoBar;->xPosition:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    const-string v2, "Level 999"

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalLevel:I

    .line 588
    :cond_3bd
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    iget-object v1, v0, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->playerLevelText:Ljava/lang/String;

    iget v2, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalLevel:I

    const/16 v3, 0xa

    const v4, 0x3eb33333    # 0.35f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 591
    sget-boolean v0, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->isActive:Z

    if-eqz v0, :cond_3e0

    .line 592
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawWelcomeMessage(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 596
    :cond_3e0
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_111

    .line 598
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->getCurrentInstruction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->missionTextYPos:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f56d6d7

    const v7, 0x3eb2b2b3

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_111

    .line 449
    :cond_406
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-wide v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_43a

    .line 450
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-wide v2, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->milleSecBetweenMissileShots:J

    .line 451
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-wide v4, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->nextShootMissileAlowed:J

    .line 452
    long-to-float v1, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 453
    sget-object v2, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    iput v1, v2, Lfr/testudo/spacecorsair/display/hud/Button;->r:F

    .line 454
    sget-object v2, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    iput v1, v2, Lfr/testudo/spacecorsair/display/hud/Button;->g:F

    .line 455
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/display/hud/Button;->b:F

    .line 456
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/display/hud/Button;->a:F

    goto/16 :goto_1bb

    .line 459
    :cond_43a
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/display/hud/Button;->r:F

    .line 460
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/display/hud/Button;->g:F

    .line 461
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    const/4 v2, 0x0

    iput v2, v1, Lfr/testudo/spacecorsair/display/hud/Button;->b:F

    .line 462
    sget-object v1, Lfr/testudo/spacecorsair/display/hud/HudImages;->missileButon:Lfr/testudo/spacecorsair/display/hud/Button;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lfr/testudo/spacecorsair/display/hud/Button;->a:F

    goto/16 :goto_1bb

    .line 493
    :cond_452
    sget-object v0, Lfr/testudo/spacecorsair/display/hud/HudImages;->laserButon:Lfr/testudo/spacecorsair/display/hud/Button;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/display/hud/Button;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_248

    .line 561
    :cond_459
    const/4 v0, 0x0

    goto/16 :goto_35e

    .line 568
    :cond_45c
    sget-object v1, Lfr/testudo/spacecorsair/business/world/UniverseName;->ACTIF_SNARED_MESSAGE:Ljava/lang/String;

    const/4 v2, 0x5

    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->screenWidthY:I

    div-int/lit8 v3, v3, 0x3

    sub-int v3, v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x1

    sget-object v9, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;IIFFFFZLfr/testudo/spacecorsair/textengine/TextSize;)V

    goto/16 :goto_37c
.end method

.method public flushTextures(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/TextureLibrary;)V
    .registers 3

    .prologue
    .line 324
    return-void
.end method

.method public loadTextures(Ljavax/microedition/khronos/opengles/GL10;Lfr/testudo/spacecorsair/display/TextureLibrary;)V
    .registers 3

    .prologue
    .line 319
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 276
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    iget-boolean v1, v1, Lfr/testudo/spacecorsair/engine/GameThread;->paused:Z

    if-eqz v1, :cond_c

    .line 313
    :goto_b
    return-void

    .line 280
    :cond_c
    invoke-direct {p0}, Lfr/testudo/spacecorsair/engine/GameRenderer;->waitUntilIHaveSomethingtoDraw()V

    .line 283
    monitor-enter p0

    .line 285
    const/16 v1, 0x4100

    :try_start_12
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 286
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 289
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawBackground(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 291
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v1, Lfr/testudo/spacecorsair/game/levels/Level;->backgroundDrawableObjects:[Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;

    .line 292
    if-eqz v2, :cond_39

    .line 293
    array-length v3, v2

    move v1, v0

    .line 294
    :goto_2b
    if-ge v1, v3, :cond_39

    .line 295
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lfr/testudo/spacecorsair/business/world/BackgroundDrawableObject;->prepareRenderElement()Lfr/testudo/spacecorsair/display/RenderElement;

    move-result-object v4

    invoke-virtual {v4, p1}, Lfr/testudo/spacecorsair/display/RenderElement;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 299
    :cond_39
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawFog(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 301
    :goto_3c
    iget v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->renderQueueSize:I

    if-ge v0, v1, :cond_51

    .line 302
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->renderQueue:[Lfr/testudo/spacecorsair/display/RenderElement;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/display/RenderElement;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 303
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->renderQueue:[Lfr/testudo/spacecorsair/display/RenderElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/display/RenderElement;->reset()V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 306
    :cond_51
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawAnimatedElements(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 308
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawHud(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 311
    monitor-exit p0

    goto :goto_b

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_12 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public declared-synchronized onPause()V
    .registers 3

    .prologue
    .line 830
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    .line 831
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawQueueChanged:Z

    .line 832
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 833
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    .line 834
    monitor-exit p0

    return-void

    .line 833
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    .line 830
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v10, -0x3ee00000    # -10.0f

    const/4 v1, 0x0

    .line 689
    const-string v0, "JDE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surface changed x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    int-to-float v0, p2

    int-to-float v2, p3

    div-float/2addr v0, v2

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->aspect:F

    .line 693
    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->fov_radians:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v0, v2

    sput v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->camZ:F

    .line 696
    const/16 v0, 0x44c

    if-le p2, v0, :cond_cf

    .line 697
    const/high16 v0, 0x43960000    # 300.0f

    sput v0, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    .line 706
    :goto_46
    sget v0, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->config:Lfr/testudo/spacecorsair/game/Config;

    iget v2, v2, Lfr/testudo/spacecorsair/game/Config;->defaultZoom:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sput v0, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    .line 708
    const-string v0, "JDE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cam decal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    if-nez p2, :cond_6f

    .line 712
    const/4 p2, 0x1

    .line 716
    :cond_6f
    invoke-interface {p1, v4, v4, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 717
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 718
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 722
    sget v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->fov_degrees:F

    sget v2, Lfr/testudo/spacecorsair/engine/GameRenderer;->aspect:F

    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->camZ:F

    div-float/2addr v3, v5

    sget v4, Lfr/testudo/spacecorsair/engine/GameRenderer;->camZ:F

    mul-float/2addr v4, v5

    invoke-static {p1, v0, v2, v3, v4}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 723
    sget v3, Lfr/testudo/spacecorsair/engine/GameRenderer;->camZ:F

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p1

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 724
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 726
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 728
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/game/Game;->started:Z

    if-nez v0, :cond_ac

    .line 729
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->startGame()V

    .line 732
    :cond_ac
    invoke-static {p2, p3}, Lfr/testudo/spacecorsair/engine/GameRenderer;->setScreenSize(II)V

    .line 735
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/engine/GameRenderer;->initGLTexts(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 736
    const/4 v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastXpValue:I

    .line 737
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/game/Game;->loadTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 738
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->onSurfaceReady()V

    .line 739
    iput v10, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastPlayerLifeInPourc:F

    .line 740
    iput v10, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastShieldValueInPourc:F

    .line 741
    const-string v0, "JDE"

    const-string v1, "OPENGL TEXTURE LOADED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void

    .line 700
    :cond_cf
    rsub-int v0, p2, 0x44c

    mul-int/lit16 v0, v0, 0x12c

    div-int/lit16 v0, v0, 0x44c

    .line 702
    add-int/lit16 v0, v0, 0x12c

    int-to-float v0, v0

    sput v0, Lfr/testudo/spacecorsair/engine/Camera;->MINIDECAL:F

    goto/16 :goto_46
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 794
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 795
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 796
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 797
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 800
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 803
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 805
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 808
    return-void
.end method

.method public onSurfaceLost()V
    .registers 3

    .prologue
    .line 786
    const-string v0, "JDE"

    const-string v1, "Surface lost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void
.end method

.method public resetHudPrecalculedPOs()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 351
    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalLevelName:I

    .line 352
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->lastPlayerLifeInPourc:F

    .line 353
    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalPoisoned:I

    .line 354
    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalagility:I

    .line 355
    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalSnare:I

    .line 356
    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalRooted:I

    .line 357
    iput v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->decalReload:I

    .line 359
    return-void
.end method

.method public declared-synchronized setDrawQueue([Lfr/testudo/spacecorsair/display/RenderElement;I)V
    .registers 5

    .prologue
    .line 819
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->renderQueue:[Lfr/testudo/spacecorsair/display/RenderElement;

    .line 820
    iput p2, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->renderQueueSize:I

    .line 821
    iget-object v1, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_16

    .line 822
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawQueueChanged:Z

    .line 823
    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/GameRenderer;->drawLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 824
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_13

    .line 825
    monitor-exit p0

    return-void

    .line 824
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 819
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitUntilDrawingCompleted()V
    .registers 1

    .prologue
    .line 812
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
