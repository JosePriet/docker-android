.class public Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;
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

.field private static final tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public cur_gaz_texture:I

.field escaping:Z

.field fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v2, 0x42a00000    # 80.0f

    const/4 v1, 0x0

    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 35
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

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

    .line 36
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 142
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->escaping:Z

    .line 143
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 261
    iput v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->cur_gaz_texture:I

    .line 76
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x420c0000    # 35.0f

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newGreen(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 77
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 78
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 79
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 81
    return-void
.end method

.method private requestMissileShot()V
    .registers 5

    .prologue
    .line 201
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_13

    .line 210
    :goto_12
    return-void

    .line 206
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->shootMissile(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_12

    .line 207
    :catch_18
    move-exception v0

    .line 208
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

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 61
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 46
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    .line 48
    return-void
.end method

.method private shootMissile(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 226
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->missileCount:I

    if-gtz v0, :cond_6

    .line 246
    :goto_5
    return-void

    .line 230
    :cond_6
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1, p0, v2}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3db80000    # -50.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 233
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 234
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 235
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 236
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 237
    const/16 v1, 0x4b0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 239
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->spin:F

    int-to-float v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 240
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 241
    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->spin:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 243
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->currentMissileReload:J

    .line 245
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->missileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->missileCount:I

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

    .line 151
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 152
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 154
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1e

    .line 155
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->currentMissileReload:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->currentMissileReload:J

    .line 159
    :cond_1e
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->distanceToTarget:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->distanceShoot:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2b

    .line 160
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 164
    :cond_2b
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->distanceToTarget:F

    iget-wide v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->miniDistanceForMissile:J

    long-to-float v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37

    .line 165
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->requestMissileShot()V

    .line 168
    :cond_37
    if-eqz p3, :cond_3a

    .line 197
    :cond_39
    :goto_39
    return-void

    .line 173
    :cond_3a
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->distanceToTarget:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_70

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->distanceToTarget:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_70

    .line 175
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->escaping:Z

    .line 176
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->isPousee:Z

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->spinSpeed:F

    .line 183
    :goto_4d
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->distanceToTarget:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_62

    .line 184
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->escaping:Z

    if-nez v0, :cond_73

    .line 185
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->escaping:Z

    .line 186
    const-wide/16 v0, 0x384

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {v0, v1, v2, v3}, Lfr/testudo/spacecorsair/business/Util;->getNewRandomTarget(JLfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 192
    :cond_62
    :goto_62
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->distanceToTarget:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_39

    .line 194
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-super {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_39

    .line 179
    :cond_70
    iput-boolean v7, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->isPousee:Z

    goto :goto_4d

    .line 188
    :cond_73
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->fixedEscapedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_62
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

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
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;
    .registers 11

    .prologue
    const/4 v3, 0x5

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3ee66666    # 0.45f

    const v2, 0x3ecccccd    # 0.4f

    .line 85
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->init(I)Lfr/testudo/spacecorsair/business/world/civil/CivilShip;

    .line 87
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->maxLife:F

    .line 88
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->life:F

    .line 89
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->xp:I

    .line 90
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->milleSecBetweenShots:J

    .line 91
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->bulletDamage:F

    .line 92
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->missileCount:I

    .line 93
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->missileReloadTimeInMilli:J

    .line 94
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->currentMissileReload:J

    .line 95
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->miniDistanceForMissile:J

    .line 96
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 97
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->maxTurnFactor:F

    .line 98
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 99
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->distanceShoot:F

    .line 100
    const/high16 v0, 0x43be0000    # 380.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->mass:F

    .line 101
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->maxPouseeForce:F

    .line 102
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->pouseeForce:F

    .line 104
    const v0, 0x3f828f5c    # 1.02f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->speedDeperditionfactor:F

    .line 105
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 106
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->shootPrecision:F

    .line 108
    sget-object v0, Lfr/testudo/spacecorsair/business/world/civil/CivilState;->IDLE:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->curState:Lfr/testudo/spacecorsair/business/world/civil/CivilState;

    .line 110
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawOnRadar:Z

    .line 111
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->radarPointSize:F

    .line 112
    iput v5, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->radarColorG:F

    .line 113
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->radarColorR:F

    .line 114
    iput v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->radarColorB:F

    .line 115
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->distanceToPlayer:F

    .line 117
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->isPousee:Z

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->escaping:Z

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 123
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->antiMissileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->antiMissileCount:I

    .line 125
    const/4 v7, 0x2

    .line 126
    const/16 v0, 0xc

    if-le p2, v0, :cond_8b

    .line 127
    const/4 v7, 0x3

    .line 129
    :cond_8b
    const/16 v0, 0x10

    if-le p2, v0, :cond_91

    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 133
    :cond_91
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    const/high16 v4, 0x41500000    # 13.0f

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 136
    return-object p0
.end method

.method public onChaseStart()V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->chasseTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 217
    return-void
.end method

.method public onChaseStop()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 222
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 251
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 252
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 255
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 256
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 257
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->onDestroyed(Z)V

    .line 258
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 266
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/world/civil/CivilShip;->registerYourselfToDrawQueue()V

    .line 269
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 272
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 273
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 274
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 281
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->isPousee:Z

    if-eqz v0, :cond_7f

    .line 283
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->cur_gaz_texture:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->cur_gaz_texture:I

    .line 284
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->cur_gaz_texture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4d

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->cur_gaz_texture:I

    .line 288
    :cond_4d
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 291
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->pouseeForce:F

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->maxPouseeForce:F

    div-float v5, v0, v1

    .line 293
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->spin:F

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 300
    :cond_7f
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->scanable:Z

    if-eqz v0, :cond_cc

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->beeingScanned:Z

    if-eqz v0, :cond_cc

    .line 301
    const/4 v0, 0x0

    move v8, v0

    :goto_89
    const/4 v0, 0x5

    if-ge v8, v0, :cond_cc

    .line 302
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

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

    .line 303
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3ef5c28f    # 0.48f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ea8f5c3    # 0.33f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 301
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_89

    .line 307
    :cond_cc
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 308
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41c80000    # 25.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 309
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->levelColorB:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 312
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 313
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 314
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 316
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_171

    .line 318
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_138

    .line 319
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextLittle:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->specificNameDecalX:I

    .line 321
    :cond_138
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42200000    # 40.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 323
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->specificName:Ljava/lang/String;

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

    .line 328
    :cond_171
    return-void
.end method

.method public restoreDefaultPouseeForce()V
    .registers 2

    .prologue
    .line 333
    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->maxPouseeForce:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/civil/TurtleCivilSpaceShip;->pouseeForce:F

    .line 334
    return-void
.end method
