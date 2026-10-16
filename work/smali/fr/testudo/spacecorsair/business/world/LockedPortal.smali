.class public Lfr/testudo/spacecorsair/business/world/LockedPortal;
.super Lfr/testudo/spacecorsair/business/world/Portal;
.source "SourceFile"


# instance fields
.field blockingElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;"
        }
    .end annotation
.end field

.field lockedPortalId:Ljava/lang/String;

.field public originalName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lfr/testudo/spacecorsair/business/world/Portal;-><init>()V

    return-void
.end method


# virtual methods
.method public doPhysic(J)V
    .registers 6

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lfr/testudo/spacecorsair/business/world/Portal;->doPhysic(J)V

    .line 80
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->blockingElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 82
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_2b

    .line 84
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->blockingElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    iget-boolean v0, v0, Lfr/testudo/spacecorsair/business/Element;->removed:Z

    if-eqz v0, :cond_2c

    .line 85
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->blockingElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 86
    add-int/lit8 v0, v1, -0x1

    .line 87
    add-int/lit8 v1, v2, -0x1

    .line 88
    if-nez v1, :cond_26

    .line 89
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/LockedPortal;->onAllBlockingRemoved()V

    .line 82
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_a

    .line 95
    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    move v1, v2

    goto :goto_26
.end method

.method public getEnabledPortal()Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 3

    .prologue
    .line 111
    invoke-static {}, Lfr/testudo/spacecorsair/business/factory/GamePools;->newPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->originalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/business/world/Portal;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 113
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->jumpLevelName:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpLevelName:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->jumpPortalName:Ljava/lang/String;

    iput-object v1, v0, Lfr/testudo/spacecorsair/business/world/Portal;->jumpPortalName:Ljava/lang/String;

    .line 115
    return-object v0
.end method

.method public init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/LockedPortal;
    .registers 4

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lfr/testudo/spacecorsair/business/world/LockedPortal;->init(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/LockedPortal;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/LockedPortal;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lfr/testudo/spacecorsair/business/Element;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lfr/testudo/spacecorsair/business/world/LockedPortal;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/LockedPortal;->reset()V

    .line 39
    iput-object p1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->originalName:Ljava/lang/String;

    .line 40
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->doesColideWithOthers:Z

    .line 41
    const v1, 0x48127c00    # 150000.0f

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->life:F

    .line 42
    const/high16 v1, 0x447a0000    # 1000.0f

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->mass:F

    .line 43
    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->spinSpeed:F

    .line 44
    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/business/world/LockedPortal;->setPosition(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/business/Element;

    .line 45
    sget-object v1, Lfr/testudo/spacecorsair/engine/Vector2;->ZERO:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {p0, v1}, Lfr/testudo/spacecorsair/business/world/LockedPortal;->setSpeedVector(Lfr/testudo/spacecorsair/engine/Vector2;)V

    .line 46
    iput-boolean v3, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->drawOnRadar:Z

    .line 47
    const v1, 0x3f147ae1    # 0.58f

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->radarColorG:F

    .line 48
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->radarColorB:F

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->radarColorR:F

    .line 50
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->isEnabled:Z

    .line 51
    const-string v1, "DISABLED"

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->portalName:Ljava/lang/String;

    .line 52
    const v1, 0x3fd9999a    # 1.7f

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->spinSpeed:F

    .line 53
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->radarPointSize:F

    .line 54
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->isMiniaturefixed:Z

    .line 55
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->drawDistanceOnMiniature:Z

    .line 56
    const v1, 0x466a6000    # 15000.0f

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->distanceToPlayer:F

    .line 57
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->canBeUsed:Z

    .line 58
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->textDecal:F

    .line 59
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->removed:Z

    .line 60
    iput-boolean v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->hidden:Z

    .line 61
    sget-object v1, Lfr/testudo/spacecorsair/business/world/RadarDrawType;->PORTAL:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    iput-object v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->radarDrawType:Lfr/testudo/spacecorsair/business/world/RadarDrawType;

    .line 62
    const/16 v1, 0xfa0

    iput v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->jump_countdown_time:I

    .line 63
    iput-object p2, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->blockingElements:Ljava/util/List;

    .line 64
    iput-object p3, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->lockedPortalId:Ljava/lang/String;

    .line 66
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 68
    :goto_62
    if-ge v1, v2, :cond_70

    .line 69
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/testudo/spacecorsair/business/Element;

    iput-boolean v3, v0, Lfr/testudo/spacecorsair/business/Element;->doNotRemoveWhenCleanDoors:Z

    .line 68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_62

    .line 72
    :cond_70
    return-object p0
.end method

.method public bridge synthetic init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/Portal;
    .registers 3

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lfr/testudo/spacecorsair/business/world/LockedPortal;->init(Ljava/lang/String;)Lfr/testudo/spacecorsair/business/world/LockedPortal;

    move-result-object v0

    return-object v0
.end method

.method public onAllBlockingRemoved()V
    .registers 3

    .prologue
    .line 99
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/LockedPortal;->getEnabledPortal()Lfr/testudo/spacecorsair/business/world/Portal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->queueElementToBeAddToLevel(Lfr/testudo/spacecorsair/business/Element;)V

    .line 100
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->game:Lfr/testudo/spacecorsair/game/Game;

    iget-object v0, v0, Lfr/testudo/spacecorsair/game/Game;->currentLevel:Lfr/testudo/spacecorsair/game/levels/Level;

    invoke-virtual {v0}, Lfr/testudo/spacecorsair/game/levels/Level;->requestPlayerGotoLastPosOfElements()V

    .line 102
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    const v1, 0x7f070392

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lfr/testudo/spacecorsair/display/hud/WelcomeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->levelProperties:Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->lockedPortalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/game/levels/LevelsGlobalProperties;->onPortalUnlocked(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lfr/testudo/spacecorsair/business/world/LockedPortal;->remove()V

    .line 106
    return-void
.end method

.method public registerYourselfToDrawQueue()V
    .registers 13

    .prologue
    .line 121
    invoke-super {p0}, Lfr/testudo/spacecorsair/business/world/Portal;->registerYourselfToDrawQueue()V

    .line 124
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->blockingElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 126
    const/4 v0, 0x0

    move v10, v0

    :goto_b
    if-ge v10, v11, :cond_5b

    .line 128
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->blockingElements:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lfr/testudo/spacecorsair/business/Element;

    .line 129
    const/4 v0, 0x0

    move v9, v0

    :goto_18
    const/4 v0, 0x5

    if-ge v9, v0, :cond_57

    .line 130
    iget-object v0, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    invoke-virtual {v0, v1}, Lfr/testudo/spacecorsair/engine/Vector2;->setSameAs(Lfr/testudo/spacecorsair/engine/Vector2;)Lfr/testudo/spacecorsair/engine/Vector2;

    move-result-object v0

    const-wide/high16 v2, -0x3fa7000000000000L    # -100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const-wide/high16 v2, -0x3fa7000000000000L    # -100.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/testudo/spacecorsair/engine/Vector2;->add(FF)Lfr/testudo/spacecorsair/engine/Vector2;

    .line 131
    sget-object v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->INSTANCE:Lfr/testudo/spacecorsair/engine/ObjectRegistry;

    iget-object v0, v0, Lfr/testudo/spacecorsair/engine/ObjectRegistry;->renderQueue:Lfr/testudo/spacecorsair/engine/RenderQueue;

    iget-object v1, p0, Lfr/testudo/spacecorsair/business/world/LockedPortal;->tempVector:Lfr/testudo/spacecorsair/engine/Vector2;

    iget-object v2, v8, Lfr/testudo/spacecorsair/business/Element;->position:Lfr/testudo/spacecorsair/engine/Vector2;

    const/4 v3, 0x0

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v0 .. v7}, Lfr/testudo/spacecorsair/engine/RenderQueue;->addToWaitingQueue(Lfr/testudo/spacecorsair/engine/Vector2;Lfr/testudo/spacecorsair/engine/Vector2;ZFFFF)V

    .line 129
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_18

    .line 126
    :cond_57
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_b

    .line 138
    :cond_5b
    return-void
.end method
