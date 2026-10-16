.class public Lfr/testudo/spacecorsair/business/world/station/MissionStation;
.super Lfr/testudo/spacecorsair/business/world/station/Station;
.source "SourceFile"


# static fields
.field public static final DECK_DETECTION_START:I = 0xfa

.field public static MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static MINI_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static final STATION_DETECTION_START:I = 0x3e8

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field protected static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final nbrDocks:I = 0x2

.field public static physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field protected docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x44160000    # 600.0f

    const/high16 v1, 0x43660000    # 230.0f

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 57
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/station/Station;-><init>()V

    .line 58
    new-array v0, v3, [Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 59
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_17

    .line 60
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    new-instance v2, Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;-><init>()V

    aput-object v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 62
    :cond_17
    return-void
.end method

.method public static setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 44
    sput-object p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->MINI_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 45
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 47
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 38
    sput-object p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 40
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/Station;->doPhysic(J)V

    .line 149
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->distanceToPlayer:F

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 150
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->handleDockingIa(Ljava/lang/Long;)V

    .line 152
    :cond_12
    return-void
.end method

.method public getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 87
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->mapHidden:Z

    if-nez v0, :cond_7

    .line 73
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 75
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public handleDockingIa(Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 162
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->enableDocking:Z

    if-eqz v0, :cond_14

    .line 163
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 164
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->doPhysic(Ljava/lang/Long;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 169
    :cond_14
    return-void
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/MissionStation;
    .registers 9

    .prologue
    const/16 v5, 0xfa

    const/high16 v4, 0x41000000    # 8.0f

    .line 93
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/Station;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->spinSpeed:F

    .line 97
    const/high16 v0, 0x40000000    # 2.0f

    .line 99
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x43010000    # 129.0f

    mul-float/2addr v3, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v5}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 101
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3cff0000    # -129.0f

    mul-float/2addr v0, v3

    invoke-direct {v2, v0, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v5}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->STATION_M:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 105
    return-object p0
.end method

.method public bridge synthetic init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 4

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/MissionStation;

    move-result-object v0

    return-object v0
.end method

.method public onPlayerDock()V
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->gameThread:Lfr/testudo/spacecorsair/engine/GameThread;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/engine/GameThread;->showMissionMenu()V

    .line 53
    invoke-static {}, Lfr/testudo/spacecorsair/game/achievements/AchievementEventListener;->onPlayerDock()V

    .line 54
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 15

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const v12, 0x3f666666    # 0.9f

    const/4 v11, 0x0

    const/4 v9, 0x0

    const v10, 0x3f1eb852    # 0.62f

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 118
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->enableDocking:Z

    if-eqz v0, :cond_8d

    move v8, v9

    .line 119
    :goto_28
    const/4 v0, 0x2

    if-ge v8, v0, :cond_8d

    .line 120
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v0, v0, v8

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->docking:Z

    if-eqz v0, :cond_89

    .line 123
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, -0x3d900000    # -60.0f

    invoke-virtual {v0, v11, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 124
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move v3, v9

    move v4, v12

    move v5, v10

    move v6, v10

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v11, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 127
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move v3, v9

    move v4, v12

    move v5, v10

    move v6, v10

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 119
    :cond_89
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_28

    .line 137
    :cond_8d
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->textDecal:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a2

    .line 138
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->textDecal:F

    .line 140
    :cond_a2
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 141
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->textDecal:F

    neg-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 142
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->name:Ljava/lang/String;

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v2, v9

    move v4, v13

    move v7, v13

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 143
    return-void
.end method
