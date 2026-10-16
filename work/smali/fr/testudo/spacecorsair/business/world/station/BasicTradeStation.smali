.class public Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;
.super Lfr/testudo/spacecorsair/business/world/station/Station;
.source "SourceFile"


# static fields
.field public static final DECK_DETECTION_START:I = 0x8c

.field public static final STATION_DETECTION_START:I = 0x3e8

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field protected static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field protected static miniDrawableSpecial:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final nbrDocks:I = 0x6

.field public static physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field protected docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

.field public isSpeciale:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x44160000    # 600.0f

    const/high16 v1, 0x43520000    # 210.0f

    .line 21
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/station/Station;-><init>()V

    .line 35
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->isSpeciale:Z

    .line 38
    new-array v1, v3, [Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 39
    :goto_b
    if-ge v0, v3, :cond_19

    .line 40
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    new-instance v2, Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;-><init>()V

    aput-object v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 43
    :cond_19
    return-void
.end method

.method public static setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 5

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 82
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 83
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->miniDrawableSpecial:Lfr/testudo/spacecorsair/display/Drawable;

    .line 85
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 77
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 78
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/Station;->doPhysic(J)V

    .line 149
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->distanceToPlayer:F

    sget-object v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v1, v1, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/player/PlayerShip;->shipSpec:Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;

    iget v1, v1, Lfr/testudo/spacecorsair/business/loot/stuff/playerShip/PlayerShipSpec;->lootDistance:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    .line 150
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->handleDockingIa(J)V

    .line 152
    :cond_17
    return-void
.end method

.method public getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->mapHidden:Z

    if-nez v0, :cond_e

    .line 54
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->isSpeciale:Z

    if-eqz v0, :cond_b

    .line 55
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->miniDrawableSpecial:Lfr/testudo/spacecorsair/display/Drawable;

    .line 61
    :goto_a
    return-object v0

    .line 58
    :cond_b
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    goto :goto_a

    .line 61
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 66
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public handleDockingIa(J)V
    .registers 6

    .prologue
    .line 161
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 162
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->doPhysic(Ljava/lang/Long;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_14
    return-void
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;
    .registers 13

    .prologue
    const/high16 v9, 0x425c0000    # 55.0f

    const/high16 v8, -0x3d380000    # -100.0f

    const/high16 v7, -0x3da40000    # -55.0f

    const/4 v6, 0x0

    const/16 v5, 0x8c

    .line 90
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/Station;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 91
    iput v6, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->spinSpeed:F

    .line 94
    const/high16 v0, 0x40000000    # 2.0f

    .line 96
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42e60000    # 115.0f

    mul-float/2addr v3, v0

    invoke-direct {v2, v6, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v5}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 98
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    mul-float v4, v9, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v5}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 100
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    mul-float v4, v7, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v5}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 101
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3d1a0000    # -115.0f

    mul-float/2addr v3, v0

    invoke-direct {v2, v6, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v5}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 102
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    mul-float v3, v8, v0

    mul-float v4, v7, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v5}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 103
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    mul-float v3, v8, v0

    mul-float/2addr v0, v9

    invoke-direct {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v5}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->isSpeciale:Z

    .line 107
    return-object p0
.end method

.method public bridge synthetic init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;

    move-result-object v0

    return-object v0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 13

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 115
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    move v8, v9

    .line 123
    :goto_1f
    const/4 v0, 0x6

    if-ge v8, v0, :cond_59

    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v0, v0, v8

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->docking:Z

    if-eqz v0, :cond_55

    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 128
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3ef5c28f    # 0.48f

    const v7, 0x3ea8f5c3    # 0.33f

    move v3, v9

    move v6, v10

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 123
    :cond_55
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1f

    .line 137
    :cond_59
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->textDecal:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6c

    .line 138
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v11

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->textDecal:F

    .line 140
    :cond_6c
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->textDecal:F

    neg-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    div-float/2addr v2, v11

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 142
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/station/BasicTradeStation;->name:Ljava/lang/String;

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v2, v9

    move v4, v10

    move v7, v10

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 143
    return-void
.end method
