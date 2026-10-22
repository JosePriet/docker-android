.class public Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;
.super Lfr/testudo/spacecorsair/business/world/civil/CivilShip;
.source "SourceFile"


# static fields
.field public static final GAZ_TEXTURE_COUNT:I = 0x3

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable; = null

.field private static gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final maxDistanceToTarget:I = 0x384

.field public static final minDistanceToTarget:I = 0x383

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

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
    .registers 5

    .prologue
    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v3, 0x43160000    # 150.0f

    const/high16 v1, 0x43020000    # 130.0f

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3e600000    # -20.0f

    invoke-direct {v0, v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 34
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {v0, v2, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    .line 75
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;-><init>()V

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tourellePoupePos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tourelleProuePos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 135
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->escaping:Z

    .line 136
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 263
    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->cur_gaz_texture:I

    .line 76
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x41200000    # 10.0f

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x420c0000    # 35.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x14

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newGreen(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 78
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 81
    return-void
.end method

.method private requestMissileShot()V
    .registers 5

    .prologue
    .line 211
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_13

    .line 220
    :goto_12
    return-void

    .line 216
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->shootMissile(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_12

    .line 217
    :catch_18
    move-exception v0

    .line 218
    const-string v1, "Error while shooting missile"

    invoke-static {v1, v0}, Lfr/testudo/spacecorsair/utils/Logs;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public static setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 61
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 46
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    .line 48
    return-void
.end method

.method private shootMissile(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 223
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missileCount:I

    if-gtz v0, :cond_6

    .line 243
    :goto_5
    return-void

    .line 227
    :cond_6
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1, p0, v2}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3db80000    # -50.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 230
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 231
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 232
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 233
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 234
    const/16 v1, 0x4b0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 236
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->spin:F

    int-to-float v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 237
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 238
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->spin:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 240
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->currentMissileReload:J

    .line 242
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missileCount:I

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

    .line 156
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 157
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 159
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 160
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 162
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    .line 163
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->currentMissileReload:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->currentMissileReload:J

    .line 167
    :cond_28
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->distanceToTarget:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->distanceShoot:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3a

    .line 168
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 169
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 173
    :cond_3a
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->distanceToTarget:F

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->miniDistanceForMissile:J

    long-to-float v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_46

    .line 174
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->requestMissileShot()V

    .line 177
    :cond_46
    if-eqz p3, :cond_49

    .line 207
    :cond_48
    :goto_48
    return-void

    .line 183
    :cond_49
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->distanceToTarget:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7f

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->distanceToTarget:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7f

    .line 185
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->escaping:Z

    .line 186
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->isPousee:Z

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->spinSpeed:F

    .line 193
    :goto_5c
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->distanceToTarget:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_71

    .line 194
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->escaping:Z

    if-nez v0, :cond_82

    .line 195
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->escaping:Z

    .line 196
    const-wide/16 v0, 0x384

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/Util;->getNewRandomTarget(JLfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 202
    :cond_71
    :goto_71
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->distanceToTarget:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_48

    .line 204
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_48

    .line 189
    :cond_7f
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->isPousee:Z

    goto :goto_5c

    .line 198
    :cond_82
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_71
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/mod/ModV34;->freighterArt(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;Lfr/testudo/spacecorsair/display/Drawable;)Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 70
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;
    .registers 11

    .prologue
    const v6, 0x3fa66666    # 1.3f

    const v4, 0x3ecccccd    # 0.4f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x5

    .line 85
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->init(I)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 87
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->maxLife:F

    .line 88
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->life:F

    .line 89
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->xp:I

    .line 90
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->milleSecBetweenShots:J

    .line 91
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->bulletDamage:F

    .line 92
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missileCount:I

    .line 93
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missileReloadTimeInMilli:J

    .line 94
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->currentMissileReload:J

    .line 95
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->miniDistanceForMissile:J

    .line 96
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 97
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->maxTurnFactor:F

    .line 98
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 99
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->distanceShoot:F

    .line 100
    const/high16 v0, 0x43be0000    # 380.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->mass:F

    .line 101
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->maxPouseeForce:F

    .line 102
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->pouseeForce:F

    .line 104
    const v0, 0x3f81eb85    # 1.015f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->speedDeperditionfactor:F

    .line 105
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 106
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->shootPrecision:F

    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawOnRadar:Z

    .line 111
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->radarPointSize:F

    .line 112
    iput v5, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->radarColorG:F

    .line 113
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->radarColorR:F

    .line 114
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->radarColorB:F

    .line 115
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->distanceToPlayer:F

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->isPousee:Z

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->escaping:Z

    .line 120
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->antiMissileCount:I

    .line 122
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput v6, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 123
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput v6, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    const/high16 v4, 0x41500000    # 13.0f

    const/4 v7, 0x2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 127
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    const/high16 v4, 0x41500000    # 13.0f

    const/4 v7, 0x2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 129
    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModV34;->freighter(Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;)V

    return-object p0
.end method

.method public onChaseStart()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 144
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 145
    return-void
.end method

.method public onChaseStop()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 150
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 151
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 249
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 250
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 253
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 254
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 255
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onDestroyed(Z)V

    .line 256
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 13

    .prologue
    .line 268
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->registerYourselfToDrawQueue()V

    .line 271
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 275
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 276
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 277
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 279
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonPoupe:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 284
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 285
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v10, v11}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 286
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 288
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->canonProue:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 296
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->isPousee:Z

    if-eqz v0, :cond_b0

    .line 298
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->cur_gaz_texture:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->cur_gaz_texture:I

    .line 299
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->cur_gaz_texture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7e

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->cur_gaz_texture:I

    .line 303
    :cond_7e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 307
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->pouseeForce:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->maxPouseeForce:F

    div-float v5, v0, v1

    .line 309
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->spin:F

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 316
    :cond_b0
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->scanable:Z

    if-eqz v0, :cond_fd

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->beeingScanned:Z

    if-eqz v0, :cond_fd

    .line 317
    const/4 v0, 0x0

    move v8, v0

    :goto_ba
    const/4 v0, 0x5

    if-ge v8, v0, :cond_fd

    .line 318
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

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

    .line 319
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3ef5c28f    # 0.48f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 317
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_ba

    .line 323
    :cond_fd
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    if-eqz v0, :cond_158

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->currentActivity:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity;->kind:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->lockAsteroidAndGather:Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/civil/CivilActivity$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 324
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->gathering:Z

    if-eqz v0, :cond_158

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

    if-eqz v0, :cond_158

    .line 326
    const/4 v0, 0x0

    move v8, v0

    :goto_117
    const/4 v0, 0x5

    if-ge v8, v0, :cond_158

    .line 327
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lockedAsteroidToGather:Lfr/testudo/spacecorsair/business/world/Asteroid;

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

    .line 328
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 326
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_117

    .line 334
    :cond_158
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 335
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 336
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->levelColorB:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 339
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 340
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 341
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 343
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_1fa

    .line 345
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c1

    .line 346
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->specificNameDecalX:I

    .line 348
    :cond_1c1
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x425c0000    # 55.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 350
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->specificName:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->GREEN:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMAL:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 356
    :cond_1fa
    return-void
.end method

.method public restoreDefaultPouseeForce()V
    .registers 2

    .prologue
    .line 361
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->maxPouseeForce:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TransportCivilShip;->pouseeForce:F

    .line 362
    return-void
.end method
