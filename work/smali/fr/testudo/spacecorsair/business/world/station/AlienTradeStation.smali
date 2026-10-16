.class public Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;
.super Lfr/testudo/spacecorsair/business/world/station/Station;
.source "SourceFile"


# static fields
.field public static final DECK_DETECTION_START:I = 0x96

.field public static final STATION_DETECTION_START:I = 0x6a4

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field protected static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final nbrDocks:I = 0x5

.field public static physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field protected docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v1, 0x43a00000    # 320.0f

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x5

    .line 34
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/station/Station;-><init>()V

    .line 35
    new-array v0, v3, [Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 36
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_17

    .line 37
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    new-instance v2, Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;-><init>()V

    aput-object v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 40
    :cond_17
    return-void
.end method

.method public static setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 74
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 75
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 69
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 70
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/Station;->doPhysic(J)V

    .line 153
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->distanceToPlayer:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    add-int/lit16 v1, v1, 0x6a4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    .line 154
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->handleDockingIa(J)V

    .line 156
    :cond_17
    return-void
.end method

.method public getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->mapHidden:Z

    if-nez v0, :cond_7

    .line 51
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 53
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public handleDockingIa(J)V
    .registers 6

    .prologue
    .line 165
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 166
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->doPhysic(Ljava/lang/Long;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_14
    return-void
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;
    .registers 13

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/Station;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->spinSpeed:F

    .line 84
    const/high16 v0, 0x40000000    # 2.0f

    .line 86
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v5

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x429e0000    # 79.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x435d0000    # 221.0f

    mul-float/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    add-int/lit16 v3, v3, 0x96

    invoke-virtual {v1, p0, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 87
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v5

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3d700000    # -72.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 88
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v5

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v2, v0

    const/high16 v3, -0x3df00000    # -36.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 91
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v6

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43680000    # 232.0f

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    mul-float/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    add-int/lit16 v3, v3, 0x96

    invoke-virtual {v1, p0, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 92
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v6

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3e780000    # -17.0f

    mul-float/2addr v2, v0

    const/high16 v3, -0x3d780000    # -68.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 93
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v6

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3e780000    # -17.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x42880000    # 68.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 95
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v7

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42920000    # 73.0f

    mul-float/2addr v3, v0

    const/high16 v4, -0x3ca40000    # -220.0f

    mul-float/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    add-int/lit16 v3, v3, 0x96

    invoke-virtual {v1, p0, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 96
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v7

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3d720000    # -71.0f

    mul-float/2addr v2, v0

    const/high16 v3, -0x3f200000    # -7.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 97
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v7

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42740000    # 61.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x42180000    # 38.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 100
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3cc50000    # -187.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x43090000    # 137.0f

    mul-float/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    add-int/lit16 v3, v3, 0x96

    invoke-virtual {v1, p0, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 101
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3e500000    # -22.0f

    mul-float/2addr v2, v0

    const/high16 v3, -0x3d800000    # -64.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42540000    # 53.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x42340000    # 45.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 105
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v9

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3cc40000    # -188.0f

    mul-float/2addr v3, v0

    const/high16 v4, -0x3cf90000    # -135.0f

    mul-float/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sget-object v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v3, v3, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v3, v3, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v3, v3, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    add-int/lit16 v3, v3, 0x96

    invoke-virtual {v1, p0, v2, v3}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 106
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v9

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3e280000    # -27.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x427c0000    # 63.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 107
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v9

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42580000    # 54.0f

    mul-float/2addr v2, v0

    const/high16 v3, -0x3dc40000    # -47.0f

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 111
    return-object p0
.end method

.method public bridge synthetic init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;

    move-result-object v0

    return-object v0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 15

    .prologue
    const v13, 0x3f4ccccd    # 0.8f

    const v12, 0x3ef5c28f    # 0.48f

    const v11, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 119
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    move v8, v9

    .line 127
    :goto_26
    const/4 v0, 0x5

    if-ge v8, v0, :cond_93

    .line 128
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v0, v0, v8

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->docking:Z

    if-eqz v0, :cond_8f

    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 131
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move v3, v9

    move v4, v13

    move v5, v12

    move v6, v10

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 132
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 133
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move v3, v9

    move v4, v13

    move v5, v12

    move v6, v10

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 127
    :cond_8f
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_26

    .line 141
    :cond_93
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->textDecal:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a8

    .line 142
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->textDecal:F

    .line 144
    :cond_a8
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 145
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->textDecal:F

    neg-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 146
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/station/AlienTradeStation;->name:Ljava/lang/String;

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v2, v9

    move v4, v10

    move v7, v10

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 147
    return-void
.end method
