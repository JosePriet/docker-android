.class public Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;
.super Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
.source "SourceFile"


# static fields
.field public static final GAZ_TEXTURE_COUNT:I = 0x3

.field public static final OBJECT_NAME:Ljava/lang/String; = "Defensor"

.field public static drawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static drawableDim:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable; = null

.field private static gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final maxDistanceToTarget:I = 0x3e8

.field public static final minDistanceToTarget:I = 0x190

.field public static physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static final tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public aligntoTargetMaxTurnFactor:F

.field public canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

.field public cur_gaz_texture:I

.field public currentMissileReload:J

.field escaping:Z

.field public fixedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

.field public miniDistanceForMissile:J

.field public missileCount:I

.field public missileReloadTimeInMilli:J

.field public missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

.field public normalTurnFactor:F

.field public pouseeForceAbimed:F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/high16 v4, 0x43000000    # 128.0f

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v2, 0x428c0000    # 70.0f

    const/4 v1, 0x0

    .line 30
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 31
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v4, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 32
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 37
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;-><init>()V

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tourelleCenterPos:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 40
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->pouseeForceAbimed:F

    .line 48
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileCount:I

    .line 49
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileReloadTimeInMilli:J

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->currentMissileReload:J

    .line 51
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->miniDistanceForMissile:J

    .line 54
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->fixedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 289
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->escaping:Z

    .line 294
    iput v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->cur_gaz_texture:I

    .line 97
    const-string v0, "Defensor"

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->objectName:Ljava/lang/String;

    .line 98
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    invoke-direct {v0, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x23

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->newRed(Lfr/testudo/spacecorsair/engine/Vector2;II)Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    move-result-object v0

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    .line 99
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extR:F

    .line 100
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extG:F

    .line 101
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iput v4, v0, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->extB:F

    .line 103
    return-void
.end method

.method private requestMissileShot()V
    .registers 5

    .prologue
    .line 207
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-nez v0, :cond_13

    .line 212
    :goto_12
    return-void

    .line 211
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->shootMissile(I)V

    goto :goto_12
.end method

.method public static setGazTextures(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 7

    .prologue
    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lfr/testudo/spacecorsair/display/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawableGazDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v2, v3, p2}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    aput-object v2, v0, v1

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    .line 81
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 65
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawableDim:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 66
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    .line 68
    return-void
.end method

.method private shootMissile(I)V
    .registers 8

    .prologue
    const/high16 v5, 0x40200000    # 2.5f

    const/4 v4, 0x0

    .line 174
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileCount:I

    if-gtz v0, :cond_8

    .line 203
    :goto_7
    return-void

    .line 178
    :cond_8
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newMissile()Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->specialMissileAlteration:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    invoke-virtual {v0, v1, p0, v2, v3}, Lfr/testudo/spacecorsair/business/projectiles/Missile;->initWithSpecs(Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/projectiles/Missile;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3db80000    # -50.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 181
    iget-boolean v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->elite:Z

    if-eqz v1, :cond_2b

    .line 182
    iget v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    mul-float/2addr v1, v5

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->damage:F

    .line 183
    iget v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    mul-float/2addr v1, v5

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->radiusDamage:F

    .line 186
    :cond_2b
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 187
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 188
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v1

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 189
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v1, v4, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 190
    const/16 v1, 0x4b0

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->timeAllume:I

    .line 192
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->spin:F

    int-to-float v3, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 193
    iget-object v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 194
    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->spin:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lfr/testudo/spacecorsair/business/projectiles/Missile;->spin:F

    .line 197
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAdd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->alterationReloadValue:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->currentMissileReload:J

    .line 199
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->isPlayer:Z

    if-nez v0, :cond_8d

    .line 200
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->currentMissileReload:J

    long-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->currentMissileReload:J

    .line 202
    :cond_8d
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileCount:I

    goto/16 :goto_7
.end method


# virtual methods
.method public applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V
    .registers 6

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->applyDamage(FLfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/projectiles/Projectile;)V

    .line 279
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->lifeInPourc:F

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 280
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->lifeInPourc:F

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    .line 281
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->pouseeForceAbimed:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->pouseeForce:F

    .line 283
    :cond_16
    return-void
.end method

.method protected doAttackIa(JJ)V
    .registers 14

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doIa()V

    .line 220
    long-to-float v0, p3

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->distanceShoot:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    .line 221
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->requestShoot()V

    .line 225
    :cond_17
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->miniDistanceForMissile:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_20

    .line 226
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->requestMissileShot()V

    .line 230
    :cond_20
    cmp-long v0, p3, v4

    if-lez v0, :cond_58

    cmp-long v0, p3, v6

    if-gez v0, :cond_58

    .line 232
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->normalTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->maxTurnFactor:F

    .line 233
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->escaping:Z

    .line 234
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->isPousee:Z

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->spinSpeed:F

    .line 241
    :goto_33
    cmp-long v0, p3, v4

    if-gez v0, :cond_48

    .line 242
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->normalTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->maxTurnFactor:F

    .line 243
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->escaping:Z

    if-nez v0, :cond_5b

    .line 244
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->escaping:Z

    .line 245
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->fixedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-static {p3, p4, v0, v1}, Lfr/testudo/spacecorsair/business/Util;->getNewRandomTarget(JLfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 251
    :cond_48
    :goto_48
    cmp-long v0, p3, v6

    if-lez v0, :cond_57

    .line 253
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->aligntoTargetMaxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->maxTurnFactor:F

    .line 254
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    .line 259
    :cond_57
    return-void

    .line 237
    :cond_58
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->isPousee:Z

    goto :goto_33

    .line 247
    :cond_5b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->fixedTarget:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->alignToPoint(Lfr/testudo/spacecorsair/engine/Vector2;)Z

    goto :goto_48
.end method

.method public doPhysic(J)V
    .registers 8

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->doPhysic(J)V

    .line 165
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0, p1, p2}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->doPhysic(J)V

    .line 168
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->currentMissileReload:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_15

    .line 169
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->currentMissileReload:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->currentMissileReload:J

    .line 171
    :cond_15
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 91
    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->physicalDim:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public initLevelConfig(Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;I)Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;
    .registers 11

    .prologue
    const/4 v3, 0x5

    .line 107
    invoke-super {p0, p2}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->init(I)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 109
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->maxLife:F

    .line 110
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->life:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->life:F

    .line 111
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->xp:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->xp:I

    .line 112
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->milleSecBetweenShots:J

    .line 113
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    int-to-float v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->bulletDamage:F

    .line 114
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileCount:I

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileCount:I

    .line 115
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileReloadTimeInMilli:J

    .line 116
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileReloadTime:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->currentMissileReload:J

    .line 117
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileMinDistance:I

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->miniDistanceForMissile:J

    .line 118
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->lootConfig:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 119
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->maxTurnFactor:F

    .line 120
    iget v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->maxTurnFactor:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->normalTurnFactor:F

    .line 121
    iget-object v0, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileSpec:Lfr/testudo/spacecorsair/business/loot/stuff/missile/MissileSpec;

    .line 124
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->aligntoTargetMaxTurnFactor:F

    .line 125
    const/high16 v0, 0x457a0000    # 4000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->distanceShoot:F

    .line 126
    const v0, 0x44098000    # 550.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->mass:F

    .line 127
    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->pouseeForce:F

    .line 128
    const v0, 0x3f818937    # 1.012f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->speedDeperditionfactor:F

    .line 129
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->pouseeForceAbimed:F

    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;->setValue(F)V

    .line 135
    const/16 v0, 0x578

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->setMitigedDistance(I)V

    .line 136
    const v0, 0x458ca000    # 4500.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->desengagementDistance:F

    .line 137
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->shootPrecision:F

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawOnRadar:Z

    .line 142
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->radarPointSize:F

    .line 143
    const v0, 0x466a6000    # 15000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->distanceToPlayer:F

    .line 144
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->maxSpinSpeed:F

    .line 147
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootReload:I

    iget v2, p1, Lfr/testudo/spacecorsair/business/ennemis/EnnemisSpec;->shootDamage:I

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v7, 0x3

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->init(IIIFFII)Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    .line 149
    return-object p0
.end method

.method public onAttackTargetStart()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->attackTarget:Lfr/testudo/spacecorsair/business/Element;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initChasseTarget(Lfr/testudo/spacecorsair/business/Element;)V

    .line 266
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileReloadTimeInMilli:J

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->currentMissileReload:J

    .line 267
    return-void
.end method

.method public onAttackTargetStop()V
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->initReset()V

    .line 271
    return-void
.end method

.method public onDestroyed(Z)V
    .registers 4

    .prologue
    .line 375
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->onDestroyed(Z)V

    .line 377
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 378
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 381
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 382
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addYellow(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 385
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 10

    .prologue
    .line 299
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->registerYourselfToDrawQueue()V

    .line 302
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->spin:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 306
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->shipPosition:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 307
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 308
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 310
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawableTourelle:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->spin:F

    iget-object v5, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v5, v5, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->currentDeltaSpinWithShip:F

    sub-float/2addr v4, v5

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 320
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->isPousee:Z

    if-eqz v0, :cond_7b

    .line 322
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->cur_gaz_texture:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->cur_gaz_texture:I

    .line 323
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->cur_gaz_texture:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4d

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->cur_gaz_texture:I

    .line 327
    :cond_4d
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->spin:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 330
    const/high16 v5, 0x3f800000    # 1.0f

    .line 332
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->gazDrawables:[Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->cur_gaz_texture:I

    aget-object v3, v3, v4

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->spin:F

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFZ)V

    .line 340
    :cond_7b
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 341
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v0, v0, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v0, v0, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->level:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_167

    const/4 v0, 0x2

    :goto_96
    int-to-float v0, v0

    sub-float v0, v2, v0

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41700000    # 15.0f

    sub-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 342
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->levelStr:Ljava/lang/String;

    iget v4, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->levelColorR:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->levelColorG:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->levelColorB:F

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->LITTLE:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 345
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 346
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 347
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->lifeBar:Lfr/testudo/spacecorsair/display/hud/InfoBarEnnemis;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/hud/InfoBar;)V

    .line 349
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->specificName:Ljava/lang/String;

    if-eqz v0, :cond_129

    .line 351
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->specificNameDecalX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f0

    .line 352
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextNormalPlus:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->specificName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->specificNameDecalX:I

    .line 354
    :cond_f0
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->specificNameDecalX:I

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 356
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->specificName:Ljava/lang/String;

    sget-object v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v4, v4, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->r:F

    sget-object v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v5, v5, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->g:F

    sget-object v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v6, v6, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->b:F

    sget-object v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->ORANGE:Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;

    iget v7, v7, Lfr/testudo/spacecorsair/business/mission/MissionObjectiveColor;->a:F

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->NORMALPLUS:Lfr/testudo/spacecorsair/textengine/TextSize;

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 360
    :cond_129
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->elite:Z

    if-eqz v0, :cond_166

    .line 361
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v1, v1, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, v1, Lfr/testudo/spacecorsair/engine/Vector2;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    sget-object v2, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget-object v2, v2, Lfr/testudo/spacecorsair/display/Drawable;->dimensions:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 362
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v2, 0x0

    sget-object v3, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->ELITE_MARK_SIZE_NORMAL:Lfr/testudo/spacecorsair/display/Drawable;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 370
    :cond_166
    return-void

    .line 341
    :cond_167
    const/4 v0, 0x5

    goto/16 :goto_96
.end method

.method public setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 5

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 390
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->setElite()Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 391
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->xp:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->xp:I

    .line 392
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->life:F

    mul-float/2addr v0, v3

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->life:F

    .line 393
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->maxLife:F

    mul-float/2addr v0, v3

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->maxLife:F

    .line 394
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->bulletDamage:F

    const v1, 0x3fd9999a    # 1.7f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->bulletDamage:F

    .line 395
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iget v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenRafaleInMilli:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->timeBewteenRafaleInMilli:I

    .line 396
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileReloadTimeInMilli:J

    long-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileReloadTimeInMilli:J

    .line 397
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->missileCount:I

    .line 398
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->pouseeForce:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->pouseeForce:F

    .line 399
    iget v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->radarPointSize:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->radarPointSize:F

    .line 401
    return-object p0
.end method

.method public withLaserAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;
    .registers 3

    .prologue
    .line 155
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/ennemis/Ennemis;->withLaserAlterations(Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;)Lfr/testudo/spacecorsair/business/ennemis/Ennemis;

    .line 156
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/ennemis/DefensorShip;->canonCenter:Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;

    iput-object p1, v0, Lfr/testudo/spacecorsair/business/ennemis/EnnemisCanon;->alterationSpecs:Lfr/testudo/spacecorsair/business/loot/stuff/alteration/AlterationSpecs;

    .line 157
    return-object p0
.end method
