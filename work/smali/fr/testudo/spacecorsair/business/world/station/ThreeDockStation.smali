.class public Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;
.super Lfr/testudo/spacecorsair/business/world/station/Station;
.source "SourceFile"


# static fields
.field public static BOTTOMPOINT:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static final DECK_DETECTION_START:I = 0xfa

.field public static LEFTPOINT:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static MAIN_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static MINI_TEXTURE:Lfr/testudo/spacecorsair/display/Texture; = null

.field public static RIGHTPOINT:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field public static final STATION_DETECTION_START:I = 0x3e8

.field public static drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2; = null

.field private static mainDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field protected static miniDrawable:Lfr/testudo/spacecorsair/display/Drawable; = null

.field public static final nbrDocks:I = 0x3

.field public static physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;


# instance fields
.field protected docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/high16 v3, 0x44160000    # 600.0f

    const/high16 v2, 0x435c0000    # 220.0f

    const/high16 v1, 0x43340000    # 180.0f

    .line 19
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, v1}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 20
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v3, v3}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 23
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3c650000    # -310.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->LEFTPOINT:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 24
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x439b0000    # 310.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->RIGHTPOINT:Lfr/testudo/spacecorsair/engine/Vector2;

    .line 25
    new-instance v0, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v1, 0x0

    const/high16 v2, -0x3c420000    # -380.0f

    invoke-direct {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->BOTTOMPOINT:Lfr/testudo/spacecorsair/engine/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 39
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/station/Station;-><init>()V

    .line 40
    new-array v0, v3, [Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    iput-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 41
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_17

    .line 42
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    new-instance v2, Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    invoke-direct {v2}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;-><init>()V

    aput-object v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 45
    :cond_17
    return-void
.end method

.method public static setMiniTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 4

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 79
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    new-instance v1, Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v1, v2, v2}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 81
    return-void
.end method

.method public static setTexture(Lfr/testudo/spacecorsair/display/Texture;)V
    .registers 3

    .prologue
    .line 74
    new-instance v0, Lfr/testudo/spacecorsair/display/Drawable;

    sget-object v1, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-direct {v0, v1, p0}, Lfr/testudo/spacecorsair/display/Drawable;-><init>(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/display/Texture;)V

    sput-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 75
    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/Station;->doPhysic(J)V

    .line 154
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->distanceToPlayer:F

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    .line 155
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->handleDockingIa(Ljava/lang/Long;)V

    .line 157
    :cond_12
    return-void
.end method

.method public getDimToTestIfVisibleOnScreen()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 70
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->mainDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    return-object v0
.end method

.method public getMiniDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->mapHidden:Z

    if-nez v0, :cond_7

    .line 56
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->miniDrawable:Lfr/testudo/spacecorsair/display/Drawable;

    .line 58
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPhysicDimension()Lfr/testudo/spacecorsair/engine/Vector2;
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->physicalDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    return-object v0
.end method

.method public handleDockingIa(Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 166
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 167
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->doPhysic(Ljava/lang/Long;)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_10
    return-void
.end method

.method public bridge synthetic init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;

    move-result-object v0

    return-object v0
.end method

.method public init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;
    .registers 13

    .prologue
    const/high16 v9, -0x3de00000    # -40.0f

    const/16 v8, 0xfa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/station/Station;->init(Lfr/testudo/spacecorsair/engine/Vector2;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/station/Station;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->spinSpeed:F

    .line 88
    const/high16 v0, -0x3ccc0000    # -180.0f

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->spin:F

    .line 91
    const/high16 v0, 0x40000000    # 2.0f

    .line 93
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v5

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, 0x42d20000    # 105.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x429c0000    # 78.0f

    mul-float/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v8}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 95
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v5

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x42a60000    # 83.0f

    const/high16 v3, -0x3da40000    # -55.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 96
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v5

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v3, 0x42d20000    # 105.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 99
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v6

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v3, -0x3d2e0000    # -105.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x429e0000    # 79.0f

    mul-float/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v8}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 101
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v6

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, -0x3d560000    # -85.0f

    const/high16 v3, -0x3d880000    # -62.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 102
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v6

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x42d80000    # 108.0f

    invoke-virtual {v1, v2, v3}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 105
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v7

    new-instance v2, Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const/high16 v4, -0x3d380000    # -100.0f

    mul-float/2addr v0, v4

    invoke-direct {v2, v3, v0}, Lfr/testudo/spacecorsair/engine/Vector2;-><init>(FF)V

    invoke-virtual {v1, p0, v2, v8}, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->init(Lfr/testudo/spacecorsair/business/world/station/Station;Lfr/testudo/spacecorsair/engine/Vector2;I)Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    .line 107
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, -0x3d480000    # -92.0f

    invoke-virtual {v0, v1, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 108
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v0, v0, v7

    iget-object v0, v0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1, v9}, Lfr/testudo/spacecorsair/engine/Vector2;->set(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 112
    return-object p0
.end method

.method public registerYourselfToDrawQueue()V
    .registers 15

    .prologue
    const v13, 0x3f4ccccd    # 0.8f

    const v12, 0x3ef5c28f    # 0.48f

    const v11, 0x3ea8f5c3    # 0.33f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 120
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-boolean v2, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->cameraRelative:Z

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->getDrawableObject()Lfr/testudo/spacecorsair/display/Drawable;

    move-result-object v3

    iget v4, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->spin:F

    iget v5, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->a:F

    iget v6, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->r:F

    iget v7, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->g:F

    iget v8, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->b:F

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLfr/testudo/spacecorsair/display/Drawable;FFFFF)V

    move v8, v9

    .line 128
    :goto_26
    const/4 v0, 0x3

    if-ge v8, v0, :cond_93

    .line 129
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v0, v0, v8

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->docking:Z

    if-eqz v0, :cond_8f

    .line 131
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint1:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 132
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move v3, v9

    move v4, v13

    move v5, v12

    move v6, v10

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 133
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->positionRelative:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->docks:[Lfr/testudo/spacecorsair/business/world/station/DockPoint;

    aget-object v1, v1, v8

    iget-object v1, v1, Lfr/testudo/spacecorsair/business/world/station/DockPoint;->anchorPoint2:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->add(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 134
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    sget-object v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v2, v2, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->playerShip:Lfr/testudo/spacecorsair/business/player/PlayerShip;

    iget-object v2, v2, Lfr/testudo/spacecorsair/business/player/PlayerShip;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    move v3, v9

    move v4, v13

    move v5, v12

    move v6, v10

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 128
    :cond_8f
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_26

    .line 142
    :cond_93
    iget v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->textDecal:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a8

    .line 143
    sget-object v0, Lfr/testudo/spacecorsair/engine/GameRenderer;->glTextMedium:Lfr/testudo/spacecorsair/textengine/GLText;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/textengine/GLText;->getLength(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->textDecal:F

    .line 145
    :cond_a8
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 146
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->textDecal:F

    neg-float v1, v1

    sget-object v2, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->drawableDimension:Lfr/testudo/spacecorsair/engine/Vector2;

    iget v2, v2, Lfr/testudo/spacecorsair/engine/Vector2;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 147
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->textPos:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v3, p0, Lfr/testudo/spacecorsair/business/world/station/ThreeDockStation;->name:Ljava/lang/String;

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e947ae1    # 0.29f

    sget-object v8, Lfr/testudo/spacecorsair/textengine/TextSize;->MEDIUM:Lfr/testudo/spacecorsair/textengine/TextSize;

    move v2, v9

    move v4, v10

    move v7, v10

    invoke-virtual/range {v0 .. v8}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addTextToTextWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;ZLjava/lang/String;FFFFLfr/testudo/spacecorsair/textengine/TextSize;)V

    .line 148
    return-void
.end method
