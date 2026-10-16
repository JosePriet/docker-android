.class public Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;
.super Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
.source "SourceFile"


# static fields
.field public static final GAZ_TEXTURE_COUNT:I = 0x3

.field public static final OPEN_SHOP_DISTANCE:I = 0x15e

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableMini:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable; = null

.field private static gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final maxDistanceToTarget:I = 0x384

.field public static final minDistanceToTarget:I = 0x383

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field public static final sellActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

.field private static final tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public cur_gaz_texture:I

.field escaping:Z

.field fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v2, 0x43160000    # 150.0f

    const/high16 v1, 0x43020000    # 130.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 41
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3e600000    # -20.0f

    invoke-direct {v0, v4, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 42
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {v0, v4, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 95
    const/16 v0, 0x9

    new-array v0, v0, [Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    const/4 v1, 0x0

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x437a0000    # 250.0f

    const/16 v3, 0x12c

    invoke-static {v4, v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveUntilNextToPlayer(FFI)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x17c

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v2, v3}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWaitUntilPlayerClose(IF)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newOpenMobileShop()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v5}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newMooveNextPortal()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newWait(F)Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->newDiseapear()Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->sellActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    .line 85
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;-><init>()V

    .line 43
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 44
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 177
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->escaping:Z

    .line 178
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 308
    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->cur_gaz_texture:I

    .line 87
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41200000    # 10.0f

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x420c0000    # 35.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x14

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newGreen(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 88
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 89
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 90
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 92
    return-void
.end method

.method private requestMissileShot()V
    .registers 5

    .prologue
    .line 251
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_13

    .line 256
    :goto_12
    return-void

    .line 255
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->shootMissile(I)V

    goto :goto_12
.end method

.method public static setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 71
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 6

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 53
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 54
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    .line 55
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v1, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableMini:Lfr/testudo/spacecorsair/display/Drawable;

    .line 58
    return-void
.end method

.method private shootMissile(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 259
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->missileCount:I

    if-gtz v0, :cond_6

    .line 279
    :goto_5
    return-void

    .line 263
    :cond_6
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1, p0, v2}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3db80000    # -50.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 266
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 267
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 268
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 269
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 270
    const/16 v1, 0x4b0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 272
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->spin:F

    int-to-float v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 273
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 274
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->spin:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 276
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->currentMissileReload:J

    .line 278
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->missileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->missileCount:I

    goto :goto_5
.end method


# virtual methods
.method public doChasse(JZ)V
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x44610000    # 900.0f

    const v4, 0x4460c000    # 899.0f

    .line 197
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 198
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 200
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 201
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 203
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    .line 204
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->currentMissileReload:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->currentMissileReload:J

    .line 208
    :cond_28
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->distanceToTarget:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->distanceShoot:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3a

    .line 209
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 210
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 214
    :cond_3a
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->distanceToTarget:F

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->miniDistanceForMissile:J

    long-to-float v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_46

    .line 215
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->requestMissileShot()V

    .line 218
    :cond_46
    if-eqz p3, :cond_49

    .line 247
    :cond_48
    :goto_48
    return-void

    .line 223
    :cond_49
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->distanceToTarget:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7f

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->distanceToTarget:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7f

    .line 225
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->escaping:Z

    .line 226
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->isPousee:Z

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->spinSpeed:F

    .line 233
    :goto_5c
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->distanceToTarget:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_71

    .line 234
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->escaping:Z

    if-nez v0, :cond_82

    .line 235
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->escaping:Z

    .line 236
    const-wide/16 v0, 0x384

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/Util;->getNewRandomTarget(JLfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 242
    :cond_71
    :goto_71
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->distanceToTarget:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_48

    .line 244
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_48

    .line 229
    :cond_7f
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->isPousee:Z

    goto :goto_5c

    .line 238
    :cond_82
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_71
.end method

.method public doIa(J)V
    .registers 4

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->doIa(J)V

    .line 290
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 75
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableMini:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init()Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;
    .registers 9

    .prologue
    const v6, 0x3ecccccd    # 0.4f

    const v4, 0x3e99999a    # 0.3f

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x5

    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->level:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->level:I

    .line 109
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->level:I

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->init(I)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 111
    const/high16 v0, 0x45fa0000    # 8000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->maxLife:F

    .line 112
    const/high16 v0, 0x45fa0000    # 8000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->life:F

    .line 113
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->xp:I

    .line 114
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->milleSecBetweenShots:J

    .line 115
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->bulletDamage:F

    .line 116
    const/16 v0, 0x32

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->missileCount:I

    .line 117
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->missileReloadTimeInMilli:J

    .line 118
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->currentMissileReload:J

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->miniDistanceForMissile:J

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootConfig;->NONE:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 121
    const v0, 0x3e851eb8    # 0.26f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->maxTurnFactor:F

    .line 122
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpecBuilder;->rootMissileSpecLevel10:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 123
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->distanceShoot:F

    .line 124
    const/high16 v0, 0x43be0000    # 380.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->mass:F

    .line 125
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->maxPouseeForce:F

    .line 126
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->pouseeForce:F

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->isMiniaturefixed:Z

    .line 129
    const v0, 0x3f81eb85    # 1.015f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->speedDeperditionfactor:F

    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 131
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->shootPrecision:F

    .line 133
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 135
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawOnRadar:Z

    .line 136
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->radarPointSize:F

    .line 137
    iput v5, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->radarColorG:F

    .line 138
    iput v6, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->radarColorR:F

    .line 139
    iput v6, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->radarColorB:F

    .line 140
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->distanceToPlayer:F

    .line 142
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->isPousee:Z

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->escaping:Z

    .line 146
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 150
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const/16 v1, 0xfa

    const/16 v2, 0x1e

    const/high16 v4, 0x41500000    # 13.0f

    const/4 v7, 0x2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 151
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const/16 v1, 0xfa

    const/16 v2, 0x1e

    const/high16 v4, 0x41500000    # 13.0f

    const/4 v7, 0x2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 154
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->sellActivity:[Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->setActivity([Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;)V

    .line 157
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070350

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->specificName:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public onChaseStart()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 186
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 187
    return-void
.end method

.method public onChaseStop()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 192
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 193
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 294
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 295
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 298
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 299
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 300
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onDestroyed(Z)V

    .line 301
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 13

    .prologue
    .line 313
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->registerYourselfToDrawQueue()V

    .line 316
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 320
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 321
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 322
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 324
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 329
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 330
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 331
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 333
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 341
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->isPousee:Z

    if-eqz v0, :cond_b0

    .line 343
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->cur_gaz_texture:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->cur_gaz_texture:I

    .line 344
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->cur_gaz_texture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7e

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->cur_gaz_texture:I

    .line 348
    :cond_7e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 352
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->pouseeForce:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->maxPouseeForce:F

    div-float v5, v0, v1

    .line 354
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->spin:F

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 361
    :cond_b0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->scanable:Z

    if-eqz v0, :cond_fd

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->beeingScanned:Z

    if-eqz v0, :cond_fd

    .line 362
    const/4 v0, 0x0

    move v8, v0

    :goto_ba
    const/4 v0, 0x5

    if-ge v8, v0, :cond_fd

    .line 363
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 364
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3ef5c28f    # 0.48f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 362
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_ba

    .line 370
    :cond_fd
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    if-eqz v0, :cond_158

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->kind:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->lockAsteroidAndGather:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 371
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->gathering:Z

    if-eqz v0, :cond_158

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-eqz v0, :cond_158

    .line 373
    const/4 v0, 0x0

    move v8, v0

    :goto_117
    const/4 v0, 0x5

    if-ge v8, v0, :cond_158

    .line 374
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 375
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 373
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_117

    .line 381
    :cond_158
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 382
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 383
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->levelColorB:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 386
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 387
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 388
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 390
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_1fa

    .line 392
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c1

    .line 393
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->specificNameDecalX:I

    .line 395
    :cond_1c1
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x425c0000    # 55.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 397
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->specificName:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 403
    :cond_1fa
    return-void
.end method

.method public restoreDefaultPouseeForce()V
    .registers 2

    .prologue
    .line 407
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->maxPouseeForce:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->pouseeForce:F

    .line 408
    return-void
.end method

.method public setClosestPortalAsIncomingSource()Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 165
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    if-eqz v0, :cond_32

    .line 166
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/Level;->findClosestPortal(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_32

    .line 168
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/Portal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 169
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 170
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/MobileShopShip;->spin:F

    .line 173
    :cond_32
    return-object p0
.end method
