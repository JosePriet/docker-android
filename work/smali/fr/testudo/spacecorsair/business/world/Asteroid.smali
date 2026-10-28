.class public Lfr/testudo/spacecorsair/business/world/Asteroid;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# static fields
.field private static final DISTANCE_TO_PLAYER_MIN_FOR_DELETION:I = 0xfa0

.field public static final LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

.field public static MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static MINI_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static final OBJECT_NAME:Ljava/lang/String; = "Asteroid"

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

.field public static physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field public lifeLimited:Z

.field public lifeTimeInMilli:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v1, 0x42540000    # 53.0f

    .line 17
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/Asteroid;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 20
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_64:Lfr/testudo/spacecorsair/engine/Vector2;

    sput-object v0, Lfr/testudo/spacecorsair/business/world/Asteroid;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 136
    new-instance v0, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    invoke-direct {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;-><init>()V

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->BASIC:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->stone:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->FINE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->malachite:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->diamond:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootRarety;->RARE:Lfr/testudo/spacecorsair/business/loot/LootRarety;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ruby:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->add(Lfr/testudo/spacecorsair/business/loot/LootRarety;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRangeBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 142
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/LootConfig;

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/LootProbability;->BASIC:[Lfr/testudo/spacecorsair/business/loot/LootProbability;

    invoke-direct {v1, v2, v0}, Lfr/testudo/spacecorsair/business/loot/LootConfig;-><init>([Lfr/testudo/spacecorsair/business/loot/LootProbability;Ljava/util/Map;)V

    sput-object v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->lifeLimited:Z

    .line 53
    const-string v0, "Asteroid"

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->objectName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 37
    sput-object p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->MINI_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 38
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_8:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/Asteroid;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 39
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 32
    sput-object p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 33
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/Asteroid;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/Asteroid;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 34
    return-void
.end method


# virtual methods
.method public applyAsteroidCollision(F)V
    .registers 2

    .prologue
    .line 130
    return-void
.end method

.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 162
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->lifeLimited:Z

    if-eqz v0, :cond_1d

    .line 163
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->lifeTimeInMilli:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->lifeTimeInMilli:I

    .line 164
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->lifeTimeInMilli:I

    if-gtz v0, :cond_1d

    iget v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->distanceToPlayer:F

    const/high16 v1, 0x457a0000    # 4000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 165
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/Asteroid;->remove()V

    .line 168
    :cond_1d
    return-void
.end method

.method public enableDeperdition(Z)Lfr/testudo/spacecorsair/business/world/Asteroid;
    .registers 3

    .prologue
    .line 94
    iput-boolean p1, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->hasSpeedDeperdition:Z

    .line 95
    const v0, 0x3f808312    # 1.004f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->speedDeperditionfactor:F

    .line 96
    return-object p0
.end method

.method public enableLifeLimit()Lfr/testudo/spacecorsair/business/world/Asteroid;
    .registers 2

    .prologue
    .line 87
    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/Asteroid;->enableLifeLimit(I)Lfr/testudo/spacecorsair/business/world/Asteroid;

    move-result-object v0

    return-object v0
.end method

.method public enableLifeLimit(I)Lfr/testudo/spacecorsair/business/world/Asteroid;
    .registers 3

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->lifeLimited:Z

    .line 82
    iput p1, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->lifeTimeInMilli:I

    .line 83
    return-object p0
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Asteroid;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getLootConfig()Lfr/testudo/spacecorsair/business/loot/LootConfig;
    .registers 2

    .prologue
    .line 147
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Asteroid;->LOOT_CONFIG:Lfr/testudo/spacecorsair/business/loot/LootConfig;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 101
    sget-object v0, Lfr/testudo/spacecorsair/business/world/Asteroid;->physicDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;F)Lfr/testudo/spacecorsair/business/world/Asteroid;
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/Asteroid;->reset()V

    .line 60
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->ignoreLevelOnDamage:Z

    .line 61
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->life:F

    .line 62
    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->mass:F

    .line 63
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/world/Asteroid;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 64
    invoke-virtual {p0, p2}, Lfr/testudo/spacecorsair/business/world/Asteroid;->setSpeedVector(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 65
    iput p3, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->spinSpeed:F

    .line 66
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->drawOnRadar:Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->radarColorB:F

    .line 68
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->radarColorG:F

    .line 69
    iput v1, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->radarColorR:F

    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMap;->asteroidRadar(Lfr/testudo/spacecorsair/business/Element;)V

    .line 70
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->radarPointSize:F

    .line 71
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->getLevel()I

    move-result v0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->level:I

    .line 72
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->hasSpeedDeperdition:Z

    .line 73
    const v0, 0x48f42400    # 500000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->distanceToPlayer:F

    .line 74
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->lifeLimited:Z

    .line 75
    const v0, 0xf4240

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->lifeTimeInMilli:I

    .line 77
    return-object p0
.end method

.method public onDestroyed(Z)V
    .registers 5

    .prologue
    const/16 v2, 0xa

    .line 113
    invoke-super {p0, p1}, Lfr/testudo/spacecorsair/business/Element;->onDestroyed(Z)V

    .line 116
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newRandomExplode()Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, p0}, Lfr/testudo/spacecorsair/display/ExplosionAnim;->init(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/ExplosionAnim;

    move-result-object v0

    .line 118
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddAnimated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addWhite(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 121
    invoke-static {p0, v2}, Lfr/testudo/spacecorsair/display/ParticuleFactory;->addRed(Lfr/testudo/spacecorsair/business/Element;I)V

    .line 124
    return-void
.end method

.method public onImpact(FLfr/testudo/spacecorsair/business/Element;)V
    .registers 4

    .prologue
    .line 153
    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/Asteroid;->removed:Z

    if-nez v0, :cond_e

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/Asteroid;->onDestroyed(Z)V

    .line 157
    :cond_e
    return-void
.end method
