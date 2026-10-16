.class public final Lfr/testudo/spacecorsair/business/loot/LootElement;
.super Lfr/testudo/spacecorsair/business/Element;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/testudo/spacecorsair/business/loot/LootElement$1;
    }
.end annotation


# static fields
.field private static MOOVETOPLAYER_RANGE:I = 0x0

.field private static final SPEED_MARGE:F = 0.5f

.field private static TRACTOR_BEAM_RANGE:I

.field public static drawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;",
            "Lfr/testudo/spacecorsair/display/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lifeTimeInMilliSec:J

.field looted:Z

.field public spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

.field public stayForEver:Z

.field public visibleTractorBeam:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/16 v0, 0x1f4

    sput v0, Lfr/testudo/spacecorsair/business/loot/LootElement;->MOOVETOPLAYER_RANGE:I

    .line 28
    const/16 v0, 0xfa

    sput v0, Lfr/testudo/spacecorsair/business/loot/LootElement;->TRACTOR_BEAM_RANGE:I

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfr/testudo/spacecorsair/business/loot/LootElement;->drawableMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/Element;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->lifeTimeInMilliSec:J

    .line 35
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->stayForEver:Z

    .line 36
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->visibleTractorBeam:Z

    .line 37
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    return-void
.end method

.method private initRandomDirectionAndPosition(Lfr/testudo/spacecorsair/business/Element;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 137
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 138
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v6

    mul-double/2addr v0, v8

    add-double/2addr v0, v4

    double-to-float v0, v0

    .line 139
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    mul-double/2addr v2, v8

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 140
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 144
    iget v0, p1, Lfr/testudo/spacecorsair/business/Element;->lootDispersion:I

    neg-int v0, v0

    int-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v6

    iget v4, p1, Lfr/testudo/spacecorsair/business/Element;->lootDispersion:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 145
    iget v1, p1, Lfr/testudo/spacecorsair/business/Element;->lootDispersion:I

    neg-int v1, v1

    int-to-double v2, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v6

    iget v1, p1, Lfr/testudo/spacecorsair/business/Element;->lootDispersion:I

    int-to-double v6, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 147
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v2, v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 148
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 8

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/Element;->doPhysic(J)V

    .line 62
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->stayForEver:Z

    if-nez v0, :cond_17

    .line 63
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->lifeTimeInMilliSec:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->lifeTimeInMilliSec:J

    .line 64
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->lifeTimeInMilliSec:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    .line 65
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->remove()V

    .line 69
    :cond_17
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->distanceToPlayer:F

    sget v1, Lfr/testudo/spacecorsair/business/loot/LootElement;->MOOVETOPLAYER_RANGE:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5d

    .line 71
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->getAngularWithInRad(Lfr/testudo/spacecorsair/engine/Vector2;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Lfr/testudo/spacecorsair/business/Element;->normalizeSpin(F)F

    move-result v0

    .line 73
    const v1, 0x3e4ccccd    # 0.2f

    long-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->distanceToPlayer:F

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 75
    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 76
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->applyRotatation(D)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 78
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->speed:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 81
    :cond_5d
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->isInPlayerLootRange()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 82
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->processLoot()V

    .line 86
    :cond_66
    return-void
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->drawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/engine/Vector2;->VECTOR_32:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/business/Element;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootElement;
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 90
    iget v0, p1, Lfr/testudo/spacecorsair/business/Element;->distanceToPlayer:F

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->distanceToPlayer:F

    .line 91
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 92
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->doesColideWithOthers:Z

    .line 93
    const v0, 0x3f8147ae    # 1.01f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->speedDeperditionfactor:F

    .line 94
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->hasSpeedDeperdition:Z

    .line 95
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p1, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 96
    invoke-direct {p0, p1}, Lfr/testudo/spacecorsair/business/loot/LootElement;->initRandomDirectionAndPosition(Lfr/testudo/spacecorsair/business/Element;)V

    .line 98
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getLifeTimeInSec()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->lifeTimeInMilliSec:J

    .line 99
    iput-boolean v4, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->drawOnRadar:Z

    .line 100
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->radarColorB:F

    .line 101
    iput v3, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->radarColorG:F

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->radarColorR:F

    .line 103
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->radarPointSize:F

    .line 104
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spin:F

    .line 105
    iput v3, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->a:F

    .line 106
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->stayForEver:Z

    .line 107
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->visibleTractorBeam:Z

    .line 108
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    .line 109
    return-object p0
.end method

.method protected isInPlayerLootRange()Z
    .registers 3

    .prologue
    .line 158
    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->distanceToPlayer:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public missionInit(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)Lfr/testudo/spacecorsair/business/loot/LootElement;
    .registers 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    const v0, 0x461c4000    # 10000.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->distanceToPlayer:F

    .line 115
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    .line 116
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->doesColideWithOthers:Z

    .line 117
    const v0, 0x3f8147ae    # 1.01f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->speedDeperditionfactor:F

    .line 118
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->hasSpeedDeperdition:Z

    .line 119
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, p1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 121
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->getLifeTimeInSec()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->lifeTimeInMilliSec:J

    .line 122
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->drawOnRadar:Z

    .line 123
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->radarColorB:F

    .line 124
    iput v4, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->radarColorG:F

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->radarColorR:F

    .line 126
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->radarPointSize:F

    .line 127
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spin:F

    .line 128
    iput v4, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->a:F

    .line 129
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->stayForEver:Z

    .line 130
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->visibleTractorBeam:Z

    .line 131
    iput-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    .line 132
    return-object p0
.end method

.method protected processLoot()V
    .registers 9

    .prologue
    const v7, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x1

    .line 167
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->removed:Z

    if-eqz v0, :cond_12

    .line 266
    :cond_11
    :goto_11
    return-void

    .line 174
    :cond_12
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    if-eqz v0, :cond_24

    .line 175
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->currentMission:Lfr/testudo/spacecorsair/business/mission/Mission;

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/mission/Mission;->missionEngine:Lfr/testudo/spacecorsair/business/mission/MissionListener;

    invoke-virtual {v0, p0}, Lfr/testudo/spacecorsair/business/mission/MissionListener;->onPlayerLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)Z

    move-result v0

    .line 176
    if-eqz v0, :cond_11

    .line 182
    :cond_24
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerCurrentShipInventory:Lfr/testudo/spacecorsair/business/player/Inventory;

    .line 184
    sget-object v1, Lfr/testudo/spacecorsair/business/loot/LootElement$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$SpaceObjectType:[I

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1ce

    .line 232
    new-instance v1, Lfr/testudo/spacecorsair/business/loot/SpaceObject;

    iget-object v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-direct {v1, v2, v6}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;-><init>(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;I)V

    .line 234
    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addObject(Lfr/testudo/spacecorsair/business/loot/SpaceObject;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 235
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newLootMessage()Lfr/testudo/spacecorsair/display/text/LootTextMessage;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/display/text/LootTextMessage;->init(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/LootTextMessage;

    move-result-object v0

    .line 236
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->remove()V

    .line 238
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    sget-object v1, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 240
    invoke-static {}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->instance()Lfr/testudo/spacecorsair/business/player/PlayerShip;

    move-result-object v0

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/PlayerShip;->updateRemainingMissiles()V

    .line 242
    :cond_71
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->soundManager:Lfr/testudo/spacecorsair/engine/SoundManager;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/SoundManager;->playLoot()V

    .line 243
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onLoot(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 244
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    .line 261
    :goto_7f
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    if-eqz v0, :cond_11

    .line 262
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->checkFirstTimeLoot()V

    goto :goto_11

    .line 187
    :pswitch_8b
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->repairShipInPourc(I)I

    move-result v0

    .line 188
    if-lez v0, :cond_d1

    .line 189
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSimpleMessage()Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    invoke-virtual {v0, v7, v5, v7}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->setRGB(FFF)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 190
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_d1
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    .line 193
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->remove()V

    goto :goto_7f

    .line 197
    :pswitch_d7
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->playerInfo:Lfr/testudo/spacecorsair/business/player/PlayerInfo;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/PlayerInfo;->repairShipInPourc(I)I

    move-result v0

    .line 198
    if-lez v0, :cond_11d

    .line 199
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newSimpleMessage()Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v3}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1, v0, v2}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/text/SimpleMessage;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v4}, Lfr/testudo/spacecorsair/display/text/SimpleMessage;->setRGB(FFF)Lfr/testudo/spacecorsair/business/Element;

    move-result-object v0

    .line 200
    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v1, v1, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_11d
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    .line 203
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->remove()V

    goto/16 :goto_7f

    .line 210
    :pswitch_124
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/economy/Price;->getBuyPrice()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 211
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newGoldMessage()Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v4, v4, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v2, v3, v4}, Lfr/testudo/spacecorsair/display/GoldTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v2

    .line 212
    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v3, v3, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCredit(I)V

    .line 214
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onLoot(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 215
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    .line 216
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->remove()V

    goto/16 :goto_7f

    .line 220
    :pswitch_176
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newGoldMessage()Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v1

    const-string v2, "ic_credits alien"

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/display/GoldTextMessage;->init(Ljava/lang/String;Lfr/testudo/spacecorsair/business/Element;)Lfr/testudo/spacecorsair/display/GoldTextMessage;

    move-result-object v1

    .line 221
    iput v4, v1, Lfr/testudo/spacecorsair/display/text/TextMessage;->r:F

    .line 222
    iput v4, v1, Lfr/testudo/spacecorsair/display/text/TextMessage;->b:F

    .line 223
    iput v5, v1, Lfr/testudo/spacecorsair/display/text/TextMessage;->g:F

    .line 224
    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    iget-object v2, v2, Lfr/testudo/spacecorsair/game/levels/Level;->toAddDrawOnly:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getObjectPrice()Lfr/testudo/spacecorsair/business/economy/Price;

    move-result-object v1

    iget v1, v1, Lfr/testudo/spacecorsair/business/economy/Price;->max:I

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/player/Inventory;->addCreditInApp(I)V

    .line 226
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-static {v0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onLoot(Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;)V

    .line 227
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    .line 228
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->remove()V

    goto/16 :goto_7f

    .line 246
    :cond_1ac
    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObject;->getSpaceObjectType()Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    move-result-object v1

    sget-object v2, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->missile:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/business/player/Inventory;->getRemainingAllowedMissileToFit()I

    move-result v0

    if-nez v0, :cond_1c5

    .line 248
    iput-boolean v6, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    .line 249
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->remove()V

    goto/16 :goto_7f

    .line 254
    :cond_1c5
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/Game;->showNotEnoughPlaceInCargo()V

    goto/16 :goto_7f

    .line 184
    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_d7
        :pswitch_124
        :pswitch_124
        :pswitch_124
        :pswitch_176
    .end packed-switch
.end method

.method public recycleToPool()V
    .registers 2

    .prologue
    .line 318
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->looted:Z

    if-nez v0, :cond_7

    .line 320
    invoke-static {p0}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerMissedLoot(Lfr/testudo/spacecorsair/business/loot/LootElement;)V

    .line 322
    :cond_7
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/Element;->recycleToPool()V

    .line 323
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 15

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 274
    .line 276
    sget-object v0, Lfr/testudo/spacecorsair/business/loot/LootElement$1;->$SwitchMap$fr$testudo$spacecorsair$business$loot$LootRarety:[I

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spaceObjectType:Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->getRarety()Lfr/testudo/spacecorsair/business/loot/LootRarety;

    move-result-object v1

    invoke-virtual {v1}, Lfr/testudo/spacecorsair/business/loot/LootRarety;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7c

    move v8, v5

    move v7, v5

    .line 299
    :goto_15
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->lifeTimeInMilliSec:J

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_26

    .line 300
    iget-wide v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->lifeTimeInMilliSec:J

    long-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->a:F

    .line 303
    :cond_26
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/loot/LootElement;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->spin:F

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 308
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->visibleTractorBeam:Z

    if-eqz v0, :cond_66

    iget v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->distanceToPlayer:F

    sget v1, Lfr/testudo/spacecorsair/business/loot/LootElement;->TRACTOR_BEAM_RANGE:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_66

    .line 309
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 310
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v6, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v7, p0, Lfr/testudo/spacecorsair/business/loot/LootElement;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v8, v0, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v9, 0x0

    const v10, 0x3f4ccccd    # 0.8f

    const v11, 0x3ef5c28f    # 0.48f

    const v13, 0x3ea8f5c3    # 0.33f

    move v12, v5

    invoke-virtual/range {v6 .. v13}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 314
    :cond_66
    return-void

    :pswitch_67
    move v8, v5

    move v7, v5

    .line 280
    goto :goto_15

    :pswitch_6a
    move v8, v5

    move v7, v5

    .line 282
    goto :goto_15

    .line 285
    :pswitch_6d
    const v7, 0x3f51d1d2

    .line 286
    const v8, 0x3e929293

    .line 287
    goto :goto_15

    .line 290
    :pswitch_74
    const v7, 0x3e888889

    .line 291
    const v8, 0x3f66e6e7

    .line 292
    goto :goto_15

    .line 276
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_74
    .end packed-switch
.end method
