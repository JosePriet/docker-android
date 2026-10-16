.class public Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;
.super Lfr/testudo/spacecorsair/business/world/station/Station;
.source "SourceFile"


# static fields
.field public static final DECK_DETECTION_START:I = 0xfa

.field public static final STATION_DETECTION_START:I = 0x3e8

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field private static mainBackDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

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

    const/high16 v1, 0x43340000    # 180.0f

    .line 22
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 54
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/station/Station;-><init>()V

    .line 55
    new-array v0, v3, [Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 56
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_17

    .line 57
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    new-instance v2, Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;-><init>()V

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 59
    :cond_17
    return-void
.end method

.method public static setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 45
    sput-object p0, Lfr/testudo/spacecorsair/business/world/station/MissionStation;->MINI_TEXTURE:Lfr/testudo/spacecorsair/display/Texture;

    .line 46
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 48
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    .line 39
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 40
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p1}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->mainBackDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 41
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/Station;->doPhysic(J)V

    .line 159
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->distanceToPlayer:F

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 160
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->handleDockingIa(Ljava/lang/Long;)V

    .line 163
    :cond_12
    return-void
.end method

.method public getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 84
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->mapHidden:Z

    if-nez v0, :cond_7

    .line 70
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 72
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 77
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public handleDockingIa(Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 173
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->enableDocking:Z

    if-eqz v0, :cond_14

    .line 174
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 175
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->doPhysic(Ljava/lang/Long;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 180
    :cond_14
    return-void
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;
    .registers 9

    .prologue
    const/16 v5, 0xfa

    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/Station;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 91
    iput v4, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->spinSpeed:F

    .line 94
    const/high16 v0, 0x40000000    # 2.0f

    .line 96
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    invoke-direct {v2, v4, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v5}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 98
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3d380000    # -100.0f

    mul-float/2addr v0, v3

    invoke-direct {v2, v4, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v5}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 101
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->spinSpeed:F

    .line 103
    return-object p0
.end method

.method public bridge synthetic init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 4

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;

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

    .line 112
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->cameraRelative:Z

    sget-object v3, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->mainBackDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 117
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    .line 123
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->enableDocking:Z

    if-eqz v0, :cond_ae

    move v8, v9

    .line 125
    :goto_40
    const/4 v0, 0x2

    if-ge v8, v0, :cond_ae

    .line 126
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v0, v0, v8

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->docking:Z

    if-eqz v0, :cond_aa

    .line 130
    const/4 v0, 0x1

    if-ne v8, v0, :cond_4e

    .line 133
    :cond_4e
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, -0x3d900000    # -60.0f

    mul-int/lit8 v2, v8, 0x1e

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move v3, v9

    move v4, v13

    move v5, v12

    move v6, v10

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 136
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    mul-int/lit8 v2, v8, 0x1e

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 137
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move v3, v9

    move v4, v13

    move v5, v12

    move v6, v10

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 125
    :cond_aa
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_40

    .line 147
    :cond_ae
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->textDecal:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c3

    .line 148
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->textDecal:F

    .line 150
    :cond_c3
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 151
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->textDecal:F

    neg-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 152
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/station/SolarPlanStation;->name:Ljava/lang/String;

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v2, v9

    move v4, v10

    move v7, v10

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 153
    return-void
.end method
